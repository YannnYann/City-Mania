package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2254cW implements Comparable<C2254cW> {
    public final int A00;
    public final C2245cN A01;

    public C2254cW(int i, C2245cN c2245cN) {
        this.A00 = i;
        this.A01 = c2245cN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C2254cW c2254cW) {
        return Integer.compare(this.A00, c2254cW.A00);
    }
}
