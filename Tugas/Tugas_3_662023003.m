clc;
clear;

% Metode Jacobi untuk menyelesaikan sistem persamaan linear

% Matriks koefisien A dan vektor konstanta b
A = [10 -1 2 0;
    -1 11 -1 3;
     2 -1 10 -1;
     0 3 -1 8];

b = [6; 25; -11; 15];

% Tebakan awal (semua x = 0)
x = zeros(4,1); 
x_old = x;

% Toleransi error dan jumlah iterasi maksimum
tol = 1e-6;
max_iter = 100;

% Panjang vektor solusi (jumlah variabel)
n = length(b);

% Iterasi Jacobi
for k = 1:max_iter %kita ulang proses sebanyak max_iter kali atau sampai ketemu solusinya .
    for i = 1:n 
        % Hitung sigma (penjumlahan tanpa elemen diagonal)
        sigma = 0;
        for j = 1:n
            if j ~= i
                sigma = sigma + A(i,j) * x_old(j);
            end
        end
        % Update nilai x(i) dengan nilai baru
        x(i) = (b(i) - sigma) / A(i,i);
    end
    
    % Periksa apakah solusi sudah konvergen
    if norm(x - x_old, inf) < tol
        break;
    end
    
    % Update nilai lama untuk iterasi berikutnya
    x_old = x;
end

% Tampilkan hasil
fprintf('Hasil dengan metode Jacobi (dalam %d iterasi):\n', k);
disp(x);

% Metode Gauss-Seidel untuk menyelesaikan sistem persamaan linear

% Matriks koefisien A dan vektor konstanta b
A = [10 -1 2 0;
    -1 11 -1 3;
     2 -1 10 -1;
     0 3 -1 8];

b = [6; 25; -11; 15];

% Tebakan awal (semua x = 0)
x = zeros(4,1);

% Toleransi error dan jumlah iterasi maksimum
tol = 1e-6;
max_iter = 100;

% Panjang vektor solusi (jumlah variabel)
n = length(b);

% Iterasi Gauss-Seidel
for k = 1:max_iter
    x_old = x;
    
    for i = 1:n
        % Hitung sigma (semua elemen kecuali diagonal)
        sigma = 0;
        for j = 1:n
            if j ~= i
                sigma = sigma + A(i,j) * x(j);  % Gunakan nilai terbaru jika tersedia
            end
        end
        % Update nilai x(i)
        x(i) = (b(i) - sigma) / A(i,i);
    end
    
    % Periksa apakah solusi sudah konvergen
    if norm(x - x_old, inf) < tol
        break;
    end
end

% Tampilkan hasil
fprintf('Hasil dengan metode Gauss-Seidel (dalam %d iterasi):\n', k);
disp(x);

%Metode Numerik menggunakan jumlahan Riemann dan aturan trapesium 

% Fungsi integrasi: f(x) = 2x^3
f = @(x) 2 * x.^3;

% Batas integrasi
a = 0;
b = 1;

% Jumlah subinterval
n = 10;

% Lebar langkah
h = (b - a) / n;

% Vektor x
x = a:h:b;

% Hitung nilai f(x) untuk semua titik
fx = f(x);

% Aturan Trapesium
T = h/2 * (fx(1) + 2*sum(fx(2:end-1)) + fx(end));
fprintf('Aturan Trapesium: %.4f\n', T);

% Riemann Kiri
L = h * sum(fx(1:end-1));
fprintf('Riemann Kiri: %.4f\n', L);

% Riemann Kanan
R = h * sum(fx(2:end));
fprintf('Riemann Kanan: %.4f\n', R);

% Riemann Tengah
% Titik tengah setiap subinterval: x(i) + h/2
x_mid = a + h/2 : h : b - h/2;
fx_mid = f(x_mid);
M = h * sum(fx_mid);
fprintf('Riemann Tengah: %.4f\n', M);

% Nilai Eksak 
L_exact = integral(f, a, b);
fprintf('Nilai Eksak: %.4f\n', L_exact);


