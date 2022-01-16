dc = (0:0.001:1);
d = 1-dc;
esr = 57e-3;
load = 12;
gain = (1./(d+(esr./(d.*load))));
inputV = 1;
inputC = 1;
outputV = gain*1;
outputC = d.*inputC;
figure
plot(dc*100,gain,'LineWidth',3);
hold on
plot(dc*100,1./d,'LineWidth',3);

ylim([0 15]);
grid minor;
xlabel('Duty Cycle(%)');
ylabel('Voltage Gain');
title('Voltage Gain vs Duty Cycle');
legend('With ESR','Without ESR');

n1 = (outputC.*outputV)./(inputC*inputV);
n2 = (outputC./d)./(1)
figure
plot(dc*100,n1*100,'LineWidth',3);
hold on 
plot(dc*100,n2*100,'LineWidth',3);

grid minor;
xlabel('Duty Cycle(%)');
ylabel('Efficiency (%)');
title('Efficiency vs Duty Cycle');
legend('With ESR','Without ESR');
ylim([0 103]);