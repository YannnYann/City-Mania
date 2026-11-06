package org.chromium.base.metrics;

import android.os.Trace;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes5.dex */
public class ScopedSysTraceEvent implements AutoCloseable {
    public static ScopedSysTraceEvent scoped(String name) {
        return new ScopedSysTraceEvent(name);
    }

    public ScopedSysTraceEvent(String name) {
        if (name.length() > 127) {
            name = name.substring(0, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE) + "...";
        }
        Trace.beginSection(name);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        Trace.endSection();
    }
}
