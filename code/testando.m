State = [4 1 3; 9 2 5; 7 8 6];
moves = legal_moves(State);
for i=1:size(moves, 1),
	N = do_move(State, moves(i))
end
