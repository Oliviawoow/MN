function A_k = task1(image, k)
  %TODO
  A = double(imread(image));
  % aplicam DVS
  [U S V] = svd(A);
  V = V';
  % compresia imaginii
  A_k = U(:, 1 : k) * S(1 : k, 1 : k) * V(1 : k, :);
end