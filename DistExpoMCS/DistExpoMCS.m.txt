% Definir parámetros de la distribución exponencial
mu = 10; % media
lambda = 1/mu; % parámetro de tasa

% Definir el número de simulaciones y el número de muestras por simulación
num_simulaciones = 1000;
num_muestras = 100;

% Generar datos de la distribución exponencial
datos_exp = exprnd(mu, num_simulaciones, num_muestras);

% Calcular la tasa de falla para cada simulación y muestras
tasa_falla = 1./mean(datos_exp, 2);

% Graficar histograma de tasas de falla
histogram(tasa_falla, 'Normalization', 'pdf');
xlabel('Tasa de falla');
ylabel('Densidad de probabilidad');
title('Histograma de tasas de falla simuladas');
