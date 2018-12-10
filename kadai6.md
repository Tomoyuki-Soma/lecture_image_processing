課題６　画像の二値化
画像を二値化せよ。
以下にプログラムを示す。


clear; % 変数のオールクリア
ORG=imread('百合子.jpg'); % 原画像の入力
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
pause; % 一時停止


IMG = ORG>128; % 128による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
pause;

IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

以下に実行結果である白黒濃淡画像、128による二値化画像、ディザ法による二値化画像を示す。
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image0.png)<br>  
　　　　　　　　　　　　　　　　　　　　　　図１　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image1.png)<br>  
　　　　　　　　　　　　　　　　　　　　図２　128による二値化画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image2.png)<br>  
　　　　　　　　　　　　　　　　　　　図３　ディザ法による二値化画像<br>
