project(PPTRANSSMT)
set(CMAKE_CXX_STANDARD 17)

set(PPTRANSSMT_HEADERS
    ppTrans.h
    ppTransIncr.h
    ppTransNonIncr.h
    theorySMTLIB.h
    )

set(PPTRANSSMT_SOURCES
    ppTrans.cpp
    ppTransIncr.cpp
    ppTransNonIncr.cpp
    ppTransSmt.cpp
    theorySMTLIB.cpp
    )

include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
    ${BASTLIB_SOURCE_DIR}
    ${POGLoader_SOURCE_DIR}
    ${PPTRANS_SOURCE_DIR}
    )

add_executable(ppTransSmt
${PPTRANSSMT_HEADERS} ${PPTRANSSMT_SOURCES}
)

target_link_libraries(ppTransSmt
    -Bstatic POGLoader_LIB BAST_LIB PPTRANS_LIB
    -Bdynamic Qt5::Core Qt5::Xml)
