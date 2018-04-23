%AUTOR: EZEQUIEL WAJS
clear all;
N = 50000; %Cantidad de experimentos
Cara = 0; %Cantidad de veces que salió cara
Ceca = 0; %Cantidad de veces que salió ceca
for n = 1:N
   resultado(n) = rand(1);
   if (resultado(n) < 0.5)
      Cara = Cara + 1;
      resultado(n) = 1;
   else
       Ceca = Ceca + 1;
       resultado(n) = 0;
   end
   FRelCara(n) = Cara/n; %Frecuencia relativa de las Caras en n intentos
   FRelCeca(n) = Ceca/n; %Frecuencia relativa de las Cecas en n intentos
end
plot(1:N,FRelCara,'red','LineWidth',2);
title('Frecuencias Relativas de Arrojar una moneda','FontSize',12);
xlabel('Cantidad de experimentos','FontSize',12);
ylabel('Frecuencias Relativas','FontSize',12);
hold on;
plot(1:N,FRelCeca,'blue','LineWidth',2);
object_h = legend('Frecuencia Relativa de Caras','Frecuencia Relativa de Cecas');
set(object_h,'FontSize',12);
hold off;
if (resultado(1) == 1)
    str = ' Cara';
else
    str = ' Ceca';
end
for n = 2:N
    if (resultado(n) == 1)
        str = [str ' Cara'];
    else
        str = [str ' Ceca'];
    end
end
str