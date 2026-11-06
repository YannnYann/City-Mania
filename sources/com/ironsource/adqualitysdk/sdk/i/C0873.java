package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0873 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f3350;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f3351;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List f3352;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f3353;

    public C0873(boolean z, List list, String str, String str2) {
        this.f3353 = z;
        this.f3352 = Collections.unmodifiableList(new ArrayList(list));
        this.f3351 = str;
        this.f3350 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0873.class == obj.getClass()) {
            C0873 c0873 = (C0873) obj;
            if (this.f3353 != c0873.f3353 || !this.f3352.equals(c0873.f3352)) {
                return false;
            }
            String str = this.f3351;
            if (str == null ? c0873.f3351 != null : !str.equals(c0873.f3351)) {
                return false;
            }
            String str2 = this.f3350;
            String str3 = c0873.f3350;
            if (str2 != null) {
                return str2.equals(str3);
            }
            if (str3 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f3352.hashCode() + ((this.f3353 ? 1 : 0) * 31)) * 31;
        String str = this.f3351;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f3350;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("zE2FUyjLL4jOWplQLdsxielciUAy3Hc=\n", "nD/qJUGvSvo=\n") + this.f3353 + StringFog.decrypt("Da1wcJqUTo9SsA==\n", "IY0DGf36L+M=\n") + this.f3352 + StringFog.decrypt("LI+2227iZwMn\n", "AK/CtAWHCT4=\n") + this.f3351 + '\'' + StringFog.decrypt("EwUsq7pKGuMY\n", "PyVJ2cglaN4=\n") + this.f3350 + "'}";
    }
}
