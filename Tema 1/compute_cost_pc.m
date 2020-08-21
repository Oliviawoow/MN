% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
    [NC col]=size(centroids);
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
        cost += distanta_min;
        %assign (j) = assignTo;
        %cluster_total (assignTo, :) += points (j, :);
        %cluster_size (assignTo) ++;
      endfor
end

