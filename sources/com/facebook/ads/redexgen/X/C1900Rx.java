package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1900Rx implements U3 {
    public static byte[] A08;
    public static String[] A09 = {"Fuil6XcSvZoh5YEMbQexBfhaYnT", "aKI99LTRdQMjuQIS2y0YE3llhY5iAGor", "RvzI3qPdJuM0Xwf7WGfouIjGnaW1Fm8L", "J9tQuroy9SgA9qN5c5GTV3TEyVpbTCNY", "YKcNpXh8M7GbVkOJPQwPgzjg6nqLI4Dz", "KGrV31SYbiCORkSjiGtYy39LV2I", "84AjlOOCFCJr7F92ZY8I1M2ugPfxieP3", "dgJs6qMmh"};
    public U2 A00;
    public final LS A01;
    public final NX A02;
    public final C14177y A03;
    public final C2371eQ A04;
    public final Executor A05;
    public volatile AbstractRunnableFutureC1772Mn<Void, IOException> A06;
    public volatile boolean A07;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            if (A09[4].charAt(15) == 'I') {
                throw new RuntimeException();
            }
            A09[6] = "Slz5Tcujx1hXAiSUBd8t0Pptghtdi2To";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A08 = new byte[]{57, 60, 60, 72, 74, 87, 91, 93, 93, 92, 87, 64, 72, 74, 83, 64};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.U3
    public final void A6c(U2 u2) throws InterruptedException, IOException {
        this.A00 = u2;
        if (0 != 0) {
            throw new NullPointerException(A01(0, 3, 89));
        }
        boolean z = false;
        while (!z) {
            try {
                if (this.A07) {
                    break;
                }
                this.A06 = new C1901Ry(this);
                if (0 != 0) {
                    throw new NullPointerException(A01(3, 7, 57));
                }
                this.A05.execute(this.A06);
                try {
                    this.A06.get();
                    z = true;
                } catch (ExecutionException e) {
                    Throwable th = (Throwable) AbstractC1747Ln.A01(e.getCause());
                    if (0 == 0) {
                        if (th instanceof IOException) {
                            throw ((IOException) th);
                        }
                        N1.A11(th);
                        throw null;
                    }
                }
            } catch (Throwable th2) {
                ((AbstractRunnableFutureC1772Mn) AbstractC1747Ln.A01(this.A06)).A02();
                if (0 == 0) {
                    throw th2;
                }
                throw new NullPointerException(A01(10, 6, 36));
            }
        }
        ((AbstractRunnableFutureC1772Mn) AbstractC1747Ln.A01(this.A06)).A02();
        if (0 != 0) {
            throw new NullPointerException(A01(10, 6, 36));
        }
    }

    static {
        A02();
    }

    public C1900Rx(C1958Ug c1958Ug, C1771Mm c1771Mm, Executor executor) {
        this.A05 = (Executor) AbstractC1747Ln.A01(executor);
        AbstractC1747Ln.A01(c1958Ug.A03);
        this.A02 = new NU().A06(c1958Ug.A03.A00).A08(c1958Ug.A03.A04).A02(4).A09();
        this.A03 = c1771Mm.A07();
        this.A04 = new C2371eQ(this.A03, this.A02, null, new InterfaceC2370eP() { // from class: com.facebook.ads.redexgen.X.Rz
            @Override // com.facebook.ads.redexgen.X.InterfaceC2370eP
            public final void AGe(long j, long j2, long j3) {
                this.A00.A03(j, j2, j3);
            }
        });
        this.A01 = c1771Mm.A02();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(long j, long j2, long j3) {
        float f;
        if (this.A00 == null) {
            return;
        }
        if (j == -1 || j == 0) {
            f = -1.0f;
        } else {
            f = (j2 * 100.0f) / j;
        }
        this.A00.AGd(j, j2, f);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Mn != com.facebook.ads.androidx.media3.common.util.RunnableFutureTask<java.lang.Void, java.io.IOException> */
    @Override // com.facebook.ads.redexgen.X.U3
    public final void cancel() {
        this.A07 = true;
        AbstractRunnableFutureC1772Mn<Void, IOException> abstractRunnableFutureC1772Mn = this.A06;
        if (abstractRunnableFutureC1772Mn != null) {
            abstractRunnableFutureC1772Mn.cancel(true);
        }
    }

    @Override // com.facebook.ads.redexgen.X.U3
    public final void remove() {
        this.A03.A0E().AJl(this.A03.A0F().A5H(this.A02));
    }
}
