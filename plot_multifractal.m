figure
load multifractal_M30.mat;
plot(-10:0.2:10,tau30,'-o')
hold on
load multifractal_M100.mat;
plot(-10:0.2:10,tau100,'-s')
hold on
load multifractal_M140.mat;
plot(-10:0.2:10,tau140,'k-*')
legend('M = 30','M = 100','M = 140')
hold on
plot([0 0],[-80 20],'b--')
hold on
plot([-10 10],[-3 -3],'b--')
grid
title('$\tau(q)$','interpreter','latex')
xlabel('$q$','interpreter','latex')
ylabel('\tau')

x1 = 2:0.01:6;
figure
load multifractal_M30.mat;
plot(alpha30,f_alpha30,'+')
hold on
load multifractal_M100.mat;
plot(alpha100,f_alpha100,'*')
hold on
load multifractal_M140.mat;
plot(alpha140,f_alpha140,'kd')
legend('M = 30','M = 100','M = 140')
hold on
plot([4 4],[-0.5 3.5],'b--')
hold on
plot([0 8],[3 3],'b--')
hold on
plot(x1,3-(x1-4).^2/4,'b-','linewidth',1.5)
grid
title('$f(\alpha)$','interpreter','latex')
xlabel('\alpha')
ylabel('$f$','interpreter','latex')