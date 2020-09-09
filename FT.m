% Calcula a Transformada de Fourier de um sinal e retorna seu gráfico

function [S,frequencia] = FT(s,fs)

normal= length(s); % variável que vai normalizar o eixo das abscissas, e é do tamanho do sinal
aux = 0:normal-1; % vai de 0 até o tamanho do sinal -1; serve pra auxiliar a definição do eixo das frequências
T = normal/fs; % periodo de amostragem
frequencia = aux/T; % definindo o eixo de frequências
S = fft(s)/normal; % TF do sinal "s", normalizada
fc = ceil(normal/2); % frequência de corte
S = S(1:fc);

figure();
plot(frequencia(1:fc), abs(S));xlabel('Frequência(Hz)');ylabel('Amplitude'); 
end

