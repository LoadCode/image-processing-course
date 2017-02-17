function [gaussian_gradient] = generate_gaussian(width, height, sigma, bx, by, band_reject)
    % Example:  frame = generate_gaussian(1920,1080,0.3, 0, -5, true);  % Band-reject
    %           frame = generate_gaussian(1920,1080,0.3, 0, -5, false); % Band-pass
    %           imshow(frame)
    
    
    % Defines the grid
    N = 10;
    x = linspace(-N, N, width);
    y = x(1:height);
    [X, Y] = meshgrid(x, y);
    
    % Compute the gaussian function
    %c = 1;
    c  = sigma;
    c2 = c^2;
    a  = (1/(c*sqrt(2*pi)));
    gauss_bell = a*exp((-((X-bx).^2/2)-((Y-by).^2/2))/(2*c2));
    
    %surf(X,Y,gauss_bell);
    %shading interp
    %axis tight
    
    % Maps the surf values in the range 0 - 255
    gauss_bell = gauss_bell .* 100;
    max_val = max(max(gauss_bell));
    disp(sprintf('max_val = %d', max_val))
    gauss_bell = (gauss_bell./max_val)*255; % normalize the signal in the range 0-255
    
    % invert the values if we want a band_reject filter-like signal
    if band_reject == true
        gauss_bell = 255 - gauss_bell;
    endif
    
    % Conver to uint8 format
    gaussian_gradient = uint8(round(gauss_bell));

endfunction