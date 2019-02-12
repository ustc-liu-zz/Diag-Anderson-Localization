% Multifractal analysis for N = 30x30x30 grid, choose l = 2, 3, 5, 6, 10
% 15, plot the tau(q).
tau = zeros(101,1);
f_alpha = zeros(101,1);
alpha = zeros(101,1);
ind = 1;
M = 30;
for q = -10:0.2:10
    
    log_lambda = zeros(6,1);
    log_M_box = zeros(6,1);
    log_alpha = zeros(6,1);
    log_f = zeros(6,1);
    
    N_box = M/2;
    lambda = 2/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 2:2:30
        for jj = 2:2:30
            for kk = 2:2:30
                mu(id) = sum(sum(sum(phi((ii-1):ii,(jj-1):jj,(kk-1):kk).^2)));
                id = id + 1;
            end
        end
    end
    M_box = sum(mu.^q);
    M_box_1 = sum(mu);
    delta_k_q = mu.^q/M_box;
    delta_k_1 = mu/M_box_1;
    alpha_log = delta_k_q.*log(delta_k_1);
    
    f_k = mu.^q/M_box;
    f_log = f_k.*log(f_k);
    log_f(1) = sum(f_log);
    log_alpha(1) = sum(alpha_log);
    
    log_M_box(1) = log(M_box);
    log_lambda(1) = log(lambda);
    
    
    N_box = M/3;
    lambda = 3/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 3:3:30
        for jj = 3:3:30
            for kk = 3:3:30
                mu(id) = sum(sum(sum(phi((ii-2):ii,(jj-2):jj,(kk-2):kk).^2)));
                id = id + 1;
            end
        end
    end
    M_box = sum(mu.^q);
    delta_k_q = mu.^q/M_box;
    delta_k_1 = mu/M_box_1;
    alpha_log = delta_k_q.*log(delta_k_1);
    
    f_k = mu.^q/M_box;
    f_log = f_k.*log(f_k);
    log_f(2) = sum(f_log);
    log_alpha(2) = sum(alpha_log);
    log_M_box(2) = log(M_box);
    log_lambda(2) = log(lambda);
    
    N_box = M/5;
    lambda = 5/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 5:5:30
        for jj = 5:5:30
            for kk = 5:5:30
                mu(id) = sum(sum(sum(phi((ii-4):ii,(jj-4):jj,(kk-4):kk).^2)));
                id = id + 1;
            end
        end
    end
    M_box = sum(mu.^q);
    delta_k_q = mu.^q/M_box;
    delta_k_1 = mu/M_box_1;
    alpha_log = delta_k_q.*log(delta_k_1);
    
    f_k = mu.^q/M_box;
    f_log = f_k.*log(f_k);
    log_f(3) = sum(f_log);
    log_alpha(3) = sum(alpha_log);
    log_M_box(3) = log(M_box);
    log_lambda(3) = log(lambda);
    
    N_box = M/6;
    lambda = 6/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 6:6:30
        for jj = 6:6:30
            for kk = 6:6:30
                mu(id) = sum(sum(sum(phi((ii-5):ii,(jj-5):jj,(kk-5):kk).^2)));
                id = id + 1;
            end
        end
    end
    M_box = sum(mu.^q);
    delta_k_q = mu.^q/M_box;
    delta_k_1 = mu/M_box_1;
    alpha_log = delta_k_q.*log(delta_k_1);
    
    f_k = mu.^q/M_box;
    f_log = f_k.*log(f_k);
    log_f(4) = sum(f_log);
    log_alpha(4) = sum(alpha_log);
    log_M_box(4) = log(M_box);
    log_lambda(4) = log(lambda);
    
    N_box = M/10;
    lambda = 10/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 10:10:30
        for jj = 10:10:30
            for kk = 10:10:30
                mu(id) = sum(sum(sum(phi((ii-9):ii,(jj-9):jj,(kk-9):kk).^2)));
                id = id + 1;
            end
        end
    end
    M_box = sum(mu.^q);
    delta_k_q = mu.^q/M_box;
    delta_k_1 = mu/M_box_1;
    alpha_log = delta_k_q.*log(delta_k_1);
    
    f_k = mu.^q/M_box;
    f_log = f_k.*log(f_k);
    log_f(5) = sum(f_log);
    log_alpha(5) = sum(alpha_log);
    log_M_box(5) = log(M_box);
    log_lambda(5) = log(lambda);
    
    N_box = M/15;
    lambda = 15/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 15:15:30
        for jj = 15:15:30
            for kk = 15:15:30
                mu(id) = sum(sum(sum(phi((ii-14):ii,(jj-14):jj,(kk-14):kk).^2)));
                id = id + 1;
            end
        end
    end
    M_box = sum(mu.^q);
    delta_k_q = mu.^q/M_box;
    delta_k_1 = mu/M_box_1;
    alpha_log = delta_k_q.*log(delta_k_1);
    
    f_k = mu.^q/M_box;
    f_log = f_k.*log(f_k);
    log_f(6) = sum(f_log);
    log_alpha(6) = sum(alpha_log);
    log_M_box(6) = log(M_box);
    log_lambda(6) = log(lambda);
    
    %plot(log_lambda,log_M_box,'o')
    [k_q,~] = polyfit(log_lambda,log_M_box,1);
    [k_alpha,~] = polyfit(log_lambda,log_alpha,1);
    [k_f,~] = polyfit(log_lambda,log_f,1);
    %     plot(log_lambda,log_M_box,'o-')
    %     hold on
    tau(ind) = k_q(1);
    f_alpha(ind) = k_f(1);
    alpha(ind) = k_alpha(1);
    ind = ind + 1;
end
figure
plot(-10:0.2:10,tau,'s-')
y1 = get(gca,'ylim');
x1 = get(gca,'xlim');
hold on
plot([0 0],y1,'b--')
hold on
plot(x1,[-3 -3],'b--')
grid
title('$\tau(q)$','interpreter','latex')
xlabel('$q$','interpreter','latex')
ylabel('\tau')

x1 = 2:0.01:6;
%figure
plot(alpha,f_alpha,'*')
y2 = get(gca,'ylim');
x2 = get(gca,'xlim');
hold on
plot([4 4],y2,'b--')
hold on
plot(x2,[3 3],'b--')
hold on
plot(x1,3-(x1-4).^2/4)
%grid
title('$f(\alpha)$','interpreter','latex')
xlabel('\alpha')
ylabel('$f$','interpreter','latex')