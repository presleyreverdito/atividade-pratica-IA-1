% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Script Octave/MATLAB que deve ser utilizado para testar a implementação.
%
% author: raonifst at gmail dot com

clear
clc

% Utilizado para comparar objetos - NAO APAGUE! %
global id;
id = intmin;
% %

state = astar([4 1 3; 9 2 5; 7 8 6], @hamming);
issolvable([4 1 3; 9 2 5; 7 8 6])
issolvable([1,2,3; 4,5,6; 8,7,9])

%crie mais testes aqui
