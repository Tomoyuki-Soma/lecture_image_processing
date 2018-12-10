課題６　画像の二値化<br>
画像を二値化せよ。<br>
以下にプログラムを示す。<br>


clear; % 変数のオールクリア<br>
ORG=imread('百合子.jpg'); % 原画像の入力<br>
ORG = rgb2gray(ORG);<br>
imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause; % 一時停止<br>


IMG = ORG>128; % 128による二値化<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>

IMG = dither(ORG); % ディザ法による二値化<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>

以下に実行結果である白黒濃淡画像、128による二値化画像、ディザ法による二値化画像を示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image0.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　図１　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image1.png)<br>  
　　　　　　　　　　　　　　　　　　　　図２　128による二値化画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image2.png)<br>  
　　　　　　　　　　　　　　　　　　　図３　ディザ法による二値化画像<br>
