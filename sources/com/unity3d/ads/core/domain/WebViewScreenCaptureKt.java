package com.unity3d.ads.core.domain;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewScreenCapture.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class WebViewScreenCaptureKt {
    public static final double countBlackPixelRatio(int[] pixels, int i) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        if (pixels.length == 0) {
            return 0.0d;
        }
        int i2 = 0;
        for (int i3 : pixels) {
            int i4 = (i3 >> 16) & 255;
            int i5 = (i3 >> 8) & 255;
            int i6 = i3 & 255;
            if (i4 < i && i5 < i && i6 < i) {
                i2++;
            }
        }
        return ((double) i2) / ((double) pixels.length);
    }
}
