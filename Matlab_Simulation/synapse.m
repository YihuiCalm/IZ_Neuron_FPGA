% Simulation of two neurons that connected together with a synapse, which
% has exponential decay current output after spike input.
close all
clear
clc

h = 0.001;
length = 100/h;
neurons = 2;

v = zeros(length+1,neurons);
u = zeros(length+1,neurons);
current = zeros(length+1,neurons);

k = 0.4471817006977834;
a = 0.0032799410036917333;
b = 24.478421990208606;
Vmin = -66.46563513097735; % c parameter
d = 50.0;
C = 38.0;
Vr = -77.40291336465064;
Vt = -44.90054428048817;
Vpeak = 15.489726771001997;
I = 600;

v(1,:) = Vr*ones(1,neurons);

current(:,1) = I * ones(length+1,1);

for i = 2:length+1
    v(i,:) = v(i-1,:) + h .* ( k .* ( v(i-1,:) - Vr ) .* ( v(i-1,:) - Vt) - u(i-1,:) + current(i,:))/C;
    u(i,:) = u(i-1,:) + h .* ( a .* ( b .* ( v(i-1,:)-Vr ) - u(i-1,:) ) );
    
    for j = 2:neurons
        if (v(i-1,j-1) >= Vpeak)
            current(i+1,j) = I;
            v(i,j-1) = Vmin;
            u(i,j-1) = u(i-1,j-1) + d;
        else 
            current(i+1,j) = current(i,j)*exp(-h);
        end
    end

    if (v(i-1,neurons) >= Vpeak)
        v(i,neurons) = Vmin;
        u(i,neurons) = u(i-1,neurons) + d;
    end
end

tiledlayout(neurons+1,1);

for k=1:neurons
    nexttile
    plot(v(:,k), 'LineWidth',1.5)
    title(['Neuron: ',num2str(k)])
end

nexttile
hold on
for k=1:neurons
    plot(v(:,k), 'LineWidth',1.5)
end
title("Comparison")

