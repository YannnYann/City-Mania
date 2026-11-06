package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3274tF implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ F6 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-58, -57, -44, -38, -39, -97, -57, -47, -58, -45, -48, 20, 33, 18, 20, 22, 39, 28, 41, 28, 39, 44, -60, -47, -57, -43, -46, -52, -57, -111, -52, -47, -41, -56, -47, -41, -111, -60, -58, -41, -52, -46, -47, -111, -71, -84, -88, -70};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
        if (!TextUtils.isEmpty(this.A00.A07) && !A00(0, 11, 35).equals(this.A00.A07)) {
            Intent intent = new Intent(A00(22, 26, 33), AbstractC3036pP.A00(this.A00.A07));
            intent.addFlags(268435456);
            this.A00.A09.A0F().AAc();
            try {
                C3022p8.A0F(this.A00.A09, intent);
                if (this.A00.A06 != null) {
                    this.A00.A06.AG4();
                    return;
                }
                return;
            } catch (C3020p6 e) {
                Throwable cause = e.getCause();
                C3020p6 cause2 = e;
                if (cause != null) {
                    cause2 = e.getCause();
                }
                this.A00.A09.A08().ABz(A00(11, 11, 113), AbstractC2811lf.A00, new C2812lg(cause2));
                return;
            }
            AbstractC2996oi.A00(th, this);
        }
    }

    public ViewOnClickListenerC3274tF(F6 f6) {
        this.A00 = f6;
    }
}
