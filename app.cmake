function(app_library_sources)
  foreach(arg ${ARGV})
    if(IS_ABSOLUTE ${arg})
      set(path ${arg})
    else()
      set(path ${CMAKE_CURRENT_SOURCE_DIR}/${arg})
    endif()

    if(IS_DIRECTORY ${path})
      message(FATAL_ERROR "app_library_sources() was called on a directory")
    endif()

    target_sources(app PRIVATE ${path})
  endforeach()
endfunction()

function(app_library_include_directories)
  foreach(arg ${ARGV})
    if(IS_ABSOLUTE ${arg})
      set(path ${arg})
    else()
      set(path ${CMAKE_CURRENT_SOURCE_DIR}/${arg})
    endif()
    target_include_directories(app PRIVATE ${path})
  endforeach()
endfunction()

function(app_library_sources_ifdef feature_toggle source)
  if(${${feature_toggle}})
    app_library_sources(${source} ${ARGN})
  endif()
endfunction()

function(app_library_link_libraries item)
  target_link_libraries(app ${item} ${ARGN})
endfunction()

function(app_library_compile_definitions item)
  target_compile_definitions(app PRIVATE ${item} ${ARGN})
endfunction()