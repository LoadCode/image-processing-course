function [gradient_mat] = generate_gradient(width, height)
%% Returns a matrix of uint8 elements (represent a gradient in gray scale)

disp('Generating a gradient image')
disp(sprintf('width = %d and height = %d\n', width, height))

horizontal   = uint8(round(linspace(0,255,width)));
gradient_mat = zeros(height, width);

for n = 1:height
  gradient_mat(n,:) = horizontal;
endfor

gradient_mat = uint8(gradient_mat);

end