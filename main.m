function main()
    kernel = gaussian(3, 0.9);
    out = uint8(convolve("pout.tif", kernel));
    subplot(1, 2, 1);
    imshow("pout.tif");
    subplot(1, 2, 2);
    imshow(out);
end