//
// Created by Gustavo Sanchez on 10/22/18.
//
#include <GL/glew.h>
#include <GLFW/glfw3.h>

#ifndef ASSIGNMENT1_GLFW_DELETE_H
#define ASSIGNMENT1_GLFW_DELETE_H


struct GLFWDeleter{

    void operator()(GLFWwindow* ptr){
        glfwDestroyWindow(ptr);
    }

};

#endif //ASSIGNMENT1_GLFW_DELETE_H
