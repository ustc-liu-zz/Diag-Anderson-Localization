MM = 100000;
nbins = 500;
eig_val = zeros(10*MM,1);
for ii=1:MM
    diag_schroding;
    dig_eig_val = diag(d);
    %dig_eig_val = dig_eig_val(1:3);
    eig_val((10*(ii-1)+1):(10*(ii-1)+10)) = dig_eig_val;
end
eig_val = sort(eig_val);
eig_val = eig_val(eig_val > 0);
eig_diff = diff(eig_val);
mean_space = mean(eig_diff);
eig_diff = eig_diff/mean_space;
[cnt,cet] = hist(eig_diff,5000);
su = trapz(cet,cnt);
cnt = cnt / su;
plot(cet,cnt,'o')
axis([0 5 0 2])