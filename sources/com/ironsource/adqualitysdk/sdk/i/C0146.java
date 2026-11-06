package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʷ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0146 implements InterfaceC0080 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0129 f1102;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f1103;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0048 f1104;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0915 f1105;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0946 f1106;

    public C0146(C0129 c0129, C0946 c0946, C0915 c0915, C0048 c0048, List list) {
        this.f1102 = c0129;
        this.f1106 = c0946;
        this.f1105 = c0915;
        this.f1104 = c0048;
        this.f1103 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0080
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1088(C0079 c0079, MediaPlayer mediaPlayer) {
        C0946 c0946 = this.f1106;
        C0915 c0915 = this.f1105;
        C0048 c0048 = this.f1104;
        ArrayList arrayListM1121 = C0129.m1121(this.f1102, this.f1103, new Object[]{this, c0079, mediaPlayer});
        c0946.getClass();
        c0946.m1558(c0915, c0915.f3495, c0048, arrayListM1121);
    }
}
