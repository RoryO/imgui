mkdir -p Debug
mkdir -p Release

cc -g -I .. -I ../.. -o Debug/example_glfw_vulkan main.cpp ../imgui_impl_glfw.cpp ../imgui_impl_vulkan.cpp ../../imgui*.cpp -lm -lglfw -lstdc++ -lvulkan -lrt
# cc -O3 -I .. -I ../.. -o Release/example_x11_vulkan main.cpp ../imgui_impl_x11.cpp ../imgui_impl_vulkan.cpp ../../imgui*.cpp -lm -lxcb -lxcb-keysyms -lxcb-xfixes -lxcb-xkb -lxcb-cursor -lstdc++ -lvulkan -lrt
