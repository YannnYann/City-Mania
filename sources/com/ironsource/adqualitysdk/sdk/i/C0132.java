package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0132 implements InterfaceC0089 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f1080;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1081;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1082;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1083;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1084;

    public C0132(C0129 c0129, C0946 c0946, C0915 c0915, C0048 c0048, List list) {
        this.f1080 = c0129;
        this.f1084 = c0946;
        this.f1083 = c0915;
        this.f1082 = c0048;
        this.f1081 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0089
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1089(C0088 c0088, MediaPlayer mediaPlayer, int i, int i2) {
        C0946 c0946 = this.f1084;
        C0915 c0915 = this.f1083;
        C0048 c0048 = this.f1082;
        ArrayList arrayListM1121 = C0129.m1121(this.f1080, this.f1081, new Object[]{this, c0088, mediaPlayer, Integer.valueOf(i), Integer.valueOf(i2)});
        c0946.getClass();
        return c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121).m1144();
    }
}
