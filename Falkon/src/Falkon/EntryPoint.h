#pragma once


#ifdef FA_PLATFORM_WINDOWS

extern Falkon::Application* Falkon::CreateApplication();

int main(int argc,char** argv) {
	

	std::cout << "FireStrike Start" << std::endl;

	auto app = Falkon::CreateApplication();

	app->Run();

	delete app;
}

#endif

