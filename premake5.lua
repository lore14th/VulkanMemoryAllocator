project "vulkan_memory_allocator"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "Off"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/vk_mem_alloc.h"
	}

	externalincludedirs
	{
	}

	defines 
	{
	}

	disablewarnings { "26819" }
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
		symbols "On"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "On"
		symbols "Off"
