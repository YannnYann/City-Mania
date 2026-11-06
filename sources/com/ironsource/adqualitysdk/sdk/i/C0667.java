package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0667 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public C0946 f2718;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public int f2727;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public List f2728;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public Class f2729;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public Class f2730;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Class f2731;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public int f2726 = -1;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public int f2725 = -1;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public int f2724 = -1;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public int f2723 = -1;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public int f2722 = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public int f2721 = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public int f2720 = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public boolean f2719 = true;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0667.class == obj.getClass()) {
            C0667 c0667 = (C0667) obj;
            if (this.f2727 != c0667.f2727 || this.f2726 != c0667.f2726 || this.f2725 != c0667.f2725 || this.f2724 != c0667.f2724 || this.f2723 != c0667.f2723 || this.f2722 != c0667.f2722 || this.f2721 != c0667.f2721 || this.f2720 != c0667.f2720 || this.f2719 != c0667.f2719) {
                return false;
            }
            Class cls = this.f2731;
            if (cls == null ? c0667.f2731 != null : !cls.equals(c0667.f2731)) {
                return false;
            }
            Class cls2 = this.f2730;
            if (cls2 == null ? c0667.f2730 != null : !cls2.equals(c0667.f2730)) {
                return false;
            }
            Class cls3 = this.f2729;
            if (cls3 == null ? c0667.f2729 != null : !cls3.equals(c0667.f2729)) {
                return false;
            }
            List list = this.f2728;
            if (list == null ? c0667.f2728 != null : !list.equals(c0667.f2728)) {
                return false;
            }
            C0946 c0946 = this.f2718;
            C0946 c09462 = c0667.f2718;
            if (c0946 != null) {
                return c0946.equals(c09462);
            }
            if (c09462 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Class cls = this.f2731;
        int iHashCode = (cls != null ? cls.hashCode() : 0) * 31;
        Class cls2 = this.f2730;
        int iHashCode2 = (iHashCode + (cls2 != null ? cls2.hashCode() : 0)) * 31;
        Class cls3 = this.f2729;
        int iHashCode3 = (iHashCode2 + (cls3 != null ? cls3.hashCode() : 0)) * 31;
        List list = this.f2728;
        int iHashCode4 = (((((((((((((((((((iHashCode3 + (list != null ? list.hashCode() : 0)) * 31) + this.f2727) * 31) + this.f2726) * 31) + this.f2725) * 31) + this.f2724) * 31) + this.f2723) * 31) + this.f2722) * 31) + this.f2721) * 31) + this.f2720) * 31) + (this.f2719 ? 1 : 0)) * 31;
        C0946 c0946 = this.f2718;
        return iHashCode4 + (c0946 != null ? c0946.hashCode() : 0);
    }
}
