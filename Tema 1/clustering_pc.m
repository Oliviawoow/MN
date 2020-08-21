% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
	% TODO K-Means code 
  %randomizarea primilor centroizi
    centroids = zeros (NC, size (points, 2)); 
    random_index = randperm (size (points, 1));
    centroids = points (random_index (1:NC), :);
    %imi initializez variabilele ajutatoare
    nrrows = length (points (:, 1));
    nrfeatures = length (points (1, :));
    assign = ones (1, nrrows);
    %parcurg toate punctele
    for i = 1:250
      cluster_total = zeros (NC, nrfeatures);
      cluster_size = zeros (NC, 1);
      %setez o distanta minima
      for j = 1:nrrows
        distanta_min = realmax;
        assignTo = 0;
        for k = 1:NC
          % calculez distanta euclidiana dintre punct si centroid
          distanta = norm (points (j, :) - centroids (k, :));
          %daca distanta e mai mica decat val minima, le vom schimba
          %punctul apartine clusterului de la pozitia curenta
          if distanta < distanta_min
            distanta_min = distanta;
            assignTo = k;
          endif
        endfor
        %adun punctele care apartin acelui cluster
        %calculam si nr de puncte din acel cluster
        assign (j) = assignTo;
        cluster_total (assignTo, :) += points (j, :);
        cluster_size (assignTo) ++;
      endfor
      for k = 1:NC
        if (cluster_size (k) == 0)
          random_row = round (1 + rand () * (nrrows -1));
          cluster_total(k, :) = points (random_row, :);
          cluster_size (k) = 1;
        endif
      endfor
      %calculam noii centroizi
      new_centers = zeros (NC, nrfeatures);
      for k = 1:NC
        new_centers (k, :) = cluster_total (k, :) / cluster_size (k);
      endfor
      diff = norm (abs (new_centers - centroids));
      if diff < eps
        break
      endif
      centroids = new_centers;
    endfor
end
