課題６　画像の二値化<br>
画像を二値化せよ。<br>
以下にプログラムを示す。<br>
<br>
clear; % 変数のオールクリア<br>
ORG=imread('百合子.jpg'); % 原画像の入力<br>
ORG = rgb2gray(ORG);<br>
imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause; % 一時停止<br>
<br>
IMG = ORG>128; % 128による二値化<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
<br>
IMG = dither(ORG); % ディザ法による二値化<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>
<br>
原画像を図１に示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/百合子.jpg)<br> 
　　　　　　　　　　　　　　　　　　　　　　　図１　原画像<br>
                       <br>
以下に実行結果である白黒濃淡画像、128による二値化画像、ディザ法による二値化画像を示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image0.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　図２　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image1.png)<br>  
　　　　　　　　　　　　　　　　　　　図３　128ディザ法による二値化画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai6/Image2.png)<br>  
　　　　　　　　　　　　　　　　　　　図４　ディザ法による二値化画像<br>
<br>
図３より、０から255の値の半分である128を閾値に設定して二値化したところ、白黒濃淡画像を二値化したことがわかり、十分に再現していると思われる。<br>
また、ディザ法は画像を画素毎にディザパターンの画素数と比較し、その大小で白黒を決める方法で、画素毎に値を決めていくため、ディザ法の方が再現度が高い。これは図３と図４からもわかる。<br>
さらに図４よりディザ法では濃淡も再現されている。これはディザパターンを用いて画素毎に値を決定しているため、元の画像で同じ濃度でも二値化した後の値が異なり、人がそれらの画素をまとめて認識することで白黒の割合に応じて濃淡が表れているように見えるためだと考えられる。
