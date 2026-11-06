package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3170rZ implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"FRL7aE2YBBziPkAjIeVIJBQTtAhQuHvW", "RcfiSiwn5nw9y0iTgMBJF5vuD30Lx4ND", "PA4DYSffJqfPbkd8CgJysD97eMKgDqoI", "5hVSLHUredvpBCRMsM0CcWRRenLjfrNF", "zc6VuLryXLpK7e2oJaa7kvch9zPlEXlw", "jgxjlsAwlMGsFwPNd1FBPLqofRm11X", "q2gCNU2HGNczS5o7lkrMFLcxhZBUgk0h", "GbZr5JKrunoZz25haw3lig"};
    public final /* synthetic */ FS A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
            String[] strArr = A02;
            if (strArr[6].charAt(19) == strArr[4].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[6] = "zSYRgI0Aseh3jhQr17zcF3xcV6goX3Kf";
            strArr2[4] = "2LehbeQpUwhI3vzuRxJNiK2WzrcwMVXY";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        String[] strArr = A02;
        if (strArr[6].charAt(19) == strArr[4].charAt(19)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[1] = "mjVsDI6X53Mflah09ZlLXs8Zf4KEcMNk";
        strArr2[3] = "nIQN2vB3SMLweasu3NtZjmRFcqIv0XNl";
        A01 = new byte[]{21, 19, 5, 18, 3, 12, 9, 3, 11};
    }

    static {
        A01();
    }

    public ViewOnClickListenerC3170rZ(FS fs) {
        this.A00 = fs;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0W(false, A00(0, 9, 95));
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
