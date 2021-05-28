
clear all 
close all
clc



% Retrieve Data Sample 1
    filename = 'Sensing Test 3.xlsx';
    sheet = 'Sheet1';
    
    FT_1 = xlsread(filename, sheet,'C:E');
        time_1 = FT_1(:,1);  
        Pressure_1 = FT_1(:,2);
        Disp_1 = FT_1(:,3);
        time_1_p = time_1;
    
        L1 = 150; %mm
        Strain1 = (Disp_1/L1)*100;
     
        
        
fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

yyaxis right;
H1 = plot(time_1(1:25990),Pressure_1(1:25990),':','LineWidth',1,'Color',[0.5,0.5,0.5]); 
ylabel('Pressure, (MPa)')
set(gca,'ycolor',[0.5,0.5,0.5])
% ylim([0 60])
yyaxis left;
H2 =  plot(time_1(1:25990),Strain1(1:25990)-Strain1(1),'Linewidth',1,'Color',[0, 0, 0]);ylabel('Act. Strain')
set(gca,'ycolor',[0, 0, 0])
xlabel('Time (s)')
% xlim([0,8]);
% set(gca,'XTick',[0:1:8]);
% title('400 grams')
% legend('SAMPLE 1','SAMPLE 1','Location','Northwest')
grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color        
       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig=figure('units','inch','position',[0,0,4.5,3.75]); hold on; grid on; set(gca,'FontSize',30);
plot(Pressure_1(6000:25990)-Pressure_1(6000),Strain1(6000:25990)-Strain1(6000),'Linewidth',0.8,'Color',[0,0,0])

% -Gamma_z_theta(1)
%   xlim([0 2])
% ylim([-2 40]);set(gca,'YTick',[0:10:40]); 
%  legend('Model','Sample 1','Sample 2')
 xlabel('\DeltaP, (psi)')
 ylabel('Act. Strain, ɛ (%)')
%  ylim([-0.01 0.08])

grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color 
% print(gcf,'optimalalpha0.01deg.png','-dpng','-r700');



fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

subplot(2,1,1);
plot(time_1(6000:25990)-time_1(6000),(Strain1(6000:25990)-Strain1(6000)),':','Linewidth',1.5,'Color',[0.5,0.5,0.5]); hold on
ylabel('Act. Strain, ɛ (%)')
xlabel('Time (s)')
set(gca,'ycolor',[0, 0, 0])
xlabel('Time (s)')
% xlim([0,8]);

legend('Displacement Input','Location','Northwest')
subplot(2,1,2); 
plot(time_1(6000:25990)-time_1(6000),Pressure_1(6000:25990)-Pressure_1(6000),':','LineWidth',1.5,'Color',[0,0,0]); 
ylabel('\DeltaP, (psi)')
xlabel('Time (s)')
legend('Pressure Output (sensing)','Location','Northwest')
%  ylim([-0.05 2.2])

grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color  
