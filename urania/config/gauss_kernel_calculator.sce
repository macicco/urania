size=5
m = size; n = size;
FWHM=6
sigma = FWHM/2.35482004503;
[h1, h2] = meshgrid(-(m-1)/2:(m-1)/2, -(n-1)/2:(n-1)/2);
hg = exp(- (h1.^2+h2.^2) / (2*sigma^2));
h = hg ./ sum(hg(:));
h
