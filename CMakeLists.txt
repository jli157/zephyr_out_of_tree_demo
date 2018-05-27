include(app.cmake)

set(BOARD qemu_x86)

include($ENV{ZEPHYR_BASE}/cmake/app/boilerplate.cmake NO_POLICY_SCOPE)
project(NONE)

add_subdirectory(mylib)
add_subdirectory(mydriver)

target_sources(app PRIVATE src/main.c)
