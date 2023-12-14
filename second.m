fm = 10;
fc =100;
ac = 1;
am =1;
t = 0:0.001:1;

m = cos(2*pi*fm*t);
c = cos(2*pi*fc*t);

a = (ac * m ).* c; % dsbsc
b = (ac * (1+m)).*c; %am
c = (ac * c)+(ac/4*(m.*c));% god knows
d = ((ac*m).*c) + (ac*sin(2*pi*fm*t)).*(sin(2*pi*fc*t));%gods chacha knows

figure;
subplot(4,1,1);
plot(t,a);

subplot(4,1,2);
plot(t,b);

subplot(4,1,3);
plot(t,c);

subplot(4,1,4);
plot(t,d);