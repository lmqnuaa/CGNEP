close all; 
clear;
load force.out;force=force(1:108,:);
load forces_hiphive.txt;
forces_gpumd=reshape(force,108*3,1);
forces_hiphive=reshape(forces_hiphive,108*3,1);

figure;
subplot(1,2,1);
plot(forces_hiphive,'o');
hold on;
plot(forces_gpumd,'x');
xlabel('force components');
ylabel('force (eV/A)');
legend('hiPhive','GPUMD');

subplot(1,2,2);
plot(forces_hiphive-forces_gpumd,'*');
xlabel('force components');
ylabel('force difference (eV/A)');
