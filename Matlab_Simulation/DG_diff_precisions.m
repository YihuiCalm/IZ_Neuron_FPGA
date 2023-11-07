% Simulation of young DG neuron in IZ model with different timesteps, inputs, and precisions.
close all
clear
clc

tiledlayout(4,4);
for timestep = [0.01 0.1 0.2 0.5]
    for synaptic_input = [1 2 3 4]
        nexttile
        hold on
        legend();
        for precision = [8 16 32]
            word_length = precision;
            fraction_length = precision-1;
            
            h = fi(timestep,1,word_length,fraction_length);
            length = round(100/double(h));
            
            v = zeros(length+1,1);
            u = zeros(length+1,1);
            current = ones(length+1,1);
            
    %         k = fi(0.07,1,word_length,fraction_length);
    %         a = fi(0.12,1,word_length,fraction_length);
    %         b = fi(0.3,1,word_length,fraction_length);
    %         Vmin = fi(-0.5601,1,word_length,fraction_length); % c parameter
    %         d = fi(0.16,1,word_length,fraction_length);
    %         C = 56.9;
    %         Vr = fi(-0.806,1,word_length,fraction_length);
    %         Vt = fi(-0.384,1,word_length,fraction_length);
    %         Vpeak = fi(0.382,1,word_length,fraction_length);
            k = fi(0.08,1,word_length,fraction_length);
            a = fi(0.0006,1,word_length,fraction_length);
            b = fi(0.56,1,word_length,fraction_length);
            Vmin = fi(-0.6647,1,word_length,fraction_length); % c parameter
            d = fi(0.74,1,word_length,fraction_length);
            C = fi(1/30.6,1,word_length,fraction_length);
            Vr = fi(-0.756,1,word_length,fraction_length);
            Vt = fi(-0.428,1,word_length,fraction_length);
            Vpeak = fi(0.382,1,word_length,fraction_length);
            
            I = synaptic_input;
            
            v(1) = Vr;
            u(1) = 0;
            current = I * current;
            
            for i = 2:length+1
                v(i) = v(i-1) + fi((fi(fi((h*10),1,word_length,fraction_length) * fi((k*10),1,word_length,fraction_length) * fi(( v(i-1) - Vr ) * ( v(i-1) - Vt),1,word_length,fraction_length),1,word_length,fraction_length) - fi(h*u(i-1),1,word_length,fraction_length) + fi(h*current(i),1,word_length,fraction_length))*C,1,word_length,fraction_length);
                u(i) = u(i-1) + fi(h * fi(( a * fi(( b * ( v(i-1)-Vr ) - u(i-1) ),1,word_length,fraction_length) ),1,word_length,fraction_length),1,word_length,fraction_length);
                if (v(i-1) >= Vpeak)
                    v(i) = Vmin;
                    u(i) = u(i-1) + d;
                end
            end
    
%             writematrix(v,"data/diff_bits/young_current_"+num2str(synaptic_input*100)+"_"+num2str(precision)+"bit_timestep_"+num2str(timestep)+".csv");


            if precision == 8
                plot(v, 'LineWidth',1.5,'Color',[0 0.4470 0.7410],'DisplayName'," "+num2str(precision)+"-bit");
            elseif precision == 16
                plot(v, 'LineWidth',1.5, 'Color',[0.8500 0.3250 0.0980],'DisplayName',num2str(precision)+"-bit");
            elseif precision == 32
                plot(v, 'LineWidth',1.5, 'Color',[0.9290 0.6940 0.1250],'DisplayName',num2str(precision)+"-bit");
            elseif precision == 64
                plot(v, 'LineWidth',1.5, 'Color',[0.4940 0.1840 0.5560],'DisplayName',num2str(precision)+"-bit");
            end
            title("i="+num2str(I)+"00pA"+"  timestep="+num2str(timestep));
            xlabel("time (ms)");
            ylabel("membrane potential (mv)");
            xlim([0,length]);
            set(gca,'XTick',0:(1/double(h))*10:length);
            set(gca,'XTicklabel',(0:(1/double(h))*10:length)/(1/double(h)));
            ylim([-0.9,0.6]);
            set(gca,'YTick',-0.9:0.3:0.6);
            set(gca,'YTicklabel',(-0.9:0.3:0.6)*100);
            axis square;
        end
        hold off
    end
end