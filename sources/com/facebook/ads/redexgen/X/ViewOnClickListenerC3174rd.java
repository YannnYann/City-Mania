package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3174rd implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"Th8eXEW1PrBlLKXoRy9UyAyDQ9tQjuPK", "4henDDTTPEOKZzq7PNQ1SIy1a", "Zpi4StS1XTi7bhpwa1mxHm", "qGMTOH6iswR5Sy8PveMjBlpiPNI", "tTG2l67cl9i5RpmNxGnyU7CtKTA4p2Vc", "jtcLvs0NSnmTYxd6Zu1", "ATuPFGXiazn8hgK5aIrWnquRldL", "rrmTDpJAuV0duFcPkgO2cU5F1RWAsXrV"};
    public final /* synthetic */ FM A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{10, 12, 26, 13, 28, 19, 22, 28, 20};
    }

    static {
        A01();
    }

    public ViewOnClickListenerC3174rd(FM fm) {
        this.A00 = fm;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0i(false, A00(0, 9, 34));
        } catch (Throwable th) {
            if (A02[2].length() == 14) {
                throw new RuntimeException();
            }
            A02[2] = "e6HsNr1LKoaRSOfvtR5T4talkdc";
            AbstractC2996oi.A00(th, this);
        }
    }
}
