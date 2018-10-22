#pragma once

#include <memory>
#include <string>
#include <vector>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "glfw_delete.h"
#include "Vertex.h"
#include "Shader.h"

namespace Graphics
{
    typedef std::unique_ptr<GLFWwindow, GLFWDeleter> SmartGLFWwindow;

    class Window
    {
    public:
        Window(int width, int height, const std::string& title);
        ~Window();
        // load the scene into the window
        void load2DScene();
        void run();
        void loadShader(Shader& shader);
    protected:
        static void error_cb(int error, const char* description);
        static void mouse_button_cb(GLFWwindow* window, int button, int action, int mods);
        static void keyboard_cb(GLFWwindow* window, int key, int scancode, int action, int mods);
        void mouseClick(int button, int action, int mods);
        void keyPress(int key, int scancode, int action, int mods);

        void reloadMeshData(VAOArray& vaoArray);

        void draw() const;
        // Window specific data
        float m_width;
        float m_height;
        std::string m_title;
        SmartGLFWwindow m_window;

        // Scene Data
        VAOArray m_triangleArray;
        VAOArray m_triangleFanArray;
        VAOArray m_quadArray;
        VAOArray m_pointArray;
        VAOArray m_lineLoopArray;

        Vertex::Color m_currentColor;

        // shader
        Shader m_shader;
    };
}

