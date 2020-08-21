% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here 
  [NC col]=size(centroids);
  %vector de culori
  v = ['r', 'g', 'b'];
  nrrows = length (points (:, 1));
      for j = 1:nrrows
        distanta_min = realmax;
        assignTo = 0;
        for k = 1:NC
          distanta = norm (points (j, :) - centroids (k, :));
          if distanta < distanta_min
            distanta_min = distanta;
            assignTo = k;
          endif
        endfor
        assign (j) = assignTo;
        %cluster_total (assignTo, :) += points (j, :);
        %cluster_size (assignTo) ++;
      endfor
   for k = 1:NC
        for j = 1:nrrows
          if assign (j) == k
            scatter3 (points (j, 1), points (j, 2), points (j, 3), v(k), 'filled');
            hold on;
          endif
     endfor
   endfor
end

