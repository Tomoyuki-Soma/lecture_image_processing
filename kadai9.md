課題９ メディアンフィルタと先鋭化<br>
メディアンフィルターを適用し，ノイズ除去を体験せよ。<br>以下にプログラムを示す。<br>

ORG = imread('杏奈５.jpg'); % 画像の読み込み<br>
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換<br>
imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付<br>
imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計<br>
IMG = filter2(f,IMG,'same'); % フィルタの適用<br>
imagesc(IMG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
<br>

原画像を図１に示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai9/杏奈５.jpg)<br> 
　　　　　　　　　　　　　　　　図１　原画像<br>
<br>
以下に実行結果である白黒濃淡画像、ノイズを添付した画像、、平滑化フィルタを適用した画像、メディアンフィルタを適用した画像、設計したフィルタを適用した画像を示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai9/Image0.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　図２　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai9/Image1.png)<br> 
　　　　　　　　　　　　　　　　　　　　図３　ノイズを添付した画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai9/Image2.png)<br> 
　　　　　　　　　　　　　　　　　　　図４　平滑化フィルタを適用した画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai9/Image3.png)<br> 
　　　　　　　　　　　　　　　　　　図５　メディアンフィルタを適用した画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai9/Image4.png)<br> 
　　　　　　　　　　　　　　　　　　　図５　設計したフィルタを適用した画像<br>

平滑化フィルタは着目画素の周囲の平均値を取るもので、図４を見ると、ぼやけており、ノイズも残っていることがわかる。<br>
メディアンフィルタは着目画素の周囲との中央値を取るもので、図５を見ると、ぼやけることもなく、ノイズも除去できていることがわかる。<br>
また、今回設計したフィルタは鮮鋭化と呼ばれるもので、これを適用すると、輪郭部が強調されることがわかった。<br>
