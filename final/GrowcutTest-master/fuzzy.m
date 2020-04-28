
image = imread('mdb001.pgm');
[linha, coluna] = size(image);

Nx = [-1, -1, 1, 0, 1, 1, -1,  0]; 
Ny = [-1, 0, -1, 1,  1, 0, 1, -1];

maximo = 0;
alpha = 0.1; %parâmetro de espalhamento do numero fuzzy
W = 3; %tamanho da vizinhança
T = 0.1; %threshold
matriz_pertinencia = zeros(linha, coluna);
for x = 2:(linha - 1)
	for y = 2:(coluna - 1)
		for k = 1:((W^2) - 1)
			
			maximo = maximo + max(0, (1 - image(x + Nx(k), y + Ny(k))/alpha));
          
			
		end
		
		matriz_pertinencia(x, y) = (maximo - 1)/((W^2) - 1);
		
		if(matriz_pertinencia(x, y) > T)
			
			matriz_pertinencia(x, y) = 1;
			
		else
			
			matriz_pertinencia(x, y) = 0;
			
		end
		
		maximo = 0;
		
	end
end

imshow(matriz_pertinencia);
