% Simulation of two neurons that connected together with a synapse, which
% has exponential decay current output after spike input.
close all
clear
clc

h = 0.01;
length = 25/h;
neurons = 2;

k = 0.4471817006977834;
a = 0.0032799410036917333;
b = 24.478421990208606;
Vmin = -66.46563513097735; % c parameter
d = 50.0;
C = 38.0;
Vr = -77.40291336465064;
Vt = -44.90054428048817;
Vpeak = 15.489726771001997;
I = 400;


tiledlayout(2,1);

for weight = 3000
    v = zeros(length+1,neurons);
    u = zeros(length+1,neurons);
    v(1,:) = Vr*ones(1,neurons);
    current = zeros(length+1,neurons);
    current(:,1) = I * ones(length+1,1);
    for i = 2:length+1
        v(i,:) = v(i-1,:) + h .* ( k .* ( v(i-1,:) - Vr ) .* ( v(i-1,:) - Vt) - u(i-1,:) + current(i,:))/C;
        u(i,:) = u(i-1,:) + h .* ( a .* ( b .* ( v(i-1,:)-Vr ) - u(i-1,:) ) );
        
        for j = 2:neurons
            if (v(i-1,j-1) >= Vpeak)
                current(i+1,j) = weight + current(i,j)*(1-h);
                v(i,j-1) = Vmin;
                u(i,j-1) = u(i-1,j-1) + d;
            else 
                current(i+1,j) = current(i,j)*(1-h);
            end
        end
    
        if (v(i-1,neurons) >= Vpeak)
            v(i,neurons) = Vmin;
            u(i,neurons) = u(i-1,neurons) + d;
        end
    end

    writematrix(v(:,1),"data/diff_synapse/potential_neuron_1_weight_"+num2str(weight)+"_timestep_0.01"+".csv");
    writematrix(v(:,2),"data/diff_synapse/potential_neuron_2_weight_"+num2str(weight)+"_timestep_0.01"+".csv");

    nexttile
    hold on
    legend();
    title("Comparison of potential with synapse weight: "+num2str(weight));
    for k=1:neurons
        plot(v(:,k), 'LineWidth',1.5,'DisplayName',"neuron: "+num2str(k))
    end
    xlabel("time (ms)");
    ylabel("membrane potential (mv)");
    xlim([0,length]);
    set(gca,'XTick',0:(1/double(h))*(length*h/5):length);
    set(gca,'XTicklabel',(0:(1/double(h))*(length*h/5):length)/(1/double(h)));
    ylim([-90,50]);
    set(gca,'YTick',-90:30:90);
    set(gca,'YTicklabel',-90:30:90);
    axis square;
    hold off

    writematrix(current(:,1),"data/diff_synapse/current_neuron_1_weight_"+num2str(weight)+"_timestep_0.01"+".csv");
    writematrix(current(:,2),"data/diff_synapse/current_neuron_2_weight_"+num2str(weight)+"_timestep_0.01"+".csv");

    nexttile
    hold on
    legend();
    title("Comparison of synaptic input");
    for l=1:neurons
        plot(current(:,l), 'LineWidth',1.5,'DisplayName',"neuron: "+num2str(l))
    end
    xlabel("time (ms)");
    ylabel("synaptic input (pA)");
    xlim([0,length]);
    set(gca,'XTick',0:(1/double(h))*(length*h/5):length);
    set(gca,'XTicklabel',(0:(1/double(h))*(length*h/5):length)/(1/double(h)));
    ylim([0,3000]);
    axis square;
    hold off

end



