# ffplay-3.2.4
单独编译 ffplay-3.2.4(Ubuntu17.04)<br>
<br>
学习ffmpeg的接口最好的参考代码自然是自带的ffplay，<br>
如果整体研究ffmpeg，工程量太大，先研究其API会比较容易些，<br>
<br>
本工程所需的库文件是通过apt来安装的，不需要依赖ffmpeg工程中本身编译出来的库，<br>
所以ffplay版本选取需要和Ubuntu系统中apt库中的版本一致，<br>
Ubuntu17.04中的相应库版本就是3.2.4，<br>
如果使用更高版本的ffmpeg中带的ffplay.c代码编译会不通过<br>

环境搭建：
Ubuntu17.04<br>
安装依赖包<br>
sudo apt-get install libsdl2-dev libavformat-dev libavcodec-dev libavutil-dev libswscale-dev libswresample-dev libavdevice-dev libavfilter-dev<br>

<br>
其他说明：<br>
该工程的生成步骤：<br>
从官方下载到ffmpeg后主要需要进行如下修改：<br>
1. 要运行./configure 来生成config.h(需要先sudo apt install yasm)<br>
2. 把ffmpeg工程中的文件按本工程参考，复制相应的文件到一个新文件夹中<br>
3. 代码改动很少，主要是把ffplay.c中的#include &lt;SDL.h&gt;改为#include &lt;SDL2/SDL.h&gt;，把#include &lt;SDL_thread.h&gt;改为#include &lt;SDL2/SDL_thread.h&gt;，注释掉cmdutils.c中的#include "libavutil/libm.h"和#include "libavformat/network.h"<br>
4. 把本工程中的Makefile添加进来<br>
