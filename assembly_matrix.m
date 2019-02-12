tic;
% System size
M = 30;
% TOtal sites
N = M*M*M;
% nc stores the sequence number of site(i,j,k)
nc = zeros(M,M,M);
% ind stores the actual coordinates of the sequence number
indx = zeros(N,1);
indy = zeros(N,1);
indz = zeros(N,1);

% wave function
phi = zeros(M,M,M);
% near stores the sequence number of 6 nearest neighbour sites
near = zeros(N,6);
% ix iy iz stores the nearest neighbour coordinates
ix = zeros(6,1);
iy = zeros(6,1);
yz = zeros(6,1);

icount = 0;
for i = 1:M
    for j = 1:M
        for k = 1:M
            icount = icount + 1;
            nc(i,j,k) = icount;
            indx(icount) = i;
            indy(icount) = j;
            indz(icount) = k;
        end
    end
end

for i = 1:N
    % get the actual coordinates
    x = indx(i);
    y = indy(i);
    z = indz(i);
    
    % the first neighbour
    ix(1) = x + M -1;
    iy(1) = y;
    iz(1) = z;
    ix(1) = mod(ix(1)-1,M) + 1;
    % second
    ix(2) = x + M + 1;
    iy(2) = y;
    iz(2) = z;
    ix(2) = mod(ix(2)-1,M) +1;
    % third
    ix(3) = x;
    iy(3) = y + M -1;
    iz(3) = z;
    iy(3) = mod(iy(3)-1,M)+1;
    % fourth
    ix(4) = x;
    iy(4) = y + M +1;
    iz(4) = z;
    iy(4) = mod(iy(4)-1,M)+1;
    % fifth
    ix(5) = x;
    iy(5) = y;
    iz(5) = z + M -1;
    iz(5) = mod(iz(5)-1,M)+1;
    % sixth
    ix(6) = x;
    iy(6) = y;
    iz(6) = z +M +1;
    iz(6) = mod(iz(6)-1,M)+1;
    near(i,1) = nc(ix(1),iy(1),iz(1));
    near(i,2) = nc(ix(2),iy(2),iz(2));
    near(i,3) = nc(ix(3),iy(3),iz(3));
    near(i,4) = nc(ix(4),iy(4),iz(4));
    near(i,5) = nc(ix(5),iy(5),iz(5));
    near(i,6) = nc(ix(6),iy(6),iz(6));
end
% assembly the sparse matrix
% every row has 7 non-zeros
vec1 = 1:N;
mat1 = repmat(vec1,7,1);
rows = reshape(mat1,1,7*N);
cols = zeros(7*N,1);

% Disorder width W
W = 16.5;
% generate disorder
dis = (rand(N,1)-0.5)*W;
for i = 1:7:(7*N)
    j = floor(i/7)+1;
    cols(i) = j;
    cols(i+1) = near(j,1);
    cols(i+2) = near(j,2);
    cols(i+3) = near(j,3);
    cols(i+4) = near(j,4);
    cols(i+5) = near(j,5);
    cols(i+6) = near(j,6);
end
vec2 = ones(6,N);
vec3 = [dis';vec2];
vals = reshape(vec3,1,7*N);
A = sparse(rows,cols,vals);
% [v,d] = eigs(A,3,'sm');
% for i = 1:N
%     x = indx(i);
%     y = indy(i);
%     z = indz(i);
%     phi(x,y,z) = v(i,1);
% end
% toc
% % plot the figure
% x = 1:M;
% x = repmat(x,M*M,1);
% X = reshape(x,1,N);
% 
% y = 1:M;
% y = repmat(y,M,1);
% y = reshape(y,1,M*M);
% Y = repmat(y,1,M);
% 
% z = (1:M)';
% z = repmat(z,1,M);
% z = reshape(z,1,M*M);
% Z = repmat(z,1,M);
% subplot(2,2,1)
% scatter3(X,Y,Z,1000*v(:,1).^2,'filled')
% title('|\Psi(x,y,z)|^2')
% title('W = 16.5')
% 
% phi_x = sum(phi.^2,1);
% phi_y = sum(phi.^2,2);
% phi_z = sum(phi.^2,3);
% phi_x=reshape(phi_x,M,M);
% phi_y=reshape(phi_y,M,M);
% phi_z=reshape(phi_z,M,M);
% subplot(2,2,2)
% contourf(phi_x)
% title('|\Psi(x,y)|^2')
% axis equal
% colorbar
% subplot(2,2,3)
% contourf(phi_y)
% axis equal
% title('|\Psi(x,z)|^2')
% colorbar
% subplot(2,2,4)
% contourf(phi_z)
% axis equal
% title('|\Psi(y,z)|^2')
% colorbar