package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1776Mr<V> {
    public int A00;
    public int A01;
    public long[] A02;
    public V[] A03;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Mr != com.facebook.ads.androidx.media3.common.util.TimedValueQueue<V> */
    public C1776Mr() {
        this(10);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Mr != com.facebook.ads.androidx.media3.common.util.TimedValueQueue<V> */
    public C1776Mr(int i) {
        this.A02 = new long[i];
        this.A03 = (V[]) A00(i);
    }

    public static <V> V[] A00(int i) {
        return (V[]) new Object[i];
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Mr != com.facebook.ads.androidx.media3.common.util.TimedValueQueue<V> */
    public final synchronized void A01() {
        this.A00 = 0;
        this.A01 = 0;
        Arrays.fill(this.A03, (Object) null);
    }
}
