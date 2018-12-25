課題８ ラベリング<br>
二値化された画像の連結成分にラベルをつけよ．<br>以下にプログラムを示す。<br>

ORG = imread('杏奈３.png'); % 画像の読み込み<br>
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換<br>
imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
IMG = ORG > 128; % 閾値128で二値化<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
IMG = bwlabeln(IMG);<br>
imagesc(IMG); colormap(jet); colorbar; % 画像の表示<br>
pause;<br>
<br>
原画像を図１に示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai8/杏奈３.png)<br> 
　　　　　　　　　　　　　　　　　　図１　原画像<br>
<br>
以下に実行結果である白黒濃淡画像、閾値128で2値化した画像、ラベリングした画像を示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai8/Image0.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　　図２　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai8/Image0.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　　図３　閾値128で2値化した画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai8/Image0.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　　図４　図３をラベリングした画像<br>
これよりIMG = ORG > 128; で閾値を輝度値128に設定し、2値化していることがわかり、IMG = bwlabeln(IMG);でラベリングしていることが分かった。<br>
また、図３は多くのまとまった連結成分によって成り立っていることがわかる。<br>
