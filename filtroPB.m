%% Filtro Passa Baixas FIR

% - Definir a frequ�ncia de amostragem - seguindo o teorema de Nyquist que
% deve ser pelo menos o dobro da frequ�ncia m�xima do sinal

% - Definir o sinal

% - Definir a frequ�ncia de passagem Fp e a frequ�ncia de corte Fs - as
% mesmas devem ser normalizadas em unidades de pi

% wp = (fp/(fs/2))*pi
% ws = (fs/(fs/2))*pi

% calculando a frequ�ncia de transi��o: wt = ws - wp

% frequ�ncia de corte intermedi�ria:
% wc = (ws+wp)/2

% filtros FIR podem ser implementados atraves de janelas e existem v�rios
% tipos:
% vamos usar uma janela de hamming - j� tem pr�-definida no matlab: janela =
% hamming(tamanho);

% clacular o comprimento do filtro atrav�s de uma equa��o tabelada




