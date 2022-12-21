function conv = convolve(image, kernel)
    img = imread(image);
    [M,N] = size(img);
    [m,n] = size(kernel);
    
    pad_level = [(m-1)/2, (n-1)/2];
    
    padded_img = padarray(img, pad_level);
    conv = zeros(M-m+1, N-n+1);
    
    for i = 1:size(conv, 1)
        for j = 1:size(conv, 2)
            for k = 1:m
                for l = 1:n
                    conv(i, j) = conv(i, j) + padded_img(i + k - 1, j + l - 1) * kernel(k, l);
                end
            end
        end
    end
    
    
end