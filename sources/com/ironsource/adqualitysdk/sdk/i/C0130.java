package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0130 implements InterfaceC0065 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f1070;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1071;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1072;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1073;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1074;

    public C0130(C0129 c0129, C0946 c0946, C0915 c0915, C0048 c0048, List list) {
        this.f1070 = c0129;
        this.f1074 = c0946;
        this.f1073 = c0915;
        this.f1072 = c0048;
        this.f1071 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0065
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1074(C0062 c0062, MediaPlayer mediaPlayer) {
        C0946 c0946 = this.f1074;
        C0915 c0915 = this.f1073;
        C0048 c0048 = this.f1072;
        ArrayList arrayListM1121 = C0129.m1121(this.f1070, this.f1071, new Object[]{this, c0062, mediaPlayer});
        c0946.getClass();
        c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121);
    }
}
