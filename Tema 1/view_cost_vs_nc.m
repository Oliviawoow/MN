function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot.
 load (file_points, 'points'); 
  for i = 1:10
    centroids = clustering_pc(points, i);
    cost = compute_cost_pc(points, centroids);
    v(i) = cost;
  endfor
  plot (v);
end

