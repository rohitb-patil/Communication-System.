DSBC  

am = 5;
ac = 2;
fm = 10;
fc = 100;
t = 0:0.001:1;
ka = 1;

mt = am * cos(2*pi*fm*t);
ct = ac * cos(2*pi*fc*t);

% Modulation
ot = (ct .* mt);

mt1 =( ot .* ct );
demodulated_signal_filtered = lowpass(mt1, 2*fm, 1000);


figure;

subplot(4,1,1);
plot(t, mt);
title("MODULATING SIGNAL");

subplot(4,1,2);
plot(t, ct);
title("CARRIER SIGNAL");

subplot(4,1,3);
plot(t, ot);
title("MODULATED SIGNAL");

subplot(4,1,4);
plot(t, demodulated_signal_filtered);
title("DEMODULATED SIGNAL");

