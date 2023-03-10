cmake_minimum_required(VERSION 3.24)
project(draft)

include(FetchContent)
FetchContent_Declare(
        glfw
        GIT_REPOSITORY https://github.com/glfw/glfw.git
        GIT_TAG 3.3.8
)
FetchContent_Declare(
        glew
        GIT_REPOSITORY https://github.com/Perlmint/glew-cmake.git
        GIT_TAG glew-cmake-2.2.0
)
FetchContent_Declare(
        glm
        GIT_REPOSITORY https://github.com/g-truc/glm.git
        GIT_TAG 0.9.9.8
)
FetchContent_Declare(
        imgui
        GIT_REPOSITORY https://github.com/ocornut/imgui.git
        GIT_TAG v1.89.2
)
FetchContent_Declare(
        stb
        GIT_REPOSITORY https://github.com/nothings/stb.git
)
FetchContent_MakeAvailable(glfw glew glm imgui stb)

set(DRAFT_LIBS glfw libglew_static glm)
set(CMAKE_CXX_STANDARD 23)

add_subdirectory(src)