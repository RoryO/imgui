mkdir -p Debug
mkdir -p Release

cc -g -I .. -I ../.. -I /usr/include/SDL2/ -o Debug/example_sdl_vulkan main.cpp ../imgui_impl_sdl.cpp ../imgui_impl_vulkan.cpp ../../imgui*.cpp -lm -lSDL2 -lstdc++ -lvulkan -lrt
# cc -O3 -I .. -I ../.. -o Release/example_x11_vulkan main.cpp ../imgui_impl_x11.cpp ../imgui_impl_vulkan.cpp ../../imgui*.cpp -lm -lxcb -lxcb-keysyms -lxcb-xfixes -lxcb-xkb -lxcb-cursor -lstdc++ -lvulkan -lrt
