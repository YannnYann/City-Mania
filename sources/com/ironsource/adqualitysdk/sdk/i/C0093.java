package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ȋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0093 extends AbstractC0897 implements MediaPlayer.OnCompletionListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f904 = StringFog.decrypt("5G2F9avjHS/faqn0ivoCPs5to+iC9hIl2WKy9bQ=\n", "qwPGmsaTcUo=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0123 f905;

    public C0093(MediaPlayer.OnCompletionListener onCompletionListener, InterfaceC0123 interfaceC0123) {
        super(onCompletionListener);
        this.f905 = interfaceC0123;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        try {
            this.f905.mo1100(this, mediaPlayer);
        } catch (Throwable th) {
            AbstractC1003.m1592(f904, StringFog.decrypt("NUrAA8hPkUpQVeYO9gaLUBVW1x6aAJZnH1XCAN8bkUse\n", "cDiybLpv+CQ=\n"), th, false);
        }
        Object obj = this.f3454;
        if (obj != null) {
            ((MediaPlayer.OnCompletionListener) obj).onCompletion(mediaPlayer);
        }
    }
}
