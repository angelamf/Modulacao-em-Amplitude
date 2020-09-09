% Calcula a Transformada de Fourier de um sinal e retorna seu gr�fico

function [S,frequencia] = FT(s,fs)

normal= length(s); % vari�vel que vai normalizar o eixo das abscissas, e � do tamanho do sinal
aux = 0:normal-1; % vai de 0 at� o tamanho do sinal -1; serve pra auxiliar a defini��o do eixo das frequ�ncias
T = normal/fs; % periodo de amostragem
frequencia = aux/T; % definindo o eixo de frequ�ncias
S = fft(s)/normal; % TF do sinal "s", normalizada
fc = ceil(normal/2); % frequ�ncia de corte
S = S(1:fc);

figure();
plot(frequencia(1:fc), abs(S));xlabel('Frequ�ncia(Hz)');ylabel('Amplitude'); 
end

