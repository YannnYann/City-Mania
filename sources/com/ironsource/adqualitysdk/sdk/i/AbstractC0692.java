package com.ironsource.adqualitysdk.sdk.i;

import android.util.Log;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0692 extends RuntimeException {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Throwable f2816;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0256 f2817;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f2818;

    public AbstractC0692(String str, AbstractC0256 abstractC0256, Throwable th) {
        this.f2818 = str;
        this.f2817 = abstractC0256;
        this.f2816 = th;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(mo1027());
        sb.append(StringFog.decrypt("I4A=\n", "GaA+KRAbn/E=\n"));
        sb.append(this.f2818);
        sb.append('\n');
        sb.append(this.f2817);
        if (this.f2816 != null) {
            str = StringFog.decrypt("80EzyFQIVhCbe2id\n", "+QJSvSdtMjA=\n") + Log.getStackTraceString(this.f2816);
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: renamed from: ﾒ */
    public abstract String mo1027();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1421(String str) {
        AbstractC0923.m1543(str, this.f2818, null, this);
    }
}
