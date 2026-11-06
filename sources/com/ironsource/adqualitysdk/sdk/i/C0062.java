package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ł, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0062 extends AbstractC0897 implements MediaPlayer.OnSeekCompleteListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f814 = StringFog.decrypt("WCly/xTBSdF6N03/Bc9G12QzRPQU2E7bdChT+wXFeA==\n", "F0chmnGqCr4=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0065 f815;

    public C0062(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener, InterfaceC0065 interfaceC0065) {
        super(onSeekCompleteListener);
        this.f815 = interfaceC0065;
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        try {
            this.f815.mo1074(this, mediaPlayer);
        } catch (Throwable th) {
            AbstractC1003.m1592(f814, StringFog.decrypt("W9t3OXlDF+w+xFE0RwoN9nvHYCQrDBDRe8xuFWQODu573WA=\n", "HqkFVgtjfoI=\n"), th, false);
        }
        Object obj = this.f3454;
        if (obj != null) {
            ((MediaPlayer.OnSeekCompleteListener) obj).onSeekComplete(mediaPlayer);
        }
    }
}
