% reads cluster count and points from input files 
%file_params="cls/cluster_2.param";
%file_points="cls/cluster_2.points";
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	NC = 0;
	points = [];

	% TODO read NC
  NC = load (file_params);
	% TODO read points
  %!!pe local trebuie sa pun 1 in loc de 0, iar pe vmchecker nu
  points = dlmread (file_points, ' ', 5, 0);
end

