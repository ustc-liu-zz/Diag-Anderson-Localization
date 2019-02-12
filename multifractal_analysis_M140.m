% Multifractal analysis for N = 100x100x100 grid, choose l = 2,5,10
% 20,25,50, plot the tau(q).
tau = zeros(101,1);
f_alpha = zeros(101,1);
alpha = zeros(101,1);
ind = 1;
M = 140;
for q = -10:0.2:10
    
    log_lambda = zeros(8,1);
    log_M_box = zeros(8,1);
    log_alpha = zeros(8,1);
    log_f = zeros(8,1);
    
    N_box = M/2;
    lambda = 2/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 2:2:140
        for jj = 2:2:140
            for kk = 2:2:140
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
    for ii = 5:5:140
        for jj = 5:5:140
            for kk = 5:5:140
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
    
    N_box = M/7;
    lambda = 7/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 7:7:140
        for jj = 7:7:140
            for kk = 7:7:140
                mu(id) = sum(sum(sum(phi((ii-6):ii,(jj-6):jj,(kk-6):kk).^2)));
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
    
    N_box = M/10;
    lambda = 10/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 10:10:140
        for jj = 10:10:140
            for kk = 10:10:140
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
    log_f(4) = sum(f_log);
    log_alpha(4) = sum(alpha_log);
    log_M_box(4) = log(M_box);
    log_lambda(4) = log(lambda);
    
    N_box = M/14;
    lambda = 14/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 14:14:140
        for jj = 14:14:140
            for kk = 14:14:140
                mu(id) = sum(sum(sum(phi((ii-13):ii,(jj-13):jj,(kk-13):kk).^2)));
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
    
    N_box = M/20;
    lambda = 20/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 20:20:140
        for jj = 20:20:140
            for kk = 20:20:140
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
    log_f(6) = sum(f_log);
    log_alpha(6) = sum(alpha_log);
    log_M_box(6) = log(M_box);
    log_lambda(6) = log(lambda);
    
    
    N_box = M/35;
    lambda = 35/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 35:35:140
        for jj = 35:35:140
            for kk = 35:35:140
                mu(id) = sum(sum(sum(phi((ii-34):ii,(jj-34):jj,(kk-34):kk).^2)));
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
    log_f(7) = sum(f_log);
    log_alpha(7) = sum(alpha_log);
    log_M_box(7) = log(M_box);
    log_lambda(7) = log(lambda);
    
    
    N_box = M/70;
    lambda = 70/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 70:70:140
        for jj = 70:70:140
            for kk = 70:70:140
                mu(id) = sum(sum(sum(phi((ii-69):ii,(jj-69):jj,(kk-69):kk).^2)));
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
    log_f(8) = sum(f_log);
    log_alpha(8) = sum(alpha_log);
    log_M_box(8) = log(M_box);
    log_lambda(8) = log(lambda);
    
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