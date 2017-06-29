% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que deve implementar a heurística de manhattan.
% A funçao deve receber uma matriz __State__ representando um estado 
% qualquer do jogo e deve calcular a soma das distâncias (horizontal e 
% vertical) de cada célula deste estado para a posição que ela deveria 
% ocupar no estado objetivo.
%
%
% author: raonifst at gmail dot com

function dist = manhattan(State)

	M=[1,2,3;4,5,6;7,8,9];
	dist = 0;
	for i=1:8
		[Mlinha,Mcoluna] = ind2sub(size(M),find(M==i));
		[Slinha,Scoluna] = ind2sub(size(M),find(State==i));
		dist=dist+abs(Slinha-Mlinha)+abs(Scoluna-Mcoluna);
	end
end

%Algoritmo construido com a ajuda de Paulo Vítor Monteiro Viana(git: paulo9mv)
