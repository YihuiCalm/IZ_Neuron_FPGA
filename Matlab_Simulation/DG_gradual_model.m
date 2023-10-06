% Simulation of a DG granule cell using Izhikevich Neural Model, and
% compare to the simulation result of https://hippocampome.org/php/neuron_page.php?id=1000


close all
clear
clc

h = 0.001;
length = 400/h;

v = zeros(length+1,1);
u = zeros(length+1,1);
current = ones(length+1,1);

k = 0.4471817006977834;
a = 0.0032799410036917333;
b = 24.478421990208606;
Vmin = -66.46563513097735; % c parameter
d = 50.0;
C = 38.0;
Vr = -77.40291336465064;
Vt = -44.90054428048817;
Vpeak = 15.489726771001997;
I = 654;

v(1) = Vr;
u(1) = 0;
current = I * current;

% for i = 2:length+1
%     if (v(i-1) >= Vpeak)
%         v(i) = Vmin;
%         u(i) = u(i-1) + d;
%     else
%         v(i) = v(i-1) + h * ( k * ( v(i-1) - Vr ) * ( v(i-1) - Vt) - u(i-1) + current(i))/C;
%         u(i) = u(i-1) + h * ( a * ( b * ( v(i-1)-Vr ) - u(i-1) ) );
%     end
% end

for i = 2:length+1
    v(i) = v(i-1) + h * ( k * ( v(i-1) - Vr ) * ( v(i-1) - Vt) - u(i-1) + current(i))/C;
    u(i) = u(i-1) + h * ( a * ( b * ( v(i-1)-Vr ) - u(i-1) ) );
    if (v(i) >= Vpeak)
        v(i) = Vmin;
        u(i) = u(i-1) + d;
    end
end

file_id = fopen('DG_granule_cell_data.csv');
data = textscan(file_id, '%f%f', 'Delimiter', ',', 'HeaderLines', 1);
fclose(file_id);

data = cell2mat(data(:,2));
erro = abs(v-data);

tiledlayout(3,1);

nexttile
plot(v(1:300000), 'LineWidth',1.5)
title('simulation of membrane potential ')

nexttile
plot(data(1:300000), 'LineWidth',1.5)
title('simulation result from Hippocampome.org')

nexttile
plot(abs(v(1:300000)-data(1:300000)), 'Color', 'red')
title('Error')


% nexttile
% plot(current, 'LineWidth',1.5)
% title('Current')
% 
% nexttile
% plot(u, 'LineWidth',1.5)
% title('membrane recovery')

