% Euler Method simulation of a simple harmonic motion 

length = 50;

h = 0.01;
t = 0:h:length-h;
x_0 = 1;
v_0 = 0;
omega = 1;


x = cos(omega*t);

x1 = zeros(length/h,1);
x2 = zeros(length/h, 1);

x1(1) = x_0;
x2(1) = v_0;

for i = 2:length/h
    x1(i) = x1(i-1) + h*x2(i-1);
    x2(i) = x2(i-1) - h*omega*x1(i-1);
end

plot(t, x, t, x1, 'LineWidth',1.5)
legend({'Ture Solution', 'Solution Caculated by Euler Method'})


