% Simulation of synapse in IZ model with different timesteps, and weights.
close all
clear
clc

tiledlayout(1,4);
for timestep = [0.01 0.1 0.2 0.5]
    for weight = [0.01 0.02 0.03 0.04]
        nexttile
        hold on
        legend();
        for precision = [16]
            word_length = precision;
            fraction_length = precision-1;
            decay = fi(1-timestep,1,word_length,fraction_length);
            
            length = round(10/timestep);
            current = zeros(length+1,1);
            spike = zeros(length+1,1);
            spike(2) = 1;
            
            
            for i = 2:length+1
                if(spike(i)==1)
                    current(i) = fi(fi(weight,1,word_length,fraction_length) + fi(current(i-1)*decay,1,word_length,fraction_length),1,word_length,fraction_length);
                else
                    current(i) = fi(current(i-1)*decay,1,word_length,fraction_length);
                end
            end

            plot(current, 'LineWidth',1.5, 'DisplayName',num2str(precision)+"-bit");
            title("weight="+num2str(weight));
            xlabel("time (ms)");
            ylabel("current (pA)");
            ylim([0 0.05]);
            set(gca,'XTick',0:(1/timestep)*10:length);
            set(gca,'XTicklabel',(0:1/timestep*10:length)/(1/timestep));
            axis square;
        end
        hold off
    end
end