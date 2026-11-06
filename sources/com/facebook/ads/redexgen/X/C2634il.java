package com.facebook.ads.redexgen.X;

import android.database.Observable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.il, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2634il extends Observable<AbstractC2635im> {
    public final void A00() {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2635im) this.mObservers.get(size)).A01();
        }
    }

    public final void A01(int i, int i2) {
        A02(i, i2, null);
    }

    public final void A02(int i, int i2, Object obj) {
        for (int size = this.mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2635im) this.mObservers.get(size)).A02(i, i2, obj);
        }
    }
}
