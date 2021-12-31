clc,clear

I=imread('C:\Users\MALITHWOX\Desktop\edu windsor\sem 4\automotive sensor\lena.bmp');

%Reference image
ref = edge(I,'canny', 0.1, 1);
figure(6);imshow(ref);

% add noices to the image with different sigma

noiseVector = [0.01,0.05,0.1,0.5,1];
for i=1:5
    Noiced = imnoise(I,'gaussian',0,noiseVector(i));
    figure(1);subplot(2,3,i);imshow(Noiced);
    
    S = edge(Noiced,'sobel');
    figure(2);subplot(2,3,i);imshow(S);
    
    P = edge(Noiced,'Prewitt');
    figure(3);subplot(2,3,i);imshow(P);
    
    L = edge(Noiced,'log');
    figure(4);subplot(2,3,i);imshow(L);
    
    C = edge(Noiced,'canny',[0.1 0.4], 3);
    figure(5);subplot(2,3,i);imshow(C);
end

[M, N] = size(ref);
error = ref - root(i);
MSE = (sum(sum(error .* error))) ./ (M * N);
