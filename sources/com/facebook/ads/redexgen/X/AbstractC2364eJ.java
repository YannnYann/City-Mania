package com.facebook.ads.redexgen.X;

import android.net.Uri;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract /* synthetic */ class AbstractC2364eJ {
    public static String[] A00 = {"7rSI", "EEcGUN7t0lWZDldxFCprHdfQgMERyqMp", "fm04gRZb8BfALvzgHDlbnN", "wD8b", "F7V4raTGOI", "DXGWDU6rLEhHRDl6TkY9cq0RmNeUm6xt", "jsnpHS1f9p", "zdrRMBbd2q9IfXCKjADI95gRutkTcRUH"};

    public static /* synthetic */ String A00(NX nx) {
        if (nx.A08 != null) {
            return nx.A08;
        }
        Uri uri = nx.A06;
        String[] strArr = A00;
        if (strArr[4].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A00;
        strArr2[1] = "cvfEaqf5KhQiq4gTspdcg7fKYaa1zN8T";
        strArr2[5] = "We9d5X3Atfr1RpcoapBKu5IKtXB37BtK";
        return uri.toString();
    }
}
