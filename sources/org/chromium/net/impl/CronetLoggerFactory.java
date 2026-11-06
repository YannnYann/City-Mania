package org.chromium.net.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class CronetLoggerFactory {
    public static final String TAG = "CronetLoggerFactory";
    public static CronetLogger sLogger;

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a A[Catch: all -> 0x001c, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000d, B:10:0x0013, B:15:0x001f, B:16:0x0026, B:18:0x002a, B:19:0x0031, B:20:0x0033), top: B:26:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.chromium.net.impl.CronetLogger createLogger(android.content.Context r3, org.chromium.net.impl.CronetLogger.CronetSource r4) {
        /*
            java.lang.Class<org.chromium.net.impl.CronetLoggerFactory> r0 = org.chromium.net.impl.CronetLoggerFactory.class
            monitor-enter(r0)
            org.chromium.net.impl.CronetLogger r1 = org.chromium.net.impl.CronetLoggerFactory.sLogger     // Catch: java.lang.Throwable -> L1c
            if (r1 != 0) goto L26
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L1c
            r2 = 30
            if (r1 < r2) goto L26
            boolean r3 = org.chromium.net.impl.CronetManifest.isAppOptedInForTelemetry(r3, r4)     // Catch: java.lang.Throwable -> L1c
            if (r3 == 0) goto L26
            org.chromium.net.telemetry.CronetLoggerImpl r3 = new org.chromium.net.telemetry.CronetLoggerImpl     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L1e
            r4 = 1
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L1e
            org.chromium.net.impl.CronetLoggerFactory.sLogger = r3     // Catch: java.lang.Throwable -> L1c java.lang.Exception -> L1e
            goto L26
        L1c:
            r3 = move-exception
            goto L35
        L1e:
            r3 = move-exception
            java.lang.String r4 = org.chromium.net.impl.CronetLoggerFactory.TAG     // Catch: java.lang.Throwable -> L1c
            java.lang.String r1 = "Exception creating an instance of CronetLoggerImpl"
            android.util.Log.e(r4, r1, r3)     // Catch: java.lang.Throwable -> L1c
        L26:
            org.chromium.net.impl.CronetLogger r3 = org.chromium.net.impl.CronetLoggerFactory.sLogger     // Catch: java.lang.Throwable -> L1c
            if (r3 != 0) goto L31
            org.chromium.net.impl.NoOpLogger r3 = new org.chromium.net.impl.NoOpLogger     // Catch: java.lang.Throwable -> L1c
            r3.<init>()     // Catch: java.lang.Throwable -> L1c
            org.chromium.net.impl.CronetLoggerFactory.sLogger = r3     // Catch: java.lang.Throwable -> L1c
        L31:
            org.chromium.net.impl.CronetLogger r3 = org.chromium.net.impl.CronetLoggerFactory.sLogger     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1c
            return r3
        L35:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1c
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.chromium.net.impl.CronetLoggerFactory.createLogger(android.content.Context, org.chromium.net.impl.CronetLogger$CronetSource):org.chromium.net.impl.CronetLogger");
    }
}
