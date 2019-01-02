課題３　閾値処理<br>
閾値を4パターン設定し,閾値処理した画像を示せ。<br>
以下にプログラムを示す。<br>

clear; % 変数のオールクリア<br>

ORG=imread('ロコ.jpg'); % 原画像の入力<br>
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換<br>

imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>

IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換<br>
imagesc(IMG); colormap(gray); colorbar;<br>
pause;<br>

IMG = ORG > 96; % 輝度値が96以上の画素を1，その他を0に変換<br>
imagesc(IMG); colormap(gray); colorbar;<br>
pause;<br>

IMG = ORG > 128; % 輝度値が128以上の画素を1，その他を0に変換<br>
imagesc(IMG); colormap(gray); colorbar;<br>
pause;<br>

IMG = ORG > 192; % 輝度値が192以上の画素を1，その他を0に変換<br>
imagesc(IMG); colormap(gray); colorbar;<br>

原画像を図１に示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai3/ロコ.jpg)<br> 
　　　　　　　　　　図１　原画像<br>
<br>
以下に実行結果である白黒濃淡画像、輝度値ごとの画像を示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai3/Image0.jpg)<br>  
　　　　　　　　　　  　図２　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai3/Image1.jpg)<br>  
　　　　　　　　　　　図３　輝度値64以上の画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai3/Image2.jpg)<br>  
　　　　　　　　　　　図４　輝度値96以上の画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai3/Image3.jpg)<br>  
　　　　　　　　　　　図５　輝度値128以上の画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai3/Image4.jpg)<br>  
　　　　　　　　　　　図６　輝度値192以上の画像<br>
<br>

これらの結果より閾値が大きくなるにつれて黒い部分が増えていることが分かる。
