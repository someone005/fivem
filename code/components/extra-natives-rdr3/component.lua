includedirs { '../voip-mumble/include' }
libdirs { '../voip-mumble/lib' }
links { 'avutil', 'swresample' }

return function()
	filter {}

	includedirs {
		'components/extra-natives-five/include/',
		'components/gta-core-five/include/',
		'components/gta-game-five/include/',
	}

	files {
		'components/extra-natives-five/src/TimecycleNatives.cpp',
		'components/extra-natives-five/src/VisualSettingsNatives.cpp',
		'components/extra-natives-five/src/PoolTraversalNatives.cpp',
		'components/extra-natives-five/src/RadioDSP.cpp',
		'components/extra-natives-five/src/NuiAudioSink.cpp',
		'components/extra-natives-five/src/InputNatives.cpp',
		'components/gta-core-five/include/GameAudioState.h',
		'components/extra-natives-five/include/audDspEffect.h',
	}

	add_dependencies { 'vendor:dspfilters' }
end
