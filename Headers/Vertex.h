#pragma once

#include <iostream>
#include <vector>

namespace Graphics
{
	// This struct holds the Vertex data
	// color, position, texture coord
	struct Vertex
	{
		struct Position
		{
			float x, y, z;
		} position;
		struct Color
		{
			float r, g, b;
		} color;
		/*struct Normal
		{
			float x, y, z;
		} normal;*/
	};

	struct VAOArray
	{
		unsigned int vao;
		unsigned int vbo;
		std::vector<Vertex> m_vertices;
	};
}