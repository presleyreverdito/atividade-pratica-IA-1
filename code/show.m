% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que mostra um estado do jogo na tela.
%
% author: raonifst at gmail dot com
function  show( Grid )

fprintf('\n');

for i=1:size(Grid,1),
    for j=1:size(Grid,2),
        if Grid(i,j) == 9
            fprintf('%4s', ' ');
        else
            fprintf('%4d', Grid(i,j));
        end
        
    end
    fprintf('\n');
end

fprintf('\n');


end

