/*
 *  Copyright (c) 2012 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#if defined(WEBRTC_CHROMIUM_BUILD)

#ifdef WEBRTC_ANDROID
#include "android/cpu-features.h"
#else
#include <cpu-features.h>
#endif  //  defined(WEBRTC_ANDROID)

#endif  //  defined(WEBRTC_CHROMIUM_BUILD)

#include <stdint.h>

uint64_t WebRtc_GetCPUFeaturesARM(void) {
    // return android_getCpuFeatures();
    return 0;
}
