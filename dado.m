%AUTOR: EZEQUIEL WAJS
clear all;
N = 10000; %Cantidad de experimentos
Uno = 0; %Cantidad de veces que salió 1
Dos = 0; %Cantidad de veces que salió 2
Tres = 0; %Cantidad de veces que salió 3
Cuatro = 0; %Cantidad de veces que salió 4
Cinco = 0; %Cantidad de veces que salió 5
Seis = 0; %Cantidad de veces que salió 6
for n = 1:N
    resultado(n) = rand(1); %Pido un número aleatorio y lo almaceno en un Array
   if (resultado(n) < 1/6)
       Uno = Uno + 1; %Cuento un 1 más dentro de los resultados
       resultado(n) = 1; %El resultado del experimento n fue 1
   elseif (resultado(n) < 2/6)
       Dos = Dos + 1; %Cuento un 2 más dentro de los resultados
       resultado(n) = 2; %El resultado del experimento n fue 2
   elseif (resultado(n) < 3/6)
       Tres = Tres + 1; %Cuento un 3 más dentro de los resultados
       resultado(n) = 3; %El resultado del experimento n fue 3
   elseif (resultado(n) < 4/6)
       Cuatro = Cuatro + 1; %Cuento un 4 más dentro de los resultados
       resultado(n) = 4; %El resultado del experimento n fue 4
   elseif (resultado(n) < 5/6)
       Cinco = Cinco + 1; %Cuento un 5 más dentro de los resultados
       resultado(n) = 5; %El resultado del experimento n fue 5
   elseif (resultado(n) < 6/6)
       Seis = Seis + 1; %Cuento un 6 más dentro de los resultados
       resultado(n) = 6; %El resultado del experimento n fue 6
   end
   FRelUno(n) = Uno/n; %Frecuencia relativa de los Unos en n intentos
   FRelDos(n) = Dos/n; %Frecuencia relativa de los Dos en n intentos
   FRelTres(n) = Tres/n; %Frecuencia relativa de los Tres en n intentos
   FRelCuatro(n) = Cuatro/n; %Frecuencia relativa de los Cuatros en n intentos
   FRelCinco(n) = Cinco/n; %Frecuencia relativa de los Cincos en n intentos
   FRelSeis(n) = Seis/n; %Frecuencia relativa de los Seis en n intentos
end
%-----------GRÁFICOS Y COSMÉTICA----------------------
plot(1:N,FRelUno,'red','LineWidth',2);
title('Frecuencias Relativas de Arrojar un dado','FontSize',12);
xlabel('Cantidad de experimentos','FontSize',12);
ylabel('Frecuencias Relativas','FontSize',12);
hold on;
plot(1:N,FRelDos,'blue','LineWidth',2);
plot(1:N,FRelTres,'g','LineWidth',2);
plot(1:N,FRelCuatro,'c','LineWidth',2);
plot(1:N,FRelCinco,'m','LineWidth',2);
plot(1:N,FRelSeis,'y','LineWidth',2);
object_h = legend('F. R. 1','F. R. 2','F. R. 3','F. R. 4','F. R. 5','F. R. 6');
set(object_h,'FontSize',12);
hold off;
resultado