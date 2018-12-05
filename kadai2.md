課題２　階調数と疑似輪郭<br>
２階調，４階調，８階調の画像を生成する。<br>
以下にプログラムを示す。<br>

clear; % 変数のオールクリア

ORG=imread('Lenna.png'); % 原画像の入力<br>
ORG = rgb2gray(ORG); colormap(gray); colorbar;<br>
imagesc(ORG); axis image; % 画像の表示<br>
pause; % 一時停止<br>

% ２階調画像の生成
IMG = ORG>128;<br>
imagesc(IMG); colormap(gray); colorbar;  axis image;<br>
pause;<br>

% ４階調画像の生成
IMG0 = ORG>64;<br>
IMG1 = ORG>128;<br>
IMG2 = ORG>192;<br>
IMG = IMG0 + IMG1 + IMG2;<br>
imagesc(IMG); colormap(gray); colorbar;  axis image;<br>
pause;<br>

% ８階調画像の作成
IMG0 = ORG>32;<br>
IMG1 = ORG>64;<br>
IMG2 = ORG>96;<br>
IMG3 = ORG>128;<br>
IMG4 = ORG>160;<br>
IMG5 = ORG>192;<br>
IMG6 = ORG>224;<br>
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5+ IMG6;<br>
imagesc(IMG); colormap(gray); colorbar;  axis image;<br>
pause;<br>

以下に実行結果である原画像、2階調画像、4階調画像、8階調画像を示す。

![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai2/Image0.png)<br>  
　　　　　　　　　　　　　　図１　原画像<br>

![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai2/Image2.png)<br>
　　　　　　　　　　　　　図２　2階調画像<br>

![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai2/Image4.png)<br>
　　　　　　　　　　　　　図３　4階調画像<br>

![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai2/Image8.png)<br>
　　　　　　　　　　　　　図４　8階調画像<br>
