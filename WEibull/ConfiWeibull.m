beta = 2; % parámetro de forma
theta = 1000; % parámetro de escala

n = 1000; % número de datos a generar
tiempos_falla = wblrnd(theta, beta, [n, 1]);

tiempos_prueba = linspace(0, 5000, 100); % tiempos de prueba para calcular la confiabilidad
confiabilidad = wblsf(tiempos_prueba, theta, beta);

plot(tiempos_prueba, confiabilidad);
xlabel('Tiempo de prueba');
ylabel('Confiabilidad');
