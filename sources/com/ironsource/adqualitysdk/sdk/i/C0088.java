package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ǐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0088 extends AbstractC0897 implements MediaPlayer.OnInfoListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f890 = StringFog.decrypt("Y4b6Q2GPF0JfnNZDYpIfTk+HwUxzjyk=\n", "LOizLQfgWys=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0089 f891;

    public C0088(MediaPlayer.OnInfoListener onInfoListener, InterfaceC0089 interfaceC0089) {
        super(onInfoListener);
        this.f891 = interfaceC0089;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        try {
            this.f891.mo1089(this, mediaPlayer, i, i2);
        } catch (Throwable th) {
            AbstractC1003.m1592(f890, StringFog.decrypt("p+b2eDOO8ibC+dB1DcfoPIf64WVhwfUBjPLr\n", "4pSEF0Gum0g=\n"), th, false);
        }
        Object obj = this.f3454;
        if (obj != null) {
            return ((MediaPlayer.OnInfoListener) obj).onInfo(mediaPlayer, i, i2);
        }
        return false;
    }
}
