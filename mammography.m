im=imread('mdb001.pgm');
im=imresize(im,[256 256]);
imshow(im);
figure;
X=double(im);
n=4;
% X = zeros(600,2); 
% 
% X(1:200,:) = normrnd(0,1,200,2); 
% X(201:400,:) = normrnd(0,2,200,2); 
% X(401:600,:) = normrnd(0,3,200,2); 
[W,M,V,L] = EM_GM(X,n,[],[],1,[]);
 
for(i=1:1:n)
a=V(:,:,i);
a=uint8(a);
a=im2bw(a);
a=double(a);
im1=X.*a;
im1=uint8(im1);
 
subplot(2,2,i)
imshow(im1)
end