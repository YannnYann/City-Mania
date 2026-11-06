package com.ironsource.adqualitysdk.sdk.i;

import android.view.Choreographer;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ȑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class ChoreographerFrameCallbackC0095 implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0083 f906;

    public ChoreographerFrameCallbackC0095(C0083 c0083) {
        this.f906 = c0083;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        try {
            AbstractC0272.m1214(this.f906);
        } catch (Throwable th) {
            String strDecrypt = StringFog.decrypt("JeCKZA3pkX0d159a\n", "ZITbEWyF+Ak=\n");
            AbstractC0182.m1156(strDecrypt, strDecrypt, StringFog.decrypt("5NYZOTnVxHrt8QI0MtQ=\n", "grdwVVyx5B4=\n"), th, null, false);
        }
    }
}
