#pragma once

#if defined(__cplusplus)
extern "C" {
#endif

#define error_message_count mix_error_message_count
extern unsigned int error_message_count;

#define error mix_error
void error(int status, int errnum, const char* format, ...);

#if defined(__cplusplus)
}
#endif