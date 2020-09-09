close all; clear; clc; %Fecha figuras; limpa workspace; limpa a Command Window

%% Princípios de Comunicação - 2020.1 - Prof. Daniel Benevides

%       Trabalho de simulação - Modulação em Amplitude - 11/09/2020
%       Ângela Ferreira Magalhães - 378981



%% ==================== DEFINIÇÕES GERAIS ==================== 

Fs = 1000000;       % frequencia de amostragem em 1MHz
T = 1/Fs;           % periodo
t = (0:T:2);        % vetor de tempo
Fm = 50;            % frequencia do sinal em Hz
Fc = 20000;         % frequencia da portadora 20KHz
Am = 0.8;           % amplitude do sinal de mensagem
Ac = 1;             % amplitude da onda portadora


%---SINAL MODULANTE:
mt = Am*sin(2*pi*Fm*t);

%---ONDA PORTADORA:
c = sin(2*pi*Fc*t);


%% ==================== MODULAÇÃO DSB-SC ====================
s_moduladoDSB = mt.*c; %MODULANDO

et_DSB = s_moduladoDSB.*c; %DEMODULANDO: a saida do multiplicador eh o sinal
% e(t) que será aplicado ao filtro passa-baixas para eliminar as
% componentes indesejadas

[B, A] = butter(5, [0.5/pi, 1/pi]); % (ordem do filtro, frequencia de corte normalizada)
s_filtrado = filter(B, A, et_DSB);

%---PLOTS:

% 1. Domínio do TEMPO
%subplot(3, 1, 1);plot(t, c);xlabel('t(s)');title('Portadora');
%subplot(3, 1, 2);plot(t, mt);xlabel('t(s)');title('Sinal Modulante');
%subplot(3, 1, 3);plot(t, s_moduladoDSB);xlabel('t(s)');title('Sinal Modulado');
%subplot(3, 1, 3);plot(t, s_demodulado);xlabel('t(s)');title('Sinal Demodulado');

% 2. Domínio da FREQUÊNCIA
%FT(c, Fs);title('TF da Portadora');
%FT(mt, Fs);title('TF do Sinal Modulante');
%FT(s_moduladoDSB, Fs);title('TF do Sinal Modulado');
FT(et_DSB, Fs);title('TF do Sinal Demodulado');
%FT(s_recuperado, Fs);title('TF do Sinal Recuperado');



%% ==================== MODULAÇÃO AM ====================
s_moduladoAM = (1 + mt).*c;


%---PLOTS:

% 1. Domínio do TEMPO

% figure;
% plot(t, c);
% title('Portadora');
% xlabel('t(s)');
% 
% figure;
% plot(t, mt);
% title('Sinal de Mensagem');
% xlabel('t(s)');
% 
% figure;
% plot(t, s_moduladoAM);
% title('Sinal Modulado');
% xlabel('t(s)');

% 2. Domínio da FREQUÊNCIA

% FT(c, Fs);
% title('FT da Portadora');
% 
% FT(mt, Fs);
% title('FT do Sinal de Mensagem');
% 
% FT(s_moduladoAM, Fs);
% title('FT do Sinal AM');

%% Modulação SSB-SC - 09/09

%% Modulação QAM



%% =============== DEMODULAÇÃO DSB-SC ===============
% ---SINAL DEMODULADO---:

%s_recuperado = filter(h, 1, et_DSB); % filtro PB ideal com largura de banda de 150 Hz
