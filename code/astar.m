% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que deve implementar o algoritmo A-estrela.
% A função deve receber uma matriz __M__ com estado inicial do quebra-cabeça
% o apontador para a função heurística __h__ e devolver um nó de busca __n__
% com o estado objetivo. Para que seja possível reconstruir o caminho percorrido
% até a solução,  cada nó produzido pelo algoritmo de busca deve conter uma
% referência para o nó que o descobriu (i.e., nó visitado no passo anterior).
%
% Para executar o algoritmo para um estado S com heurística de hamming por exemplo pode-ser fazer:
% S = [4 1 3; 9 2 5; 7 8 6];
% node = astar(S, @hamming);
%
% Extra: A variável __error__ deve ser utilizada para identificar jogos que não
% possuem solução.
%
% author: raonifst at gmail dot com
%Algoritmo construido com a ajuda de Paulo Vítor Monteiro Viana(git: paulo9mv)
function [n, error] = astar(M, h)

	error = 0;

	q = PriorityQueue() ;					            %Cria uma fila de prioridades vazia
								                            % Estado objetivo
	O =[1 2 3; 4 5 6; 7 8 9];	 		    %Lembre-se de que seu programa deve para quando um estado objetivo for alcançado.

    n = Node(M, 0);						              % Cria um novo nó __n__ com estado igual a matriz __M__ (estado inicial) e
                                            % custo 0 (zero).
	q.insert(n.f+h(n.State), n);				      % Insere o nó __n__ na fila de prioridades __q__. O custo deste nó
                                            % é igual a n.f+g(n.State). __g__ é um apontador para função heurística
                                            % considerada

  while (~q.isempty())  					          % Laço principal do algoritmo A-estrela - é interrompido quando a fila ficar vazia
		m=q.extractMin();
		error = issolvable(m.State);
		if isequal(error,0),				%Aqui ele verifica se o estado possui uma solução
			fprintf("Nao possui solucao\n")
			break;
		end
    if isequal(O,m.State)
      n=m;
      break
     end
    %m.State
    if ~isempty(m.Prev),
	      if ~isequal(m.State,O),				      % aqui ele testa se O é diferente de m.Prev.State
				  moves = legal_moves(m.State);
          for i=1:size(moves, 1),
            %m = q.extractMin();			      % Remove um nó m com a menor prioridade na fila q
            prox = do_move(m.State, moves(i));
            %m.State
            if ~isequal(m.Prev.State,prox)
              n=Node(prox,m.f+1);
              n.Prev=m;
              %prox
              q.insert(n.f+h(n.State), n);
            end
          end

      end
	     else
          if ~isequal(m.State,O),				      % aqui ele testa se O é diferente de m.Prev.State
				  moves = legal_moves(m.State);
            for i=1:size(moves, 1),
                prox = do_move(m.State, moves(i));


                n = Node(prox, m.f+1);

                n.Prev=m;
                q.insert(n.f+h(n.State), n);

            end



       end



     end


end
