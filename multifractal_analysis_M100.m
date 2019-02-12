% Multifractal analysis for N = 100x100x100 grid, choose l = 2,5,10
% 20,25,50, plot the tau(q).
tau = zeros(101,1);
f_alpha = zeros(101,1);
alpha = zeros(101,1);
ind = 1;
M = 100;
for q = -10:0.2:10
    
    log_lambda = zeros(6,1);
    log_M_box = zeros(6,1);
    log_alpha = zeros(6,1);
    log_f = zeros(6,1);
    
    N_box = M/2;
    lambda = 2/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 2:2:100
        for jj = 2:2:100
            for kk = 2:2:100
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
    
    
    N_box = M/5;
    lambda = 5/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 5:5:100
        for jj = 5:5:100
            for kk = 5:5:100
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
    log_f(2) = sum(f_log);
    log_alpha(2) = sum(alpha_log);
    log_M_box(2) = log(M_box);
    log_lambda(2) = log(lambda);
    
    N_box = M/10;
    lambda = 10/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 10:10:100
        for jj = 10:10:100
            for kk = 10:10:100
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
    log_f(3) = sum(f_log);
    log_alpha(3) = sum(alpha_log);
    log_M_box(3) = log(M_box);
    log_lambda(3) = log(lambda);
    
    N_box = M/20;
    lambda = 20/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 20:20:100
        for jj = 20:20:100
            for kk = 20:20:100
                mu(id) = sum(sum(sum(phi((ii-19):ii,(jj-19):jj,(kk-19):kk).^2)));
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
    
    N_box = M/25;
    lambda = 25/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 25:25:100
        for jj = 25:25:100
            for kk = 25:25:100
                mu(id) = sum(sum(sum(phi((ii-24):ii,(jj-24):jj,(kk-24):kk).^2)));
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
    
    N_box = M/50;
    lambda = 50/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 50:50:100
        for jj = 50:50:100
            for kk = 50:50:100
                mu(id) = sum(sum(sum(phi((ii-49):ii,(jj-49):jj,(kk-49):kk).^2)));
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
plot(-10:0.2:10,tau,'o-')
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
figure
plot(alpha,f_alpha,'+')
y2 = get(gca,'ylim');
x2 = get(gca,'xlim');
hold on
plot([4 4],[-0.5 3.5],'b--')
hold on
plot(x2,[3 3],'b--')
hold on
plot(x1,3-(x1-4).^2/4)
ylim([-0.5 3.5])
grid
title('$f(\alpha)$','interpreter','latex')
xlabel('\alpha')
ylabel('$f$','interpreter','latex')