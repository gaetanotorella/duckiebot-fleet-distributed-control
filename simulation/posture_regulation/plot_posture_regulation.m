close all
figure()
x_data = out.x.Data;
y_data = out.y.Data;
plot(x_data, y_data)
grid on
title('Path x,y')
xlabel('x')
ylabel('y')

figure()
plot(out.theta)
grid on
title('Theta')

figure()
plot(out.omega_k)
grid on
title('Omega')

figure()
plot(out.v_k)
grid on
title('V')

