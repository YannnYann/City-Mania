package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class NS {
    public static void A00(TE te) {
        if (te != null) {
            try {
                te.close();
            } catch (IOException unused) {
            }
        }
    }
}
