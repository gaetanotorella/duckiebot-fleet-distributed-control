close all
figure()
db1_x = out.db1_x.Data;
db1_y = out.db1_y.Data;
db2_x = out.db2_x.Data;
db2_y = out.db2_y.Data;
x_g = out.x_g.Data;
y_g = out.y_g.Data;
db1_theta = out.db1_theta.Data;
db2_theta = out.db2_theta.Data;



scale_arrow = 0.5;

plot(db1_x, db1_y,'LineWidth',2)
grid on
hold on
% for i = 1:15:length(out.tout)
%     quiver(db1_x(i), db1_y(i), cos(db1_theta(i))*scale_arrow, sin(db1_theta(i))*scale_arrow, 'r', 'LineWidth', 0.3, 'MaxHeadSize',0.5);
% end
plot(db2_x, db2_y,'LineWidth',2)
% for i = 1:15:length(out.tout)
%     quiver(db2_x(i), db2_y(i), cos(db2_theta(i))*scale_arrow, sin(db2_theta(i))*scale_arrow, 'r', 'LineWidth', 0.3, 'MaxHeadSize',0.5);
% end
plot(x_g, y_g,'LineWidth',2)
legend('centroid')
title('Path')
xlabel('x')
ylabel('y')
axis equal
% legend('db1','theta1','db2','theta2','centroid')
legend('db1','db2','centroid')


figure()
plot(out.db1_theta,'LineWidth',2)
grid on
hold on
plot(out.db2_theta,'LineWidth',2)
title('Theta')
xlabel('time[s]')
ylabel('theta[rad]')
legend('db1','db2')

figure()
plot(out.db1_omega,'LineWidth',2)
grid on
hold on
plot(out.db2_omega,'LineWidth',2)
title('Omega')
xlabel('time[s]')
ylabel('omega[rad/s]')
legend('db1','db2')


figure()
plot(out.db1_v,'LineWidth',2)
grid on
hold on
plot(out.db2_v,'LineWidth',2)
title('V')
xlabel('time[s]')
ylabel('v[m/s]')
legend('db1','db2')

figure()
subplot(2,2,1)
plot(out.db1_wl*raggio,'LineWidth',2)
title('db1_wl')
grid on

subplot(2,2,2)
plot(out.db1_wr*raggio,'LineWidth',2)
title('db1_wr')
grid on

subplot(2,2,3)
plot(out.db2_wl*raggio,'LineWidth',2)
title('db2_wl')
grid on

subplot(2,2,4)
plot(out.db2_wr*raggio,'LineWidth',2)
title('db2_wr')
grid on
