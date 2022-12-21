function kernel = gaussian(dim, sigma)
    sd = sigma;
    size = (dim - 1)/2;
    [x,y] = meshgrid(-size:size,-size:size);

    exp_comp = -(x.^2+y.^2)/(2*sd*sd);
    kernel= exp(exp_comp)/(2*pi*sd*sd);
end