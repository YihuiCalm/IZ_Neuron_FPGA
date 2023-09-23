% Simulation of a Spiking Neuron using Izhikevich Neural Model.
% Ref: https://www.izhikevich.org/publications/spikes.htm
h = 0.01;
length = 100/h;

v = zeros(length,1);
u = zeros(length,1);

a = 0.02;
b = 0.2;
c = -65;
d = 2;

v(1) = -70;
u(1) = v(1)*b;

for i = 2:length
    if i < length/10
        I = 0;
    else
        I = 15;
    end

    if (v(i-1) >= -30)
        v(i) = c;
        u(i) = u(i-1) + d;
    else
        v(i) = v(i-1) + h*(0.04*v(i-1)^2 + 5*v(i-1) + 140 - u(i-1) + I);
        u(i) = u(i-1) + h*(a*(b*v(i-1) - u(i-1)));
    end
end

tiledlayout(2,1);
nexttile
plot(v)
title('membrane potential ')
nexttile
plot(u)
title('membrane recovery')

