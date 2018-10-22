#include "Headers/Window.h"
#include <fstream>
#include <iostream>
#include <string>
#include <sstream>
#include <glm/mat4x4.hpp>
#include <glm/gtc/matrix_transform.hpp>
#define _USE_MATH_DEFINES
#include <math.h>


namespace Graphics
{
    Window::Window(int width, int height, const std::string & title)
    {
        m_currentColor = { 1.0f, 0.0f, 0.0f };

        // initialize glfw
        if (!glfwInit())
        {
            exit(EXIT_FAILURE);
        }

        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
        glfwSetErrorCallback(Window::error_cb);

        m_width = static_cast<float>(width);
        m_height = static_cast<float>(height);
        m_title = title;
        m_window = std::unique_ptr<GLFWwindow, GLFWDeleter>(glfwCreateWindow(width, height, title.c_str(), nullptr, nullptr));


        // have the glfwwindow know about custom window class
        glfwSetWindowUserPointer(m_window.get(), this);
        glfwSetMouseButtonCallback(m_window.get(), Window::mouse_button_cb);
        glfwSetKeyCallback(m_window.get(), Window::keyboard_cb);

        glfwMakeContextCurrent(m_window.get());

        // glew initialize
        static bool s_window_init = false;
        if (!s_window_init)
        {
            s_window_init = true;
            glewExperimental = GL_TRUE;
            if (glewInit() != GLEW_OK)
            {
                std::cout << "GLEW INIT FAILED!" << std::endl;
                exit(EXIT_FAILURE);
            }
        }
    }

    Window::~Window()
    {
    }

    void Window::load2DScene()
    {
        glViewport(0, 0, static_cast<GLsizei>(m_width), static_cast<GLsizei>(m_height));
        glm::mat4 matOrtho = glm::ortho(0.0f, m_width, m_height, 0.0f, -1.0f, 1.0f);
        m_shader.bind();
        m_shader.bindUniform("orthoMatrix", matOrtho);
        m_shader.unbind();

        //***************************************
        //	GROUND
        //
        Vertex v1;
        v1.position.x = 0;
        v1.position.y = m_height;
        v1.position.z = 0;
        // brown
        v1.color.r = 0.87f;
        v1.color.g = 0.72f;
        v1.color.b = 0.52f;

        Vertex v2;
        v2.position.x = m_width;
        v2.position.y = m_height;
        v2.position.z = 0;
        // brown
        v2.color.r = 0.87f;
        v2.color.g = 0.72f;
        v2.color.b = 0.52f;

        Vertex v3;
        v3.position.x = m_width;
        v3.position.y = m_height - 40;
        v3.position.z = 0;
        // green
        v3.color.r = 0.13f;
        v3.color.g = 0.54f;
        v3.color.b = 0.13f;

        Vertex v4;
        v4.position.x = 0;
        v4.position.y = m_height - 40;
        v4.position.z = 0;
        // green
        v4.color.r = 0.13f;
        v4.color.g = 0.54f;
        v4.color.b = 0.13f;


        m_quadArray.m_vertices.push_back(v1);
        m_quadArray.m_vertices.push_back(v2);
        m_quadArray.m_vertices.push_back(v3);
        m_quadArray.m_vertices.push_back(v4);

        //****************************************
        // HOUSE BODY
        //
        Vertex v1_b;
        v1_b.position.x = 100;
        v1_b.position.y = m_height - 40;
        v1_b.position.z = 0;
        // brown
        v1_b.color.r = 0.52f;
        v1_b.color.g = 0.80f;
        v1_b.color.b = 1.0f;

        Vertex v2_b;
        v2_b.position.x = 200;
        v2_b.position.y = m_height - 40;
        v2_b.position.z = 0;
        // brown
        v2_b.color.r = 0.52f;
        v2_b.color.g = .80f;
        v2_b.color.b = 1.0f;

        Vertex v3_b;
        v3_b.position.x = 200;
        v3_b.position.y = m_height - 140;
        v3_b.position.z = 0;
        // green
        v3_b.color.r = 0.52f;
        v3_b.color.g = 0.80f;
        v3_b.color.b = 1.0f;

        Vertex v4_b;
        v4_b.position.x = 100;
        v4_b.position.y = m_height - 140;
        v4_b.position.z = 0;
        // green
        v4_b.color.r = 0.52f;
        v4_b.color.g = 0.8f;
        v4_b.color.b = 1.0f;

        m_quadArray.m_vertices.push_back(v1_b);
        m_quadArray.m_vertices.push_back(v2_b);
        m_quadArray.m_vertices.push_back(v3_b);
        m_quadArray.m_vertices.push_back(v4_b);

        reloadMeshData(m_quadArray);

        //***************************************
        // HOUSE DETAIL
        //
        Vertex v1_ll;
        v1_ll.position.x = 110;
        v1_ll.position.y = m_height - 60;
        v1_ll.position.z = 0;
        // sattlewood
        v1_ll.color.r = 0.54f;
        v1_ll.color.g = 0.27f;
        v1_ll.color.b = 0.07f;

        Vertex v2_ll;
        v2_ll.position.x = 140;
        v2_ll.position.y = m_height - 60;
        v2_ll.position.z = 0;
        // sattlewood
        v2_ll.color.r = 0.54f;
        v2_ll.color.g = 0.27f;
        v2_ll.color.b = 0.07f;

        Vertex v3_ll;
        v3_ll.position.x = 140;
        v3_ll.position.y = m_height - 100;
        v3_ll.position.z = 0;
        // sattlewood
        v3_ll.color.r = 0.54f;
        v3_ll.color.g = 0.27f;
        v3_ll.color.b = 0.07f;

        Vertex v4_ll;
        v4_ll.position.x = 110;
        v4_ll.position.y = m_height - 100;
        v4_ll.position.z = 0;
        // sattlewood
        v4_ll.color.r = 0.54f;
        v4_ll.color.g = 0.27f;
        v4_ll.color.b = 0.07f;

        m_lineLoopArray.m_vertices.push_back(v1_ll);
        m_lineLoopArray.m_vertices.push_back(v2_ll);
        m_lineLoopArray.m_vertices.push_back(v3_ll);
        m_lineLoopArray.m_vertices.push_back(v4_ll);

        reloadMeshData(m_lineLoopArray);

        // *****************************************
        // HOUSE ROOF
        //
        Vertex v1_t;
        v1_t.position.x = 90;
        v1_t.position.y = m_height - 140;
        v1_t.position.z = 0;
        // sattlewood
        v1_t.color.r = 0.54f;
        v1_t.color.g = 0.27f;
        v1_t.color.b = 0.07f;

        Vertex v2_t;
        v2_t.position.x = 210;
        v2_t.position.y = m_height - 140;
        v2_t.position.z = 0;
        // sattlewood
        v2_t.color.r = 0.54f;
        v2_t.color.g = 0.27f;
        v2_t.color.b = 0.07f;

        Vertex v3_t;
        v3_t.position.x = 150;
        v3_t.position.y = m_height - 200;
        v3_t.position.z = 0;
        // sattlewood
        v3_t.color.r = 0.9f;
        v3_t.color.g = 0.9f;
        v3_t.color.b = 0.9f;

        m_triangleArray.m_vertices.push_back(v1_t);
        m_triangleArray.m_vertices.push_back(v2_t);
        m_triangleArray.m_vertices.push_back(v3_t);

        reloadMeshData(m_triangleArray);

        // **************************************
        // SUN
        //
        int triangleCount = 30;
        float xCentre = 520;
        float yCentre = 100;
        float radius = 40;
        for (int i = 0; i < triangleCount; ++i)
        {
            float x = xCentre + (radius * static_cast<float>(cos(i * 2 * M_PI / triangleCount)));
            float y = yCentre + (radius * static_cast<float>(sin(i * 2 * M_PI / triangleCount)));
            Vertex v;
            v.position.x = x;
            v.position.y = y;
            v.position.z = 0;
            v.color.r = 1.0f;
            v.color.g = 1.0f;
            v.color.b = 0.0f;
            m_triangleFanArray.m_vertices.push_back(v);
        }

        reloadMeshData(m_triangleFanArray);

        // ************************************
        // GL_QUAD_STRIP
        //
        /*Vertex v1_qs;
        v1_qs.position.x = 300;
        v1_ps.position.y = 160;
        v1_ps.position.z = 0;
        v1_ps.color.r = 1.0f;
        v1_ps.color.g = 0.0f;
        v1_ps.color.b = 0.0f;

        Vertex v2_qs;
        v2_qs.position.x = 320;
        v2_qs.position.y = 160;
        v2_qs.position.z = 0;*/
    }

    void Window::run()
    {
        while (!glfwWindowShouldClose(m_window.get()))
        {
            glfwPollEvents();
            draw();
        }
    }

    void Window::loadShader(Shader& shader)
    {
        m_shader = shader;
    }

    void Window::error_cb(int error, const char * description)
    {
        std::cout << "Error (" << error << "): " << description << std::endl;
    }

    void Window::keyboard_cb(GLFWwindow * window, int key, int scancode, int action, int mods)
    {
        auto win = static_cast<Window*>(glfwGetWindowUserPointer(window));
        win->keyPress(key, scancode, action, mods);
    }

    void Window::keyPress(int key, int scancode, int action, int mods)
    {
        if (key == GLFW_KEY_R && action == GLFW_PRESS)
        {
            m_currentColor.r = m_currentColor.r == 1.0f ? 0.0f : 1.0f;
        }
        else if (key == GLFW_KEY_G && action == GLFW_PRESS)
        {
            m_currentColor.g = m_currentColor.g == 1.0f ? 0.0f : 1.0f;
        }
        else if (key == GLFW_KEY_B && action == GLFW_PRESS)
        {
            m_currentColor.b = m_currentColor.b == 1.0f ? 0.0f : 1.0f;
        }
    }

    void Window::mouse_button_cb(GLFWwindow * window, int button, int action, int mods)
    {
        auto win = static_cast<Window*>(glfwGetWindowUserPointer(window));
        win->mouseClick(button, action, mods);
    }

    void Window::mouseClick(int button, int action, int mods)
    {
        if (action == GLFW_PRESS)
        {
            double xpos, ypos;
            glfwGetCursorPos(m_window.get(), &xpos, &ypos);
            std::cout << "xpos: " << xpos << " ypos: " << ypos << std::endl;

            // place triangle at position
            float ixpos = static_cast<float>(xpos);
            float iypos = static_cast<float>(ypos);

            Vertex v;
            v.position.x = ixpos;
            v.position.y = iypos;
            v.position.z = 0;
            v.color = m_currentColor;

            m_pointArray.m_vertices.push_back(v);

            reloadMeshData(m_pointArray);


        }
    }

    void Window::reloadMeshData(VAOArray& vaoArray)
    {
        std::cout << "reloading scene" << std::endl;

        // gen vao buffer
        glGenVertexArrays(1, &vaoArray.vao);
        glGenBuffers(1, &vaoArray.vbo);

        // bind the vao for configuring data
        glBindVertexArray(vaoArray.vao);

        glBindBuffer(GL_ARRAY_BUFFER, vaoArray.vbo);

        // NOTE: struct data is continious which means you can tell opengl data is in one array

        glBufferData(GL_ARRAY_BUFFER, vaoArray.m_vertices.size() * sizeof(Vertex), &vaoArray.m_vertices[0], GL_STATIC_DRAW);
        // VERTEX POSITION
        glEnableVertexAttribArray(0);
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), nullptr);
        // VERTEX COLOR
        glEnableVertexAttribArray(1);
        glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (GLvoid *)offsetof(Vertex, color));

        // unbind the data to ensure no one touchs the vao data
        glBindVertexArray(0);

    }

    void Window::draw() const
    {
        glClear(GL_COLOR_BUFFER_BIT);
        glClearColor(0.25f, 0.25f, 0.25f, 1.0f);
        m_shader.bind();

        // render scene
        glBindVertexArray(m_pointArray.vao);
        glDrawArrays(GL_POINTS, 0, m_pointArray.m_vertices.size());
        glBindVertexArray(0);
        glBindVertexArray(m_triangleArray.vao);
        glDrawArrays(GL_TRIANGLES, 0, m_triangleArray.m_vertices.size());
        glBindVertexArray(0);
        glBindVertexArray(m_quadArray.vao);
        glDrawArrays(GL_QUADS, 0, m_quadArray.m_vertices.size());
        glBindVertexArray(0);
        glBindVertexArray(m_lineLoopArray.vao);
        glDrawArrays(GL_LINE_LOOP, 0, m_lineLoopArray.m_vertices.size());
        glBindVertexArray(0);
        glBindVertexArray(m_triangleFanArray.vao);
        glDrawArrays(GL_TRIANGLE_FAN, 0, m_triangleFanArray.m_vertices.size());
        glBindVertexArray(0);

        m_shader.unbind();

        // swap the two buffers
        glfwSwapBuffers(m_window.get());
    }
}
