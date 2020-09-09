%% Filtro Passa Baixas FIR

% - Definir a frequência de amostragem - seguindo o teorema de Nyquist que
% deve ser pelo menos o dobro da frequência máxima do sinal

% - Definir o sinal

% - Definir a frequência de passagem Fp e a frequência de corte Fs - as
% mesmas devem ser normalizadas em unidades de pi

% wp = (fp/(fs/2))*pi
% ws = (fs/(fs/2))*pi

% calculando a frequência de transição: wt = ws - wp

% frequência de corte intermediária:
% wc = (ws+wp)/2

% filtros FIR podem ser implementados atraves de janelas e existem vários
% tipos:
% vamos usar uma janela de hamming - já tem pré-definida no matlab: janela =
% hamming(tamanho);

% clacular o comprimento do filtro através de uma equação tabelada




