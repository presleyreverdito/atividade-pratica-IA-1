% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que mostra o caminho percorrido em solução do quebra-cabeça.
% A função recebe um nó de busca __node__ e mostra o caminho percorrido.
%
% author: raonifst at gmail dot com

function reconstruct_path( node )
    
    if ~isempty(node),	       %se nó diferente de vazio
        if isempty(node.Prev),	%node.prev = nós vizinhos
            show(node.State);	%mostra o estado do nó atual
        else
            reconstruct_path(node.Prev);
            show(node.State);
        end
    end
end

