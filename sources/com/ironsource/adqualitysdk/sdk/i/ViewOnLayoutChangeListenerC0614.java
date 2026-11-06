package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class ViewOnLayoutChangeListenerC0614 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f2596;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f2597;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f2598;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f2599;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2600;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ List f2601;

    public ViewOnLayoutChangeListenerC0614(C0129 c0129, C0946 c0946, C0048 c0048, C0915 c0915, List list, boolean z) {
        this.f2596 = c0129;
        this.f2601 = list;
        this.f2600 = z;
        this.f2599 = c0946;
        this.f2598 = c0915;
        this.f2597 = c0048;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            ArrayList arrayListM1121 = C0129.m1121(this.f2596, this.f2601, new Object[]{this, view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8)});
            if (!this.f2600) {
                AbstractC0272.m1211(new C0642(this, arrayListM1121));
                return;
            }
            C0946 c0946 = this.f2599;
            C0915 c0915 = this.f2598;
            C0048 c0048 = this.f2597;
            c0946.getClass();
            c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121);
        } catch (Throwable th) {
            AbstractC1003.m1592(this.f2597.m1060(), StringFog.decrypt("KmssFozEu55PVjA1n529hRtaNhiQg7e8BmoqHJCBoNAGdy0QmoHy\n", "bxleef7k0vA=\n") + this.f2599.f3585, th, false);
        }
    }
}
