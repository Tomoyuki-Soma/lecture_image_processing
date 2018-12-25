課題10 画像のエッジ抽出 
エッジ抽出を体験せよ。<br>以下にプログラムを示す。<br>

ORG = imread('杏奈６.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); %カラーからグレイへの変換
imagesc(ORG); colormap('gray'); colorbar;% 画像表示
pause; % 一時停止

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % 一時停止

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % 一時停止

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
pause; % 一時停止

原画像を図１に示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai10/杏奈６.jpg)<br> 
　　　　　　　　　　　　　　　　図１　原画像<br>
<br>
以下に実行結果である白黒濃淡画像、プレウィット法でエッジ抽出した画像、ソベル法でエッジ抽出した画像、キャニー法でエッジ抽出した画像を示す。<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai10/杏奈６.jpg)<br> 
　　　　　　　　　　　　　　　　図２　白黒濃淡画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai10/杏奈６.jpg)<br> 
　　　　　　　　　　　　図３　プレウィット法でエッジ抽出した画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai10/杏奈６.jpg)<br> 
　　　　　　　　　　　　　　図４　ソベル法でエッジ抽出した画像<br>
![原画像](https://github.com/Tomoyuki-Soma/lecture_image_processing/blob/master/kadai10/杏奈６.jpg)<br> 
　　　　　　　　　　　　　　図５　キャニー法でエッジ抽出した画像<br>
<br>
プレウィット法は、注目しているものの輪郭を抽出していることがわかる。<br>
ソベル法は、プレウィット法では抽出していなかった細かい部分の輪郭まで抽出できる。しかし、ソベル法はノイズの影響も大きくなってしまうことが分かった。<br>
キャニー法は、図５を見ても分かるようにとても感度が良いエッジ抽出である。この方法は一度画像を平滑化してからエッジ抽出を行うため、ノイズが少なくなる。<br>
これらより注目しているものの輪郭を大まかに抽出するならプレウィット法、ソベル法をノイズの量、エッジの検出感度によって使い分けることで対応できると
考えられる。また、キャニー法はきれいに抽出されており、正確性を求められるときなどに利用されると考えられる。<br>
