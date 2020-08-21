function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  %TODO
  %min = Inf;
  output_img_index = 1;
  image = double(rgb2gray(imread(image_path)));
  image = image';
  image = image(:);
  for i = 1 : rows(image)
    image(i,1)-=m(i);
  endfor
  pr_test_img = (eigenfaces')*image;
  distanta=[];
  for i = 1 : columns(pr_img)
    norma = norm(pr_img(:,i)-pr_test_img(:,1));
    rez(i) = sum (norma);
   endfor
   [min_dist output_img_index] = min(rez);
end