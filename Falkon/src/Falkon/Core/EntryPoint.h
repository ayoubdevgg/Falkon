#pragma once



#ifdef FA_PLATFORM_WINDOWS

extern Falkon::Application* Falkon::CreateApplication();

int main(int argc, char** argv) {

	auto app = Falkon::CreateApplication();

	app->Run();

	delete app;
}

#endif

