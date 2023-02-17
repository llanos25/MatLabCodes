beta = 2; % par�metro de forma
theta = 1000; % par�metro de escala

n = 1000; % n�mero de datos a generar
tiempos_falla = wblrnd(theta, beta, [n, 1]);

tiempos_prueba = linspace(0, 5000, 100); % tiempos de prueba para calcular la confiabilidad
confiabilidad = wblsf(tiempos_prueba, theta, beta);

plot(tiempos_prueba, confiabilidad);
xlabel('Tiempo de prueba');
ylabel('Confiabilidad');
