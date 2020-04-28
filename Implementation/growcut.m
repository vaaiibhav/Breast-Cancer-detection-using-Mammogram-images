%  [labels strengths] = growcut(img, labels)




function [l s] = growcut(img, labels)
  
  img = double(img);
  si = size(img);
  sl = size(labels);
  assert(numel(unique(labels))==3,...
         'labels must be comprised of -1, 0, 1');
  assert(all(sl(1:2)==si(1:2)),...
         'labels and image must be the same size');
  
  [l s] = growcutmex(img,labels);
  
