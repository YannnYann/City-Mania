package com.facebook.ads.redexgen.X;

import android.os.Process;
import android.text.TextUtils;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2801lV implements Thread.UncaughtExceptionHandler {
    public static byte[] A04;
    public final C1642Hh A00;
    public final InterfaceC2808lc A01;
    public final Thread.UncaughtExceptionHandler A02;
    public final Map<String, String> A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{42, 28, 94, 122, 96, 96, 122, 125, 116, 51, 80, 124, 125, 103, 118, 107, 103, 11, 7, 5, 70, 14, 9, 11, 13, 10, 7, 7, 3, 70, 9, 12, 27, 71, 86, 69, 87, 76, 20, 18, 5, 19, 30, 23, 2, 80, 86, 65, 87, 90, 83, 70, 124, 64, 76, 71, 70};
    }

    public C2801lV(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1642Hh c1642Hh, InterfaceC2800lU interfaceC2800lU) {
        this(uncaughtExceptionHandler, c1642Hh, interfaceC2800lU, AbstractC2809ld.A00());
    }

    public C2801lV(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1642Hh c1642Hh, InterfaceC2800lU interfaceC2800lU, InterfaceC2808lc interfaceC2808lc) {
        this.A02 = uncaughtExceptionHandler;
        if (c1642Hh != null) {
            this.A00 = c1642Hh;
            this.A03 = interfaceC2800lU.A9k(c1642Hh);
            this.A01 = interfaceC2808lc;
            return;
        }
        throw new IllegalArgumentException(A00(2, 15, 82));
    }

    public static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    private void A03(Thread thread, Throwable th) {
        if (this.A02 != null) {
            this.A02.uncaughtException(thread, th);
        } else {
            A02();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String strA03 = AbstractC3093qK.A03(this.A00, th);
            if (!TextUtils.isEmpty(strA03)) {
                String stackTraceString = A00(17, 16, 41);
                if (strA03.contains(stackTraceString)) {
                    Map<String, String> mapA02 = new C2799lT(strA03, this.A03).A02();
                    String strA00 = A00(38, 7, 38);
                    String stackTraceString2 = A00(33, 5, 101);
                    mapA02.put(strA00, stackTraceString2);
                    Throwable thA00 = AbstractRunnableC2991od.A00();
                    String strA002 = A00(45, 12, 98);
                    if (thA00 == th) {
                        String stackTraceString3 = A00(1, 1, 108);
                        mapA02.put(strA002, stackTraceString3);
                    } else {
                        String stackTraceString4 = A00(0, 1, 91);
                        mapA02.put(strA002, stackTraceString4);
                    }
                    this.A01.AMR(new C2815lj(this.A00.A09().A01(), this.A00.A09().A02(), mapA02), this.A00);
                    if (C2888mv.A2A(this.A00)) {
                        C2888mv.A0c(this.A00);
                    }
                }
            }
        } catch (Exception unused) {
        }
        A03(thread, th);
    }
}
