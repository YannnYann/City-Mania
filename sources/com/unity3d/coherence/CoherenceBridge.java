package com.unity3d.coherence;

/* JADX INFO: loaded from: classes4.dex */
final class CoherenceBridge {
    public static native byte[] getCommonAttributes(long j, int i, int i2);

    public static native byte[] getVersions(long j);

    public static native long init(Coherence coherence, String str, int i);

    public static native boolean isInitialized(long j);

    public static native void setExternalUserId(long j, String str);

    public static native void setLogHandler(LogHandler logHandler);

    public static native long vmCreate(long j, byte[] bArr);

    public static native void vmDrop(long j, long j2);

    public static native VmInvokeResult vmInvokeMain(long j, long j2, byte[] bArr);

    public static native String vmLastError(long j);

    static {
        System.loadLibrary("unitycoherencenative");
    }

    private CoherenceBridge() {
    }
}
