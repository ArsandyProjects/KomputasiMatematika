%definisikan fungsi
f= inline('x^2 - 3', 'x');

%interval [1,2]
X = [1,2];

%pangil fungsi bagidua
[x, galat]= bagidua(f,X);