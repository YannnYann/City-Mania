package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3430vl implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"WoMZWlbSq1wRpz", "oXsWUIAxe321xHE4jjQXREJU4TXr82fu", "VattKCXXVeRIx9t27pxa5ujzFemihhCh", "Dstsf0pqYwCFuyEmczlnLKYkTEdzKV4", "dpevL0LJbg3FYZbuM410k4ZvlI9UNLtc", "8htDwaF3Iz", "MaJgAPzX7iMoD5PNeqvmvo7lUkos8NHG", "Sia3TgGKojus9dIOYkFkQbqczkkmE"};
    public final /* synthetic */ EE A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 5);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{79, 84, 84, 87, 89, 90, 73};
    }

    static {
        A01();
    }

    public ViewOnClickListenerC3430vl(EE ee) {
        this.A00 = ee;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0x(A00(0, 7, 62));
            if (this.A00.A0o.A0D() != null) {
                this.A00.A0o.A0D().ADH();
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
            if (A02[1].charAt(23) != 'U') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[0] = "UXY0YoV9GXAmoQ";
            strArr[3] = "kfzLSYKTYwAgz0HaqqxpVtJjBz4J3VT";
        }
    }
}
