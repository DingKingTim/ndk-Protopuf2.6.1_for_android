LOCAL_PATH := $(call my-dir)
#ZLIB_PATH:="/opt/android-ndk-r10e/platforms/android-8/arch-arm/usr"

##############################################################################################
#             protobuf
##############################################################################################
include $(CLEAR_VARS)

LOCAL_MODULE := protobuf

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/protobuf \
	$(LOCAL_PATH)/include

LOCAL_CPPFLAGS := -frtti -fexceptions
LOCAL_CPP_EXTENSION=.cc

LOCAL_STATIC_LIBRARIES := libpthread

LOCAL_SRC_FILES := \
	protobuf/compiler/code_generator.cc \
	protobuf/compiler/command_line_interface.cc \
	protobuf/compiler/importer.cc \
	protobuf/compiler/parser.cc \
	protobuf/compiler/plugin.cc \
	protobuf/compiler/plugin.pb.cc \
	protobuf/compiler/subprocess.cc \
	protobuf/compiler/zip_writer.cc \
	protobuf/descriptor.cc \
	protobuf/descriptor_database.cc \
	protobuf/descriptor.pb.cc \
	protobuf/dynamic_message.cc \
	protobuf/extension_set.cc \
	protobuf/extension_set_heavy.cc \
	protobuf/generated_message_reflection.cc \
	protobuf/generated_message_util.cc \
	protobuf/io/coded_stream.cc \
	protobuf/io/printer.cc \
	protobuf/io/strtod.cc \
	protobuf/io/tokenizer.cc \
	protobuf/io/zero_copy_stream.cc \
	protobuf/io/zero_copy_stream_impl.cc \
	protobuf/io/zero_copy_stream_impl_lite.cc \
	protobuf/message.cc \
	protobuf/message_lite.cc \
	protobuf/reflection_ops.cc \
	protobuf/repeated_field.cc \
	protobuf/service.cc \
	protobuf/stubs/atomicops_internals_x86_gcc.cc \
	protobuf/stubs/atomicops_internals_x86_msvc.cc \
	protobuf/stubs/common.cc \
	protobuf/stubs/once.cc \
	protobuf/stubs/stringprintf.cc \
	protobuf/stubs/structurally_valid.cc \
	protobuf/stubs/strutil.cc \
	protobuf/stubs/substitute.cc \
	protobuf/testing/file.cc \
	protobuf/testing/googletest.cc \
	protobuf/text_format.cc \
	protobuf/unknown_field_set.cc \
	protobuf/wire_format.cc \
	protobuf/wire_format_lite.cc
	#protobuf/testing/zcgunzip.cc \
	protobuf/testing/zcgzip.cc \
	protobuf/io/gzip_stream.cc
include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_EXECUTABLE)
#include $(BUILD_STATIC_LIBRARY)

