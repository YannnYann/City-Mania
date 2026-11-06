package io.bidmachine.media3.common.util;

import android.os.Trace;

/* JADX INFO: loaded from: classes5.dex */
public final class TraceUtil {
    public static void beginSection(String str) {
        Trace.beginSection(str);
    }

    public static void endSection() {
        Trace.endSection();
    }
}
