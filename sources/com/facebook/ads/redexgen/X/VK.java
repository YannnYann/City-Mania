package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class VK implements LQ {
    public final UK A00 = new UK();

    @MetaExoPlayerCustomization
    public abstract void A0H(int i, long j);

    public final int A00() {
        long jA7h = A7h();
        long jA8T = A8T();
        if (jA7h == -9223372036854775807L || jA8T == -9223372036854775807L) {
            return 0;
        }
        if (jA8T == 0) {
            return 100;
        }
        return N1.A07((int) ((100 * jA7h) / jA8T), 0, 100);
    }

    public void A01() {
        ALZ(false);
    }

    public final void A02() {
        A03(A8I());
    }

    public final void A03(int i) {
        A0H(i, -9223372036854775807L);
    }

    public final void A04(long j) {
        A0H(A8I(), j);
    }
}
