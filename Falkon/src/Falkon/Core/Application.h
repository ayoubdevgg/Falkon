#pragma once

#include "Base.h"

namespace Falkon {


	class Application
	{
	public:
		Application();

		virtual ~Application();
		void Run();
	};

	// TO be defined in client
	Application* CreateApplication();
}
