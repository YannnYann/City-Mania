package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Jo {
    public final AudioAttributes A00;

    public Jo(VL vl) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(vl.A02).setFlags(vl.A03).setUsage(vl.A05);
        if (N1.A02 >= 29) {
            C1697Jm.A00(usage, vl.A01);
        }
        if (N1.A02 >= 32) {
            C1698Jn.A00(usage, vl.A04);
        }
        this.A00 = usage.build();
    }
}
