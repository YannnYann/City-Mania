package com.ironsource.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0341 extends BroadcastReceiver {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f1933;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ List f1934;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1935;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1936;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1937;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1938;

    public C0341(C0129 c0129, C0946 c0946, C0048 c0048, C0915 c0915, List list, boolean z) {
        this.f1933 = c0129;
        this.f1938 = z;
        this.f1937 = c0946;
        this.f1936 = c0915;
        this.f1935 = c0048;
        this.f1934 = list;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            if (!this.f1938) {
                AbstractC0272.m1211(new C0362(this, context, intent));
                return;
            }
            C0946 c0946 = this.f1937;
            C0915 c0915 = this.f1936;
            C0048 c0048 = this.f1935;
            ArrayList arrayListM1121 = C0129.m1121(this.f1933, this.f1934, new Object[]{this, context, intent});
            c0946.getClass();
            c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121);
        } catch (Throwable th) {
            AbstractC1003.m1592(this.f1935.m1060(), StringFog.decrypt("YC7Iimy8NMUFHsiKf/g+ylYo6IB9+TTdQC6ajHDvNM9AfA==\n", "JVy65R6cXas=\n") + this.f1937.f3585, th, false);
        }
    }
}
