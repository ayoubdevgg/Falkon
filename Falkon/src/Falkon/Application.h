#pragma once

#include "Core.h"

namespace Falkon {


	class FALKON_API Application
	{
	public:
		Application();

		virtual ~Application();
		void Run();
	};

	// TO be defined in client
	Application* CreateApplication();
}
