課題５　判別分析法<br>
判別分析法を用いて画像二値化せよ。<br>
以下にプログラムを示す。<br>
<br>
ORG=imread('志保.jpg'); % 原画像の入力<br>
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換<br>
imagesc(ORG); colormap(gray); colorbar;<br>
pause;<br>
<br>
H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納<br>
myu_T = mean(H);<br>
max_val = 0;<br>
max_thres = 1;<br>
for i=1:255<br>
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける<br>
C2 = H(i+1:256);<br>
n1 = sum(C1); %画素数の算出<br>
n2 = sum(C2);<br>
myu1 = mean(C1); %平均値の算出<br>
myu2 = mean(C2);<br>
sigma1 = var(C1); %分散の算出<br>
sigma2 = var(C2);<br>
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出<br>
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出<br>
if max_val<sigma_B/sigma_w<br>
max_val = sigma_B/sigma_w;<br>
max_thres =i;<br>
end;<br>
end;<br>
<br>
IMG = ORG > max_thres;<br>
imagesc(IMG); colormap(gray); colorbar;<br>
pause;<br>
<br>
原画像を図１に示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai5/志保.jpg)<br> 
　　　　　　　　　　　　　　　　図１　原画像<br>
<br>
以下に実行結果である白黒濃淡画像、二値化した画像を示す。
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai5/Image0.png)<br>  
　　　　　　　　　　　　　　　　　　　　　図２　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai5/Image1.png)<br>  
　　　　　　　　　　　　　　　　　　　　　図３　二値化画像<br>
<br>
判別分析法は、ある閾値でクラスを二つに分け、その二つのクラス間分散とそれぞれのクラス内分散の比が最も大きくなるときの閾値を求める方法である。<br>



