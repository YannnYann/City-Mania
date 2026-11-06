package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ɨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0079 extends AbstractC0897 implements MediaPlayer.OnPreparedListener {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f856 = StringFog.decrypt("kgGVMGnei+64C4krf9qP8rgdgSdvwZj9qQC3\n", "3W/FQgyu6pw=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final InterfaceC0080 f857;

    public C0079(MediaPlayer.OnPreparedListener onPreparedListener, InterfaceC0080 interfaceC0080) {
        super(onPreparedListener);
        this.f857 = interfaceC0080;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        try {
            this.f857.mo1088(this, mediaPlayer);
        } catch (Throwable th) {
            AbstractC1003.m1592(f856, StringFog.decrypt("w3cIyT0eUjqmaC7EA1dIIONrH9RvUVUE9GAKxz1bXw==\n", "hgV6pk8+O1Q=\n"), th, false);
        }
        Object obj = this.f3454;
        if (obj != null) {
            ((MediaPlayer.OnPreparedListener) obj).onPrepared(mediaPlayer);
        }
    }
}
