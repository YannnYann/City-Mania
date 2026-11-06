package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ThreadFactoryC3115qg implements ThreadFactory {
    public static byte[] A03;
    public final AtomicInteger A00 = new AtomicInteger(1);
    public final /* synthetic */ ExecutorC3116qh A01;
    public final /* synthetic */ String A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{96, 103, 104, 28, 3, 85, 6, 5, 3, 66, 43, 55, 45, 58, 62, 59, 44, 0, 60, 48, 42, 49, 43, 58, 45, 0, 44, 55, 48, 45, 43, 0, 43, 62, 44, 52, 0, 58, 39, 58, 60, 42, 43, 48, 45};
    }

    public ThreadFactoryC3115qg(ExecutorC3116qh executorC3116qh, String str) {
        this.A01 = executorC3116qh;
        this.A02 = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AbstractC2817ll.A00(A00(10, 35, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE));
        return new Thread(runnable, String.format(Locale.US, A00(0, 10, 15), this.A02, Integer.valueOf(this.A00.getAndIncrement())));
    }
}
