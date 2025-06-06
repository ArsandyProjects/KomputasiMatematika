clc 
clear

% Ripple Menyebar
[x,y] = meshgrid(linspace(-6,6,150));
r = sqrt(x.^2 + y.^2);
z = sin(5*r) ./ (1 + r.^2);

figure(1)
surf(x,y,z)
shading interp
title('Ripple Menyebar')
axis tight

% Gelombang Bunga
[x,y] = meshgrid(linspace(-4,4,200));
r = sqrt(x.^2 + y.^2);
theta = atan2(y,x);
z = sin(6*theta) .* cos(r);

figure(2)
surf(x,y,z)
shading interp
title('Gelombang Bunga')
axis tight

% Kubus Melengkung
[x,y] = meshgrid(linspace(-2,2,150));
z = sin(x.^3 - y.^3);

figure(3)
surf(x,y,z)
shading interp
colormap(hot)
title('Kubus Melengkung')
axis tight

% Gelombang Jaring Jaring
[x,y] = meshgrid(linspace(-5,5,200));
z = sin(x.*y) .* cos(x - y);

figure(4)
surf(x,y,z)
shading interp
title('Gelombang Jaring Jaring')
axis tight

% Bola Beralur
[x,y] = meshgrid(linspace(-3,3,180));
z = sin(5*(x.^2 + y.^2)) .* cos(3*(x.^2 - y.^2));

figure(5)
surf(x,y,z)
shading interp
title('Bola Beralur')
axis equal

% Bunga 3D Berpola Fraktal
[x,y] = meshgrid(linspace(-4,4,200));
r = sqrt(x.^2 + y.^2);
theta = atan2(y,x);
z = sin(5*r) .* cos(7*theta) .* exp(-0.3*r);

figure(6)
surf(x,y,z)
shading interp
colormap(hot)
title('Bunga 3D Berpola Fraktal')
axis equal

% Spiral Logaritmik Berwarna
theta = linspace(0,6*pi,1000);
a = 0.1;
r = exp(a*theta);
x = r .* cos(theta);
y = r .* sin(theta);

c = linspace(1,10,length(theta));
figure (7)
scatter(x,y,5,c,'filled')
colormap(jet)
colorbar
title('Spiral Logaritmik Berwarna')
axis equal

% Kurva Lissajous
t = linspace(0,2*pi,1000);
a = 5; b = 4; delta = pi/3;

x = sin(a*t + delta);
y = sin(b*t);

figure(8)
plot(x,y,'r','LineWidth',2)
axis equal
title('Kurva Lissajous')

% Gelombang Chaotic
x = linspace(-5,5,1000);
y = sin(x.^2) .* cos(3*x) + 0.5*sin(10*x);

figure(9)
plot(x,y,'m','LineWidth',1.8)
grid on
title('Gelombang Chaotic')

% Poligon Starburst
n = 30; % jumlah garis
theta = linspace(0,2*pi,n+1);
r = linspace(0,1,n);

figure(10)
hold on
for i=1:n
    plot([0 r(i)*cos(theta(i))],[0 r(i)*sin(theta(i))],'b','LineWidth',1.5)
end
axis equal 
title('Poligon Starburst')

% Cincin Tak Beraturan
theta = linspace(0,2*pi,500);
r = 1 + 0.3*rand(1,500); % radius acak kecil

x = r .* cos(theta);
y = r .* sin(theta);

figure(11)
plot(x,y,'r','LineWidth',2)
axis equal
title('Cincin Tak Beraturan')

% Kurva Butterfly 
t = linspace(0,12*pi,1000);
x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);

figure(12)
plot(x,y,'m','LineWidth',2)
axis equal
title('Kurva Butterfly (Kupu-kupu)')
grid on

% Spiral Gelombang Pusaran
theta = linspace(0, 6*pi, 300);
r = linspace(0.1, 5, 300);
[theta, r] = meshgrid(theta, r);
x = r .* cos(theta);
y = r .* sin(theta);
z = sin(4*theta) ./ r;

figure(13)
surf(x, y, z)
shading interp
title('Spiral Gelombang Pusaran')
axis equal tight

% Gelombang Torus Terkelupas

[u, v] = meshgrid(linspace(0, 2*pi, 200), linspace(0, 2*pi, 200));
R = 3; r = 1 + 0.3*sin(5*v + 3*u);
x = (R + r.*cos(v)) .* cos(u);
y = (R + r.*cos(v)) .* sin(u);
z = r .* sin(v);

figure(14)
surf(x, y, z)
shading interp
axis equal 
title('Gelombang Torus Terkelupas')

% Bunga 3D Berdenyut
[phi, theta] = meshgrid(linspace(0, pi, 150), linspace(0, 2*pi, 150));
r = 1 + 0.5*sin(6*phi).*cos(8*theta);
x = r .* sin(phi) .* cos(theta);
y = r .* sin(phi) .* sin(theta);
z = r .* cos(phi);

figure(15)
surf(x, y, z)
shading interp
colormap(hot)
axis equal
title('Bunga 3D Berdenyut')

% Pola Frakta

[x, y] = meshgrid(linspace(-2,2,400));
z = sin(10*(x.^2 - y.^2)) ./ (1 + x.^2 + y.^2);

figure(16)
surf(x, y, z)
shading interp
colormap(cool)
axis equal tight
title('Pola Fraktal')

% Pusaran Abstrak
[u, v] = meshgrid(linspace(-pi, pi, 300), linspace(-pi, pi, 300));
x = sin(u) .* cos(v);
y = sin(v) .* cos(u);
z = sin(5*(x.^2 + y.^2)) ./ sqrt(x.^2 + y.^2 + 0.01);

figure(17)
surf(x, y, z)
shading interp
axis equal 
title('Pusaran Abstrak')

% Plana
[x, y] = meshgrid(linspace(-1.5, 1.5, 250));
z = x.^4 - y.^4;

figure(18)
surf(x, y, z)
shading interp
colormap(copper)
axis equal tight
title('Plana')

% Simfoni Gelombang Silang
[x, y] = meshgrid(linspace(-5,5,300));
z = sin(x.*y) .* cos(x + y) ./ (1 + 0.1*(x.^2 + y.^2));

figure(19)
surf(x, y, z)
shading interp
axis equal tight
title('Simfoni Gelombang Silang')

% Topologi Plasma Terbalik
[x, y] = meshgrid(linspace(-3,3,300));
r = sqrt(x.^2 + y.^2);
z = log(r + 1e-3) .* cos(8*r);

figure(20)
surf(x, y, z)
shading interp
axis equal tight
title('Topologi Plasma Terbalik')
