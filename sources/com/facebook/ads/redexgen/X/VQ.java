package com.facebook.ads.redexgen.X;

import android.util.SparseArray;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VQ<V> {
    public static String[] A03 = {"1ID6HyhCBLNL3z8CrHbV0VbNVc1FqZl", "vF6BhGY3", "D8hYJOY2lSbfNEYJ2qq1iSQYkwnMs6C4", "BXfixXzOl", "UE", "7rPcq", "t9EqYlTteqd23MQLOZxqmglq9yRl7yB", "EBMYDzLlXolVKycf8g8gBkLBPLDrK2km"};
    public int A00;
    public final SparseArray<V> A01;
    public final InterfaceC1757Ly<V> A02;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public VQ() {
        this(new InterfaceC1757Ly() { // from class: com.facebook.ads.redexgen.X.Ra
            @Override // com.facebook.ads.redexgen.X.InterfaceC1757Ly
            public final void A3V(Object obj) {
            }
        });
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ly != com.facebook.ads.androidx.media3.common.util.Consumer<V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public VQ(InterfaceC1757Ly<V> interfaceC1757Ly) {
        this.A01 = new SparseArray<>();
        this.A02 = interfaceC1757Ly;
        this.A00 = -1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final V A00() {
        return this.A01.valueAt(this.A01.size() - 1);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final V A01(int i) {
        if (this.A00 == -1) {
            this.A00 = 0;
        }
        while (this.A00 > 0 && i < this.A01.keyAt(this.A00)) {
            this.A00--;
        }
        while (this.A00 < this.A01.size() - 1 && i >= this.A01.keyAt(this.A00 + 1)) {
            this.A00++;
        }
        return this.A01.valueAt(this.A00);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final void A02() {
        for (int i = 0; i < this.A01.size(); i++) {
            this.A02.A3V(this.A01.valueAt(i));
        }
        this.A00 = -1;
        this.A01.clear();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final void A03(int i) {
        for (int size = this.A01.size() - 1; size >= 0 && i < this.A01.keyAt(size); size--) {
            this.A02.A3V(this.A01.valueAt(size));
            this.A01.removeAt(size);
        }
        this.A00 = this.A01.size() > 0 ? Math.min(this.A00, this.A01.size() - 1) : -1;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final void A04(int i) {
        for (int i2 = 0; i2 < this.A01.size() - 1 && i >= this.A01.keyAt(i2 + 1); i2++) {
            InterfaceC1757Ly<V> interfaceC1757Ly = this.A02;
            SparseArray<V> sparseArray = this.A01;
            if (A03[0].length() == 24) {
                throw new RuntimeException();
            }
            A03[4] = "eerHBUV8bXwvTxOkWnqjIlZ";
            interfaceC1757Ly.A3V(sparseArray.valueAt(i2));
            this.A01.removeAt(i2);
            if (this.A00 > 0) {
                this.A00--;
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final void A05(int i, V v) {
        if (this.A00 == -1) {
            AbstractC1747Ln.A08(this.A01.size() == 0);
            this.A00 = 0;
        }
        int size = this.A01.size();
        if (A03[1].length() != 8) {
            throw new RuntimeException();
        }
        A03[6] = "StKyv4BomACzuzUvpFcoz14muVDTEo8";
        if (size > 0) {
            int iKeyAt = this.A01.keyAt(this.A01.size() - 1);
            AbstractC1747Ln.A07(i >= iKeyAt);
            if (iKeyAt == i) {
                this.A02.A3V(this.A01.valueAt(this.A01.size() - 1));
            }
        }
        this.A01.append(i, v);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.VQ != com.facebook.ads.androidx.media3.exoplayer.source.SpannedData<V> */
    public final boolean A06() {
        return this.A01.size() == 0;
    }
}
