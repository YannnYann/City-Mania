package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3u, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C13093u extends C7O {
    public C13093u(C1643Hi c1643Hi) {
        super(c1643Hi);
        setCarouselLayoutManager(c1643Hi);
    }

    public AbstractC1507Cb getFullscreenCarouselRecyclerViewAdapter() {
        getAdapter();
        if (0 != 0) {
            getAdapter();
            return null;
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C7O
    public J7 getLayoutManager() {
        return (J7) super.getLayoutManager();
    }

    public AbstractC2650j1 getOnScrollListener() {
        return new C1601Fs(this);
    }

    private void setCarouselLayoutManager(C1643Hi c1643Hi) {
        J7 j7 = new J7(c1643Hi, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            j7.A2q(true);
        }
        super.setLayoutManager(j7);
    }

    @Override // com.facebook.ads.redexgen.X.C7O
    public void setLayoutManager(AbstractC2645iw abstractC2645iw) {
    }
}
