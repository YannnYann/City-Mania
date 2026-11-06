package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.τ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0197 implements InterfaceC0060 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f1289;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1290;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1291;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1292;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1293;

    public C0197(C0129 c0129, C0946 c0946, C0915 c0915, C0048 c0048, List list) {
        this.f1289 = c0129;
        this.f1293 = c0946;
        this.f1292 = c0915;
        this.f1291 = c0048;
        this.f1290 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0060
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1071(ViewOnTouchListenerC0056 viewOnTouchListenerC0056, View view, MotionEvent motionEvent) {
        C0946 c0946 = this.f1293;
        C0915 c0915 = this.f1292;
        C0048 c0048 = this.f1291;
        ArrayList arrayListM1121 = C0129.m1121(this.f1289, this.f1290, new Object[]{this, viewOnTouchListenerC0056, view, motionEvent});
        c0946.getClass();
        return c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121).m1144();
    }
}
