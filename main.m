function main()
    g_kernel = gaussian(3, 0.6);
    m_kernel = mean(3);
    
    out1 = uint8(convolve("rice.png", g_kernel));
    out2 = uint8(convolve("rice.png", m_kernel));
    
    subplot(1, 3, 1);
    imshow("rice.png");
    title("Original Image");
    subplot(1, 3, 2);
    imshow(out1);
    title("Gaussian Blur");
    subplot(1, 3, 3);
    imshow(out2);
    title("Mean filtering");
end