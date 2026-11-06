package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ig, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2629ig {
    public static byte[] A03;
    public int A00;
    public final Rect A01;
    public final AbstractC2645iw A02;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{84, 83, 75, 92, 81, 84, 89, 29, 82, 79, 84, 88, 83, 73, 92, 73, 84, 82, 83};
    }

    public abstract int A06();

    public abstract int A07();

    public abstract int A08();

    public abstract int A09();

    public abstract int A0A();

    public abstract int A0B();

    public abstract int A0C();

    public abstract int A0D(View view);

    public abstract int A0E(View view);

    public abstract int A0F(View view);

    public abstract int A0G(View view);

    public abstract int A0H(View view);

    public abstract int A0I(View view);

    public abstract void A0K(int i);

    public AbstractC2629ig(AbstractC2645iw abstractC2645iw) {
        this.A00 = Integer.MIN_VALUE;
        this.A01 = new Rect();
        this.A02 = abstractC2645iw;
    }

    public /* synthetic */ AbstractC2629ig(AbstractC2645iw abstractC2645iw, J4 j4) {
        this(abstractC2645iw);
    }

    public static J4 A00(AbstractC2645iw abstractC2645iw) {
        return new J4(abstractC2645iw);
    }

    public static J3 A01(AbstractC2645iw abstractC2645iw) {
        return new J3(abstractC2645iw);
    }

    public static AbstractC2629ig A02(AbstractC2645iw abstractC2645iw, int i) {
        switch (i) {
            case 0:
                return A00(abstractC2645iw);
            case 1:
                return A01(abstractC2645iw);
            default:
                throw new IllegalArgumentException(A03(0, 19, 11));
        }
    }

    public final int A05() {
        if (Integer.MIN_VALUE == this.A00) {
            return 0;
        }
        return A0C() - this.A00;
    }

    public final void A0J() {
        this.A00 = A0C();
    }
}
