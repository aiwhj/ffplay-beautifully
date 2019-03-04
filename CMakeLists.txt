cmake_minimum_required (VERSION 2.8)

set(FFMPEG_HOME_DIR /usr/local/Cellar/ffmpeg/4.1.1)
set(SDL2_HOME_DIR /usr/local/Cellar/sdl2/2.0.9)
set(OPENCV_HOME_DIR /usr/local/Cellar/opencv@3/3.4.5)

project (ffplay)

include_directories(${FFMPEG_HOME_DIR}/include ${SDL2_HOME_DIR}/include ${OPENCV_HOME_DIR}/include)
link_directories(${FFMPEG_HOME_DIR}/lib ${SDL2_HOME_DIR}/lib ${OPENCV_HOME_DIR}/lib)

link_libraries(avcodec avfilter avformat avresample avdevice avutil postproc swresample swscale SDL2 SDL2main opencv_stitching opencv_superres opencv_videostab opencv_aruco opencv_bgsegm opencv_bioinspired opencv_ccalib opencv_dnn_objdetect opencv_dpm opencv_face opencv_photo opencv_fuzzy opencv_hfs opencv_img_hash opencv_line_descriptor opencv_optflow opencv_reg opencv_rgbd opencv_saliency opencv_stereo opencv_structured_light opencv_phase_unwrapping opencv_surface_matching opencv_tracking opencv_datasets opencv_dnn opencv_plot opencv_xfeatures2d opencv_shape opencv_video opencv_ml opencv_ximgproc opencv_calib3d opencv_features2d opencv_highgui opencv_videoio opencv_flann opencv_xobjdetect opencv_imgcodecs opencv_objdetect opencv_xphoto opencv_imgproc opencv_core)

add_executable(ffplay ffplay.cpp cmdutils.cpp)

