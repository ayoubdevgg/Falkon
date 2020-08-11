workspace "Falkon"
architecture "x86_64"
startproject "Sandbox"


configurations
{
	"Debug",
	"Release"
	
}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {}
IncludeDir["GLFW"] = "Falkon/vendor/GLFW/include"

include "Falkon/vendor/GLFW"



project "Falkon"
location "Falkon"
kind "StaticLib"
language "C++"

targetdir("bin/" ..outputdir .. "/%{prj.name}")
objdir("bin-int/" ..outputdir .. "/%{prj.name}")

files
{
	"%{prj.name}/src/**.h",
    "%{prj.name}/src/**.cpp"
}

includedirs
{
	"%{prj.name}/src",
	"%{IncludeDir.GLFW}"
	
}


links
{

	"GLFW",
	"opengl32.lib"
}
filter "system:windows"
cppdialect "C++17"
staticruntime "On"
systemversion "latest"

defines
{
	"FA_PLATFORM_WINDOWS",
	
}

filter "configurations:Debug"
defines "FA_DEBUG"
symbols "On"

filter "configurations:Release"
defines "FA_RELEASE"
optimize "On"

filter "configurations:Dist"
defines "FA_DIST"
optimize "On"

project "Sandbox"
location "Sandbox"
kind "ConsoleApp"
language "C++"

targetdir("bin/" ..outputdir .. "/%{prj.name}")
objdir("bin-int/" ..outputdir .. "/%{prj.name}")

files
{
	"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
}

includedirs
{
	
	"Falkon/src",
}

links
{
	"Falkon"
}

filter "system:windows"
cppdialect "C++17"
staticruntime "On"
systemversion "latest"

defines
{
	"FA_PLATFORM_WINDOWS"
}

filter "configurations:Debug"
defines "FA_DEBUG"
symbols "On"

filter "configurations:Release"
defines "FA_RELEASE"
optimize "On"

filter "configurations:Dist"
defines "FA_DIST"
optimize "On"