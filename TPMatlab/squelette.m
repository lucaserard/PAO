%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Squelette de programme pour tp de reco de formes 	%%%%%
%%%%%   Cl�ment Chatelain          janvier 2013		%%%%%
%%%%%   D�partement ASI - INSA de Rouen 		%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
clear all;
K=6;
Xapp=[];
%%%%%%%%%%%%%%%%%%%% apprentissage %%%%%%%%%%%%%%%%%%%%%%%%%
im = imread('app.tif'); % lecture fichier image d'apprentissage
coordImages = extractionImages(im); 
nbImageBaseApp = length(coordImages);
sprintf('APPRENTISSAGE detection images OK : %d images detectees\n', nbImageBaseApp);

for (iImage=1 : nbImageBaseApp)
    iImage;
    % localisation et extraction des imagettes
    largeur = coordImages(iImage, 2) - coordImages(iImage, 1) - 2;
    hauteur = coordImages(iImage, 4) - coordImages(iImage, 3) - 2;
    x0 = coordImages(iImage, 1);
    y0 = coordImages(iImage, 3);
    imageChiffre = subimage(im, largeur, hauteur, x0, y0);
  
    % crop (supprimer les bords blancs)
    imageChiffreCroppee = crop(imageChiffre);    
    imagesc(imageChiffreCroppee); %afficher les imagettes de chiffres    
    
    %%%%%% ICI c'est � vous de Jouer !!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % extraire des caractéristiques ...
    d = extraitProfils(imageChiffreCroppee);
    
    Xapp=[Xapp;d];
    
    
    % faire un mod�le ...
    % le sauvegarder ...
    
    % Astuce : la classe de l'image courante est donnee par : iClasse = fix((iImage-1)/20)
    sprintf('classe de l image %d : %d\n', iImage, fix((iImage-1)/20))
    
    
    %%%%%%%%%%%%%%%%%%%%%%
end
%[YPeval, MatDist]=kppv(Xeval,Xapp,Yapp,K,[]);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% decision %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear all;
imTest = imread('test.tif'); % lecture fichier image test
coordImagesTest = extractionImages(imTest);
length(coordImagesTest)
nbImageBaseTest = length(coordImagesTest);

for (iImage=1 : nbImageBaseTest)
    largeur = coordImagesTest(iImage, 2) - coordImagesTest(iImage, 1) - 2;
    hauteur = coordImagesTest(iImage, 4) - coordImagesTest(iImage, 3) - 2;
    
    % extraction image
    imageChiffre = subimage(imTest, largeur, hauteur, coordImagesTest(iImage, 1), coordImagesTest(iImage, 3));
    
    % crop
    imageChiffreCroppee = crop(imageChiffre);    
    imagesc(imageChiffreCroppee); %afficher les imagettes de chiffres
    
    %%%%%% ICI c'est � vous de Jouer !!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % appliquer le mod�le sauvegard� sur les chiffres de l'image de test ...
    
    
    
    %%%%%%%%%%%%%%%%%%%%%%
end

%%%%%%%%% Calcul des performances %%%%%%%%
