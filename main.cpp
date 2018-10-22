#include "Headers/Window.h"
#include "Headers/Shader.h"

int main(void)
{
    Graphics::Window window(680, 480, "Exercise 1");

    Graphics::Shader windowShader;
    windowShader.compile("/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/vertexShader_glsl.txt", "/Users/gustavosanchez/Documents/Sheridan/Graphics/Assignment1/fragShader_glsl.txt");

//    window.loadShader(windowShader);
//    window.run();

    glfwTerminate();
    return 0;
}
