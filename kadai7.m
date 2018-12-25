課題7　ダイナミックレンジの拡大<br>
画素のダイナミックレンジを０から２５５にせよ． <br>

<br>
ORG = imread('杏奈４.jpg'); % 画像の読み込み<br>
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換<br>
imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
imhist(ORG); % 濃度ヒストグラムを生成、表示<br>
pause;<br>
ORG = double(ORG);<br>
mn = min(ORG(:)); % 濃度値の最小値を算出<br>
mx = max(ORG(:)); % 濃度値の最大値を算出<br>
ORG = (ORG-mn)/(mx-mn)*255;<br>
imagesc(ORG); colormap(gray); colorbar; % 画像の表示<br>
pause;<br>
ORG = uint8(ORG); % この行について考察せよ<br>
imhist(ORG); % 濃度ヒストグラムを生成、表示<br>

原画像を図１に示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai7/杏奈４.jpg)<br> 
　　　　　　　　　　　　　　　　　　　　　　図１　原画像<br>
                     <br>
以下に実行結果である白黒濃淡画像、濃度ヒストグラム、ダイナミックレンジ拡大後の画像、ダイナミックレンジ拡大後の濃度ヒストグラムを示す。
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai7/Image0.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　図２　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai7/Image1.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　図３　図２の濃度ヒストグラム<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai7/Image2.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　図４　ダイナミックレンジ拡大後の画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai7/Image3.png)<br> 
　　　　　　　　　　　　　　　　　　　　　　図５　図４の濃度ヒストグラム<br>

この結果、図３と図５を比較すると成分が全くない濃度値がいくつか表れていることが分かる。これは濃度値を計算する前に画像を小数型であるdouble型にしており、
その後、ORG = unit8(ORG);で8ビットの符号無しの整数にしているためであると考えられる。
