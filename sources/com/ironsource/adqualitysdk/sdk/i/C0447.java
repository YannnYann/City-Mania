package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ꮀ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0447 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0439 f2195;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ int f2196;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ int f2197;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ MediaPlayer f2198;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0088 f2199;

    public C0447(C0439 c0439, C0088 c0088, MediaPlayer mediaPlayer, int i, int i2) {
        this.f2195 = c0439;
        this.f2199 = c0088;
        this.f2198 = mediaPlayer;
        this.f2197 = i;
        this.f2196 = i2;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f2195.f2189.mo1089(this.f2199, this.f2198, this.f2197, this.f2196);
    }
}
