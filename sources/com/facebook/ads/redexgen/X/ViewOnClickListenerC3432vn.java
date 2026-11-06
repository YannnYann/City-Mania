package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3432vn implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"b1SwqorcFrobOhiT9BPBsNXyla", "sd2", "rAAItvQEkfyMG8dMoTlo9nFsi8GPulFG", "CcZJS", "iSCVihKJ2dx9wz9v2vHB7IBUdEHreewY", "x7Q9rf9CCl3R80R4tuDQVJnY5RTk0z6M", "QQAW91YrX4q2MteBWdIYKSiWLTTswEt9", "zBs7Zik68lufVNNMY8iTjsNfrj"};
    public final /* synthetic */ EE A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 76);
            String[] strArr = A02;
            if (strArr[2].charAt(2) != strArr[6].charAt(2)) {
                throw new RuntimeException();
            }
            A02[1] = "RmN";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-23, -19, -31, -25, -27};
    }

    static {
        A01();
    }

    public ViewOnClickListenerC3432vn(EE ee) {
        this.A00 = ee;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0x(A00(0, 5, 52));
            if (this.A00.A0o.A0D() != null) {
                this.A00.A0o.A0D().ADH();
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
