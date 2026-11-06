package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1892Rp {
    public final int A00;
    public final C1887Rk A01;
    public final CopyOnWriteArrayList<DrmSessionEventListener.EventDispatcher.ListenerAndHandler> A02;

    public C1892Rp() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    public C1892Rp(CopyOnWriteArrayList<DrmSessionEventListener.EventDispatcher.ListenerAndHandler> listenerAndHandlers, int i, C1887Rk c1887Rk) {
        this.A02 = listenerAndHandlers;
        this.A00 = i;
        this.A01 = c1887Rk;
    }

    public final C1892Rp A00(int i, C1887Rk c1887Rk) {
        return new C1892Rp(this.A02, i, c1887Rk);
    }
}
