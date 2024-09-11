project(PPTRANSTPTP)
set(CMAKE_CXX_STANDARD 17)

set(PPTRANSTPTP_HEADERS
        ppTransTPTP.h
        ppTransTPTPNonIncr.h
        theoryTPTP.h
        )

set(PPTRANSTPTP_SOURCES
        ppTransTPTP.cpp
        ppTransTPTPNonIncr.cpp
        ppTransConsoleTPTP.cpp
        theoryTPTP.cpp
        )

include_directories(
        ${CMAKE_CURRENT_BINARY_DIR}
        ${BASTLIB_SOURCE_DIR}
        ${POGLoader_SOURCE_DIR}
        ${PPTRANS_SOURCE_DIR}
)

add_executable(ppTransTPTP ${PPTRANSTPTP_SOURCES})

target_link_libraries(ppTransTPTP
        -Bstatic POGLoader_LIB BAST_LIB PPTRANS_LIB
        -Bdynamic Qt5::Core Qt5::Xml)

add_executable(TPTPfilter TPTPfilter.cpp)
target_link_libraries(TPTPfilter -static)
