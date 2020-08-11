#pragma once


#ifdef FA_PLATFORM_WINDOWS

#ifdef FA_BUILD_DLL

#define FALKON_API __declspec(dllexport)
#else

#define FALKON_API __declspec(dllimport)
#endif

#endif
