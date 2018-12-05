課題４　画像のヒストグラム<br>
画素の濃度ヒストグラムを生成せよ。<br>
以下にプログラムを示す。<br>

clear; % 変数のオールクリア<br>

ORG=imread('ありさ.jpg'); % 原画像の入力<br>
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換<br>
imagesc(ORG); colormap(gray); colorbar;<br>
pause;<br>

imhist(ORG); % ヒストグラムの表示<br>

以下に実行結果である白黒濃淡画像、ヒストグラムを示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai4/Image0.png)<br>  
　　　　　　　　　　　　　図１　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai4/Image.png)<br>  
　　　　　　　　　　　　　図２　ヒストグラム<br>

