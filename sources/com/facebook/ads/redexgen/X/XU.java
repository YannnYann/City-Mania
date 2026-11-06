package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import com.facebook.ads.androidx.media3.exoplayer.video.DummySurface;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class XU extends HandlerThread implements Handler.Callback {
    public static byte[] A05;
    public Handler A00;
    public M5 A01;
    public DummySurface A02;
    public Error A03;
    public RuntimeException A04;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{6, 55, 47, 47, 59, 17, 55, 48, 36, 35, 33, 39, 34, 5, 13, 8, 1, 0, 68, 16, 11, 68, 13, 10, 13, 16, 13, 5, 8, 13, 30, 1, 68, 0, 17, 9, 9, 29, 68, 23, 17, 22, 2, 5, 7, 1, 100, 67, 75, 78, 71, 70, 2, 86, 77, 2, 80, 71, 78, 71, 67, 81, 71, 2, 70, 87, 79, 79, 91, 2, 81, 87, 80, 68, 67, 65, 71, 37, 52, 44, 44, 56, 18, 52, 51, 39, 32, 34, 36};
    }

    public XU() {
        super(A00(77, 12, 34));
    }

    private void A01() {
        AbstractC1747Ln.A01(this.A01);
        this.A01.A08();
    }

    private void A03(int i) {
        AbstractC1747Ln.A01(this.A01);
        this.A01.A09(i);
        this.A02 = new DummySurface(this, this.A01.A07(), i != 0);
    }

    public final DummySurface A04(int i) {
        start();
        this.A00 = new Handler(getLooper(), this);
        this.A01 = new M5(this.A00);
        boolean z = false;
        synchronized (this) {
            this.A00.obtainMessage(1, i, 0).sendToTarget();
            while (this.A02 == null && this.A04 == null && this.A03 == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        if (this.A04 == null) {
            if (this.A03 == null) {
                return (DummySurface) AbstractC1747Ln.A01(this.A02);
            }
            throw this.A03;
        }
        throw this.A04;
    }

    public final void A05() {
        AbstractC1747Ln.A01(this.A00);
        this.A00.sendEmptyMessage(2);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean handleMessage(android.os.Message r7) {
        /*
            r6 = this;
            int r0 = r7.what
            r5 = 1
            switch(r0) {
                case 1: goto L2b;
                case 2: goto L7;
                default: goto L6;
            }
        L6:
            return r5
        L7:
            r6.A01()     // Catch: java.lang.Throwable -> Lb
            goto L22
        Lb:
            r4 = move-exception
            r2 = 0
            r1 = 12
            r0 = 33
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L26
            r3 = 46
            r2 = 31
            r0 = 65
            java.lang.String r0 = A00(r3, r2, r0)     // Catch: java.lang.Throwable -> L26
            com.facebook.ads.redexgen.X.MV.A08(r1, r0, r4)     // Catch: java.lang.Throwable -> L26
        L22:
            r6.quit()
            return r5
        L26:
            r0 = move-exception
            r6.quit()
            throw r0
        L2b:
            int r0 = r7.arg1     // Catch: java.lang.Error -> L39 java.lang.RuntimeException -> L5a java.lang.Throwable -> L7b
            r6.A03(r0)     // Catch: java.lang.Error -> L39 java.lang.RuntimeException -> L5a java.lang.Throwable -> L7b
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L36
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L36
            goto L77
        L36:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L36
            throw r0
        L39:
            r4 = move-exception
            r2 = 0
            r1 = 12
            r0 = 33
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L7b
            r3 = 12
            r2 = 34
            r0 = 7
            java.lang.String r0 = A00(r3, r2, r0)     // Catch: java.lang.Throwable -> L7b
            com.facebook.ads.redexgen.X.MV.A08(r1, r0, r4)     // Catch: java.lang.Throwable -> L7b
            r6.A03 = r4     // Catch: java.lang.Throwable -> L7b
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L57
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L57
            goto L77
        L57:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L57
            throw r0
        L5a:
            r4 = move-exception
            r2 = 0
            r1 = 12
            r0 = 33
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L7b
            r3 = 12
            r2 = 34
            r0 = 7
            java.lang.String r0 = A00(r3, r2, r0)     // Catch: java.lang.Throwable -> L7b
            com.facebook.ads.redexgen.X.MV.A08(r1, r0, r4)     // Catch: java.lang.Throwable -> L7b
            r6.A04 = r4     // Catch: java.lang.Throwable -> L7b
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L78
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L78
        L77:
            return r5
        L78:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L78
            throw r0
        L7b:
            r0 = move-exception
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L82
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L82
            throw r0
        L82:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L82
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.XU.handleMessage(android.os.Message):boolean");
    }
}
