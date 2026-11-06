package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JS<K, V> extends AbstractC2535h6<K, V> {
    public final /* synthetic */ JR A00;

    public JS(JR jr) {
        this.A00 = jr;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final int A04() {
        return ((C2538h9) this.A00).A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final int A05(Object obj) {
        return this.A00.A09(obj);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final int A06(Object obj) {
        return this.A00.A08(obj);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final Map<K, V> A07() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final Object A0B(int i, int i2) {
        return this.A00.A02[(i << 1) + i2];
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final V A0C(int i, V value) {
        return this.A00.A0D(i, value);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final void A0D() {
        this.A00.clear();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final void A0E(int i) {
        this.A00.A0B(i);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2535h6
    public final void A0F(K key, V value) {
        this.A00.put(key, value);
    }
}
