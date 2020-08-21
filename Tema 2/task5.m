function task5()
  %TODO
  image="in/images/image3.gif";
  A = double(imread(image));
  [m n] = size(A);
  for i = 1:m
    u(i) = mean(A(i, :));
    A(i, :) -= u(i);
  endfor
  A_t = A';
  Z = A_t / sqrt(n - 1);
  [U S V] = svd(Z);
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
    W(:, 1:k) = V(:, 1:k);
    Y = (W') * A;
    A_k = W * Y;
    for i = 1:m
      A_k(i, :) += u(i);
    endfor
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
    com(k) = (2 * k + 1) / n;
  endfor  
  figure(4);
  plot(com);
end