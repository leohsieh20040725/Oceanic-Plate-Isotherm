load('earthquake_depths_vs_age.dat');
Tm = 1300+273;
T0 =0+273;
k = 1*(10^-6)*365*24*60*60*(10^-6);
T1 = 200+273;
T2 = 400+273;
T3=600+273;
T4 = 800+273;
T5=1000+273;
t = linspace(0,100000000,1000);
z1 = erfinv((T1-T0)./(Tm-T0))*2*sqrt(k*t);
z2 =erfinv((T2-T0)./(Tm-T0))*2*sqrt(k*t);
z3 = erfinv((T3-T0)./(Tm-T0))*2*sqrt(k*t);
z4 = erfinv((T4-T0)./(Tm-T0))*2*sqrt(k*t);
z5 =erfinv((T5-T0)./(Tm-T0))*2*sqrt(k*t);
plate_velocity = 0.000065;
distance =plate_velocity*t;
x= earthquake_depths_vs_age (1:30, 1);
x= x*65;
y= earthquake_depths_vs_age (1:30, 2);
figure(1)
hold on
plot(distance,z1)
plot(distance,z2)
plot(distance,z3)
plot(distance,z4)
plot(distance,z5)
plot(x,y, 'r.')
hold off
xlabel('distance( km) ')
ylabel( ' depth( km)')
xlim([0 6500])
title('Oceanic Plate Isotherm')
set(gca,'XAxisLocation','top','YAxisLocation','left','yDir','reverse')
legend('473k','673k','873k', '1073k','1273k', 'Earthquake')
