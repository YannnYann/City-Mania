package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class ViewOnAttachStateChangeListenerC0499 implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f2311;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f2312;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f2313;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2314;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ List f2315;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f2316;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f2317;

    public ViewOnAttachStateChangeListenerC0499(C0129 c0129, C0946 c0946, C0946 c09462, List list, boolean z, C0915 c0915, C0048 c0048) {
        this.f2311 = c0129;
        this.f2317 = c0946;
        this.f2316 = c09462;
        this.f2315 = list;
        this.f2314 = z;
        this.f2313 = c0915;
        this.f2312 = c0048;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        m1293(this.f2317, view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m1293(this.f2316, view);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1293(C0946 c0946, View view) {
        try {
            ArrayList arrayListM1121 = C0129.m1121(this.f2311, this.f2315, new Object[]{this, view});
            if (!this.f2314) {
                AbstractC0272.m1211(new C0539(this, c0946, arrayListM1121));
                return;
            }
            C0915 c0915 = this.f2313;
            C0048 c0048 = this.f2312;
            c0946.getClass();
            c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121);
        } catch (Throwable th) {
            AbstractC1003.m1592(this.f2312.m1060(), StringFog.decrypt("AqdluisZ0i1nmnmULU3aIC+GY7QtXPgrJrtwsBVQyDciu3KneVDVMC6xcvU=\n", "R9UX1Vk5u0M=\n") + c0946.f3585, th, false);
        }
    }
}
