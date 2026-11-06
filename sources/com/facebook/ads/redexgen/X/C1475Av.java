package com.facebook.ads.redexgen.X;

import android.widget.TextView;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Av, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1475Av extends TextView implements InterfaceC2348e3 {
    public static byte[] A02;
    public static final int A03;
    public C1484Be A00;
    public final AbstractC2857mQ<C5V> A01;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A02 = new byte[]{-51, -40, -38, 12, -30, -51, -40, -38, 12, -59, -59, -49, -59, -59};
    }

    static {
        A04();
        A03 = (int) (AbstractC3070px.A02 * 6.0f);
    }

    public C1475Av(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A01 = new C1476Aw(this);
        AbstractC3111qc.A0W(this, AbstractC3111qc.A06(855638016, A03));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String A02(long j) {
        if (j <= 0) {
            return A01(9, 5, 53);
        }
        long minutes = TimeUnit.MILLISECONDS.toMinutes(j);
        long minutes2 = TimeUnit.MILLISECONDS.toSeconds(j % 60000);
        return String.format(Locale.US, A01(0, 9, 72), Long.valueOf(minutes), Long.valueOf(minutes2));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ABd(C1484Be c1484Be) {
        this.A00 = c1484Be;
        if (this.A00 != null) {
            this.A00.getEventBus().A05(this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ALp(C1484Be c1484Be) {
        this.A00 = c1484Be;
        if (this.A00 != null) {
            this.A00.getEventBus().A06(this.A01);
        }
    }
}
