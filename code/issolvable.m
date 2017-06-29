% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Esse algoritmo verifica se a matriz __State__ possui uma soução
% Caso exista retorna true, caso contrario retorna false
% %Algoritmo feito em equipe por Paulo Vítor Monteiro Viana(git: paulo9mv) e Presley Demuner Reverdito
function [saida] = issolvable (State)
     dist=0;
     State= State' ;
     for i=1:8
        dist=dist+size((find(find(State<i)>find(State==i))),1);
     end

     if(mod(dist,2)~=0)
       saida=false;
      else
        saida=true;
      end
  end
