% Simulation of DG neuron in IZ model with different age types.
close all
clear
clc

h = 0.1;
length = 25/h;



% tiledlayout(2,2);
for I = [400 300 200 100]
%     nexttile;
%     hold on
%     legend();
    for age = ["young" "middle" "mature"]
    
        v = zeros(length+1,1);
        u = zeros(length+1,1);
        current = ones(length+1,1);
    
        if age == "young"
            a=0.0006;
            b=0.56;
            k=0.08;
            d=74.0;
            C=30.6;
            vRest=-75.6;
            vThresh=-42.8;
            vPeak=38.2;
            vMin=-66.47;
        elseif age == "middle"
            a=0.001;
            b=0.2;
            k=0.06;
            d=16;
            C=43.75;
            vRest=-78.1;
            vThresh=-40.6;
            vPeak=38.2;
            vMin=-61.24;
        elseif age == "mature"
            a=0.12;
            b=0.3;
            k=0.07;
            d=16.0;
            C=56.9;
            vRest=-80.6;
            vThresh=-38.4;
            vPeak=38.2;
            vMin=-56.01;
        end
    
        v(1) = vRest;
        u(1) = 0;
        current = I * current;
        
        for i = 2:length+1
            v(i) = v(i-1) + h * ( k * ( v(i-1) - vRest ) * ( v(i-1) - vThresh) - u(i-1) + current(i))/C;
            u(i) = u(i-1) + h * ( a * ( b * ( v(i-1)-vRest ) - u(i-1) ) );
            if (v(i-1) >= vPeak)
                v(i) = vMin;
                u(i) = u(i-1) + d;
            end
        end

        writematrix(v,"data/age_"+age+"_current_"+num2str(I)+"_timestep_"+num2str(h)+".csv");

%         if age == "young"
%             plot(v, 'LineWidth',1.5, 'DisplayName',age,'Color',[0.8500 0.3250 0.0980]);
%         elseif age == "middle"
%             plot(v, 'LineWidth',1.5, 'DisplayName',age,'Color',[0.9290 0.6940 0.1250]);
%         elseif age == "mature"
%             plot(v, 'LineWidth',1.5, 'DisplayName',age,'Color',[0 0.4470 0.7410]);
%         end
% 
%         
%         title("i="+num2str(I)+"pA");
%         xlabel("time (ms)");
%         ylabel("membrane potential (mv)");
%         xlim([0,length]);
%         set(gca,'XTick',0:(1/double(h))*(length*h/5):length);
%         set(gca,'XTicklabel',(0:(1/double(h))*(length*h/5):length)/(1/double(h)));
%         ylim([-90,50]);
%         set(gca,'YTick',-90:30:90);
%         set(gca,'YTicklabel',-90:30:90);
%         axis square;
    end
% %     hold off
end

