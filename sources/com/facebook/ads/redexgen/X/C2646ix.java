package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ix, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2646ix extends ViewGroup.MarginLayoutParams {
    public AbstractC2663jE A00;
    public boolean A01;
    public boolean A02;
    public final Rect A03;

    public C2646ix(int i, int i2) {
        super(i, i2);
        this.A03 = new Rect();
        this.A01 = true;
        this.A02 = false;
    }

    public C2646ix(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A03 = new Rect();
        this.A01 = true;
        this.A02 = false;
    }

    public C2646ix(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.A03 = new Rect();
        this.A01 = true;
        this.A02 = false;
    }

    public C2646ix(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.A03 = new Rect();
        this.A01 = true;
        this.A02 = false;
    }

    public C2646ix(C2646ix c2646ix) {
        super((ViewGroup.LayoutParams) c2646ix);
        this.A03 = new Rect();
        this.A01 = true;
        this.A02 = false;
    }

    public final int A00() {
        return this.A00.A0T();
    }

    public final boolean A01() {
        return this.A00.A0q();
    }

    public final boolean A02() {
        return this.A00.A0n();
    }

    public final boolean A03() {
        return this.A00.A0m();
    }
}
