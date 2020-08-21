function [m A eigenfaces pr_img] = eigenface_core(database_path)
  %TODO
  for i = 1:10
    image_path = [database_path '/' num2str(i) '.jpg'];
    image = double(rgb2gray(imread(image_path)));
    image = image';
    v = image(:);
    T(:, i) = v;
    % Asta e afisarea :
    % figure(i);
    % imshow(uint8(imagine));
  endfor
  for i = 1:rows (T)
   m(i) = mean (T(i, :));
   A(i, :) = T(i, :) - m(i);
  endfor
  B = (A') * A;
  [V S] = eig(B);
  s = diag(S);
  indx = find (s > 1);
  for i = 1 : length (indx)
      v = V(:, indx(i));
      v_f(:, i) = v;
  endfor
  eigenfaces = A * v_f;
  pr_img = (eigenfaces') * A;
end