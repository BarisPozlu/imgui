project "ImGui"

	kind "StaticLib"
	language "C++"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imgui_rectpack.h",
        "imgui_textedit.h",
        "imgui_truetype.h"
	}

	includedirs
	{
		".",
		"../GLFW/include"
	}
	
	filter "system:windows"
	
		defines "IMGUI_API=__declspec(dllexport)"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"

		runtime "Debug"
		symbols "on"

	filter "configurations:Release"

		runtime "Release"
		optimize "on"
