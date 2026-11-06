package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ȉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0091 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final ArrayList f893;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f894;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Class f895;

    public C0091(Object obj, String str, ArrayList arrayList) {
        if (obj instanceof Class) {
            this.f895 = (Class) obj;
        } else {
            this.f895 = obj.getClass();
        }
        this.f894 = str;
        this.f893 = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0091.class != obj.getClass()) {
            return false;
        }
        C0091 c0091 = (C0091) obj;
        if (this.f895.equals(c0091.f895) && this.f894.equals(c0091.f894)) {
            return this.f893.equals(c0091.f893);
        }
        return false;
    }

    public final int hashCode() {
        return this.f893.hashCode() + ((this.f894.hashCode() + (this.f895.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return StringFog.decrypt("2Sx031NYWxLyIG7eSFVwGe8=\n", "lEkAtzw8H3c=\n") + StringFog.decrypt("BjLT/PMTmZ0HHMLlqw==\n", "a32xlpZw7d4=\n") + this.f895 + StringFog.decrypt("9EMEHipZNJC8LQg+KhB7\n", "2GNpU08tXP8=\n") + this.f894 + '\'' + StringFog.decrypt("90Q44V67EU26FybFX+E=\n", "22RVoCzcUiE=\n") + this.f893 + '}';
    }
}
