% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa o modelo de transição do
% quebra-cabeça de oito peças.
% A função recebe uma matriz __M__ que representa um estado do jogo 
% e uma peça __p_value__ a ser movimentada e devolve uma nova matriz 
% __nM__ com o estado do jogo após a movimentação.
%
% Uma execução da função para 
%
% S = [4 1 3; 9 2 5; 7 8 6];
% p_value = 2;
%
% por exemplo, devolve o estado:
%
% [4 1 3; 2 9 5; 7 8 6]; 
%
% author: raonifst at gmail dot com


function [ nM ] = do_move( M, p_value )

	blank_value = 9;		%o valor 9 representa o espaço em branco
	p = find(M == p_value);		%find() procura o p_value na matriz M e retorna o valor referente a posição
	blank_p = find(M == blank_value);	%blank_p recebe o valor referente a posição de blank_value, ou seja, 9.


	nM = M;		%A matriz nM recebe M
	nM(p) = M(blank_p);	%O elemento da posição p_value na matriz nM e trocado com elemento da posição blank_p...
	nM(blank_p) = M(p);	%...agora o inverso


end

