package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AI implements InterfaceC2080Zh {
    public static boolean A03;
    public static byte[] A04;
    public static final InterfaceC2083Zk A05;
    public static final String A06;
    public long A00 = 0;
    public final InterfaceC2082Zj A01;
    public final InterfaceC2074Zb A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{127, -88, -85, -100, -94, -89, -96, 89, -89, -98, -79, -83, 89, -84, -78, -89, -100, 89, -102, -83, 89, -77, -57, -40, -47, -122, -57, -39, -122, -44, -43, -122, -39, -33, -44, -55, -50, -40, -43, -44, -49, -32, -57, -38, -49, -43, -44, -122, -39, -55, -50, -53, -54, -37, -46, -53, -54, -108, -122, -78, -57, -39, -38, -122, -39, -33, -44, -55, -122, -57, -38, -122, -117, -54, -108, -122, -76, -53, -34, -38, -122, -39, -33, -44, -55, -122, -57, -38, -122, -117, -54, -108, -51, -26, -33, -33, -22, -102, -32, -23, -20, -102, -97, -34, -102, -25, -29, -26, -26, -29, -19, -88, -14, -15, -43, -8, -15, -55, -20, -15, -20, -10, -21, -24, -25};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2080Zh
    public final synchronized void A7B(int i) {
        long jA6L = this.A02.A6L() + (((long) i) * 1000000 * ((long) (A03 ? 1 : 1000)));
        if (this.A00 == 0 || this.A00 > jA6L) {
            this.A00 = jA6L;
            notifyAll();
        }
    }

    static {
        A02();
        A06 = AI.class.getSimpleName();
        A05 = new AJ();
        A03 = false;
    }

    public AI(InterfaceC2082Zj interfaceC2082Zj, InterfaceC2074Zb interfaceC2074Zb) {
        this.A01 = interfaceC2082Zj;
        this.A02 = interfaceC2074Zb;
        Thread scheduler = new Thread(new RunnableC2078Zf(this));
        scheduler.start();
    }

    private void A01() {
        while (true) {
            synchronized (this) {
                if (this.A00 == 0) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    long jA6L = this.A02.A6L();
                    if (jA6L < this.A00) {
                        int millisToSleep = (int) ((this.A00 - jA6L) / 1000000);
                        if (millisToSleep >= 1) {
                            String.format(Locale.US, A00(92, 20, 69), Integer.valueOf(millisToSleep));
                            try {
                                long current = millisToSleep;
                                this.A02.ALM(this, current);
                            } catch (InterruptedException unused2) {
                            }
                        }
                    }
                    this.A00 = 0L;
                    this.A01.AK6();
                    long jA6L2 = this.A02.A6L();
                    if (0 != 0) {
                        throw new NullPointerException(A00(112, 13, 78));
                    }
                    synchronized (this) {
                        if (this.A00 < jA6L2) {
                            String.format(Locale.US, A00(21, 71, 49), Long.valueOf(jA6L2), Long.valueOf(this.A00));
                            this.A00 = 0L;
                        }
                    }
                }
            }
        }
    }

    public static /* synthetic */ void A03(AI ai) {
        ai.A01();
        throw null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2080Zh
    public final synchronized void A7C() {
        this.A00 = this.A02.A6L();
        String str = A00(0, 21, 4) + this.A00;
        notifyAll();
    }
}
