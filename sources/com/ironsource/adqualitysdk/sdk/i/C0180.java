package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ι, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0180 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public boolean f1189;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public boolean f1190;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f1191;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object f1192;

    public C0180(Object obj) {
        this.f1192 = obj;
    }

    public final String toString() {
        if (this.f1192 instanceof String) {
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("Gw==\n", "OdAS6mWYMic=\n"));
            sb.append(this.f1192);
            return AbstractC0829.m1456("IQ==\n", "A1tL1wayQt0=\n", sb);
        }
        return this.f1192 + "";
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Number m1143() {
        Object obj = this.f1192;
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof Double) {
            return (Double) obj;
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1144() {
        Object obj = this.f1192;
        if (obj == null) {
            return false;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() != 0;
        }
        if (obj instanceof Long) {
            return ((Long) obj).longValue() != 0;
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue() != 0.0d;
        }
        if (obj instanceof String) {
            return !TextUtils.isEmpty((String) obj);
        }
        return true;
    }
}
