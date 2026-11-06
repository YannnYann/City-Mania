package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0496 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0494 f2306;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ MediaPlayer f2307;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0062 f2308;

    public C0496(C0494 c0494, C0062 c0062, MediaPlayer mediaPlayer) {
        this.f2306 = c0494;
        this.f2308 = c0062;
        this.f2307 = mediaPlayer;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f2306.f2304.mo1074(this.f2308, this.f2307);
    }
}
