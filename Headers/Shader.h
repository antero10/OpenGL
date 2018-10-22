#pragma once

#include <iostream>
#include <fstream>
#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>

namespace Graphics
{
	class Shader
	{
	public:
		Shader();
		~Shader();
		void compile(const char* vs_path, const char* fs_path);
		void bind() const;
		static void unbind();
		void bindUniform(const char* name, const glm::mat4& mat) const;
		Shader(const Shader& shader) = delete;
		Shader(Shader&& shader) noexcept;
		Shader& operator=(const Shader& shader) = delete;
		Shader& operator=(Shader& shader) noexcept;
	protected:
		static unsigned int compileShader(const char* vs_path, const char* fs_path);
	private:
		bool m_compiled;
		unsigned int m_program;
	};
}

