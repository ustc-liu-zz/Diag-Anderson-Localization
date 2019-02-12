tic;
% System size
M = 10;
% TOtal sites
N = M*M;
% nc stores the sequence number of site(i,j,k)
nc = zeros(M,M);
% ind stores the actual coordinates of the sequence number
indx = zeros(N,1);
indy = zeros(N,1);
% near stores the sequence number of 6 nearest neighbour sites
near = zeros(N,4);
% ix iy iz stores the nearest neighbour coordinates
ix = zeros(4,1);
iy = zeros(4,1);

icount = 0;
for i = 1:M
    for j = 1:M
        icount = icount + 1;
        nc(i,j) = icount;
        indx(icount) = i;
        indy(icount) = j;
    end
end

for i = 1:N
    % get the actual coordinates
    x = indx(i);
    y = indy(i);
    
    % the first neighbour
    ix(1) = x + M -1;
    iy(1) = y;
    ix(1) = mod(ix(1)-1,M) + 1;
    % second
    ix(2) = x + M + 1;
    iy(2) = y;
    ix(2) = mod(ix(2)-1,M) +1;
    % third
    ix(3) = x;
    iy(3) = y + M -1;
    iy(3) = mod(iy(3)-1,M)+1;
    % fourth
    ix(4) = x;
    iy(4) = y + M +1;
    iy(4) = mod(iy(4)-1,M)+1;
    near(i,1) = nc(ix(1),iy(1));
    near(i,2) = nc(ix(2),iy(2));
    near(i,3) = nc(ix(3),iy(3));
    near(i,4) = nc(ix(4),iy(4));
end
% assembly the sparse matrix
% every row has 5 non-zeros
vec1 = 1:N;
mat1 = repmat(vec1,5,1);
rows = reshape(mat1,1,5*N);
cols = zeros(5*N,1);

% Disorder width W
W = 16.5;
% generate disorder
dis = (rand(N,1)-0.5)*W;
for i = 1:5:(5*N)
    j = floor(i/5)+1;
    cols(i) = j;
    cols(i+1) = near(j,1);
    cols(i+2) = near(j,2);
    cols(i+3) = near(j,3);
    cols(i+4) = near(j,4);
end
vec2 = ones(4,N);
vec3 = [dis';vec2];
vals = reshape(vec3,1,5*N);
A = sparse(rows,cols,vals);