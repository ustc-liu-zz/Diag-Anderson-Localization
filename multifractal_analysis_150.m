% Multifractal analysis for N = 150x150x150 grid, choose l = 3, 6, 10, 15, 25,
% 30, 50,75
% 15, plot the tau(q).
tau = zeros(201,1);
f_alpha = zeros(201,1);
alpha = zeros(201,1);
qq = 1;
for q = -10:0.1:10
    
    log_lambda = zeros(8,1);
    log_M_box = zeros(8,1);
    log_alpha = zeros(8,1);
    log_f = zeros(8,1);
    
    
    N_box = M/3;
    lambda = 3/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 3:3:150
        for jj = 3:3:150
            for kk = 3:3:150
                mu(id) = sum(sum(sum(phi((ii-2):ii,(jj-2):jj,(kk-2):kk).^2)));
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
    
    
    N_box = M/6;
    lambda = 6/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 6:6:150
        for jj = 6:6:150
            for kk = 6:6:150
                mu(id) = sum(sum(sum(phi((ii-5):ii,(jj-5):jj,(kk-5):kk).^2)));
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
    log_f(2) = sum(f_log);
    log_alpha(2) = sum(alpha_log);    
    log_M_box(2) = log(M_box);
    log_lambda(2) = log(lambda);
    
    
    N_box = M/10;
    lambda = 10/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 10:10:150
        for jj = 10:10:150
            for kk = 10:10:150
                mu(id) = sum(sum(sum(phi((ii-9):ii,(jj-9):jj,(kk-9):kk).^2)));
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
    log_f(3) = sum(f_log);
    log_alpha(3) = sum(alpha_log);    
    log_M_box(3) = log(M_box);
    log_lambda(3) = log(lambda);
    
    
    N_box = M/15;
    lambda = 15/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 15:15:150
        for jj = 15:15:150
            for kk = 15:15:150
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
    log_f(4) = sum(f_log);
    log_alpha(4) = sum(alpha_log);
    log_M_box(4) = log(M_box);
    log_lambda(4) = log(lambda);
    
    N_box = M/25;
    lambda = 25/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 25:25:150
        for jj = 25:25:150
            for kk = 25:25:150
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
    
    N_box = M/30;
    lambda = 30/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 30:30:150
        for jj = 30:30:150
            for kk = 30:30:150
                mu(id) = sum(sum(sum(phi((ii-29):ii,(jj-29):jj,(kk-29):kk).^2)));
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
    
    N_box = M/50;
    lambda = 50/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 50:50:150
        for jj = 50:50:150
            for kk = 50:50:150
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
    log_f(7) = sum(f_log);
    log_alpha(7) = sum(alpha_log);
    log_M_box(7) = log(M_box);
    log_lambda(7) = log(lambda);
    
    N_box = M/75;
    lambda = 75/M;
    mu = zeros(N_box^2,1);
    id = 1;
    for ii = 75:75:150
        for jj = 75:75:150
            for kk = 75:75:150
                mu(id) = sum(sum(sum(phi((ii-74):ii,(jj-74):jj,(kk-74):kk).^2)));
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
    tau(qq) = k_q(1);
    f_alpha(qq) = k_f(1);
    alpha(qq) = k_alpha(1);
    qq = qq + 1;
    %plot(log_lambda,log_alpha,'o-')
    %hold on
end
q = -10:0.1:10;
Delta_q = tau' - 3*(q-1);

figure
plot(-10:0.1:10,tau,'o')
y1 = get(gca,'ylim');
x1 = get(gca,'xlim');
hold on
plot([0 0],y1,'b--')
hold on
plot(x1,[-3 -3],'b--')
grid
title('Mass Exponent')
xlabel('$q$','interpreter','latex')
ylabel('\tau(q)')


x1 = 2:0.01:6;
figure
plot(alpha,f_alpha,'+')
y2 = get(gca,'ylim');
x2 = get(gca,'xlim');
hold on
plot([4 4],[0 3.5],'b--')
hold on
plot(x2,[3 3],'b--')
hold on
plot(x1,3-(x1-4).^2/4)
grid
title('Singularity Spectrum')
xlabel('\alpha')
ylabel('$f(\alpha)$','interpreter','latex')
%axis([0 7 0 3.5])

figure
plot(q,Delta_q,'o')
title('Anomalous Dimension')
xlabel('$q$','interpreter','latex')
ylabel('$\Delta(q)$','interpreter','latex')
axis([-0.5 1.5 -1 max(Delta_q)])
grid