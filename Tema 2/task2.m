function task2()
   %TODO
   image_path="in/images/image3.gif";
   A = double(imread (image_path));
   [U S V] = svd(A);
   [m n] = size(A);
   s2 = min (rows(S), columns(S));
   figure(1);
   plot(diag(S));
   vector_S = diag(S);
   for k = 1:200
    x = min(k, length(vector_S));
    suma1 = sum(vector_S(1:x));
    raport(k) = suma1 / sum(vector_S);
   endfor
  figure(2);
  plot(raport);
  x = length(diag(S));
  for k = 1:x
    suma = 0;
    s = S(1:k, 1:k);
    u = U(:, 1:k);
    v = V(:, 1:k);
    A_k = u * s * v';
    for i = 1:m
      for j = 1:n
    dist = (A(i, j) - A_k(i, j)).^2;
    suma += dist;
  endfor
  endfor
    rez(k) = suma / (m * n);
  endfor
  figure(3);  
  plot(rez);
  for k = 1:200
    graf4(k) = (m * k + n * k + k) / (m * n);
  endfor
  figure(4);
  plot(graf4);
end