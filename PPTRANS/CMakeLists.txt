project(PPTRANS)
set(CMAKE_CXX_STANDARD 17)

set(PPTRANS_HEADERS
    decomposition.h
    optionPrelude.h
    utils.h
    )

set(PPTRANS_SOURCES
    decomposition.cpp
    optionPrelude.cpp
    utils.cpp
    )

include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
    ${BASTLIB_SOURCE_DIR}
    ${POGLoader_SOURCE_DIR}
    )

add_library(PPTRANS_LIB STATIC ${PPTRANS_SOURCES} ${PPTRANS_HEADERS})
set_target_properties(PPTRANS_LIB PROPERTIES PREFIX "lib" OUTPUT_NAME "PPTRANS")

target_link_libraries(PPTRANS_LIB PRIVATE Qt5::Core Qt5::Xml)
