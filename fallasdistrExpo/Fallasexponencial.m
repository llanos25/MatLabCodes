lambda = [0.02, 0.03, 0.04, 0.05]; % tasa de falla de cada componente



n = 1000; % número de datos a generar
tiempos_falla = zeros(length(lambda), n);
for i = 1:length(lambda)
    tiempos_falla(i,:) = exprnd(1/lambda(i), [1, n]);
end




tiempo_falla_sistema = min(sum(tiempos_falla, 1));



histogram(sum(tiempos_falla, 1), 'Normalization', 'pdf');
xlabel('Tiempo de falla del sistema');
ylabel('Probabilidad');



lambda = [0.02, 0.03, 0.04, 0.05]; % tasa de falla de cada componente

n = 1000; % número de datos a generar
tiempos_falla = zeros(length(lambda), n);
for i = 1:length(lambda)
    tiempos_falla(i,:) = exprnd(1/lambda(i), [1, n]);
end

tiempo_falla_sistema = min(sum(tiempos_falla, 1));

histogram(sum(tiempos_falla, 1), 'Normalization', 'pdf');
xlabel('Tiempo de falla del sistema');
ylabel('Probabilidad');



