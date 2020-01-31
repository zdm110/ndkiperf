
LOCAL_PATH:= $(call my-dir)
 
include $(CLEAR_VARS)
 
LOCAL_SRC_FILES := \
    ../iperf/src/cjson.c \
    ../iperf/src/iperf_client_api.c \
    ../iperf/src/iperf_locale.c \
    ../iperf/src/iperf_server_api.c \
    ../iperf/src/iperf_udp.c \
    ../iperf/src/main.c \
    ../iperf/src/tcp_info.c \
    ../iperf/src/timer.c \
    ../iperf/src/t_units.c \
    ../iperf/src/units.c \
    ../iperf/src/iperf_api.c \
    ../iperf/src/iperf_error.c \
    ../iperf/src/iperf_sctp.c \
    ../iperf/src/iperf_tcp.c \
    ../iperf/src/iperf_util.c \
    ../iperf/src/net.c \
    ../iperf/src/tcp_window_size.c \
    ../iperf/src/t_timer.c \
    ../iperf/src/t_uuid.c
 
#LOCAL_CFLAGS += -D_BSD_SOURCE
#LOCAL_CFLAGS += -DHAVE_CONFIG_H
#LOCAL_CFLAGS += -D_U_="__attribute__((unused))"
#LOCAL_CFLAGS += -Werror
#LOCAL_CFLAGS += -Wno-address-of-packed-member
#LOCAL_CFLAGS += -Wno-sign-compare
#LOCAL_CFLAGS += -Wno-incompatible-pointer-types-discards-qualifiers
#LOCAL_CFLAGS += -Wno-unused-parameter
#LOCAL_CFLAGS += -Wno-unused-result
#LOCAL_CFLAGS += -Wno-unused-variable
#LOCAL_CFLAGS += -Wno-pointer-sign
#LOCAL_CFLAGS += -Wno-unused-function
#LOCAL_CFLAGS += -Wno-implicit-function-declaration
 
LOCAL_CFLAGS += -DHAVE_CONFIG_H
#LOCAL_LDLIBS += -lpthread
 
#LOCAL_SHARED_LIBRARIES := libc libcutils libm libnetutils
 
#LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := iperf
LOCAL_LDFLAGS += -static
include $(BUILD_EXECUTABLE)
