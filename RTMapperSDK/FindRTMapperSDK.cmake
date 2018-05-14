set(RTMAPPERSDK_FOUND true)
set(RTMAPPERSDK_VERSION 3.2.2)
set(RTMAPPERSDK_INCLUDES ${CMAKE_CURRENT_LIST_DIR}/include)

if(UNIX)
    #set(RTMAPPERSDK_LIBS ${CMAKE_CURRENT_LIST_DIR}/lib/linux64/libRTMapperSDK.so)
elseif(MINGW)
    #set(RTMAPPERSDK_LIBS ${CMAKE_CURRENT_LIST_DIR}/lib/mingw64/libRTMapperSDK.dll)
elseif(WIN32 AND MSVC)
    set(RTMAPPERSDK_LIBS ${CMAKE_CURRENT_LIST_DIR}/lib/vs2015release64/libRTMapperSDK.lib)
    LINK_DIRECTORIES(${CMAKE_CURRENT_LIST_DIR}/lib/vs2015release64)
endif()
