package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0708 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0708 f2896;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0663 f2897;

    public C0708(C0663 c0663, C0708 c0708) {
        this.f2897 = c0663;
        this.f2896 = c0708;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ArrayList m1428() {
        ArrayList arrayList = new ArrayList(this.f2897.f2706);
        C0708 c0708 = this.f2896;
        if (c0708 != null) {
            arrayList.addAll(c0708.m1428());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList m1430() {
        ArrayList arrayList = new ArrayList(this.f2897.f2705);
        C0708 c0708 = this.f2896;
        if (c0708 != null) {
            arrayList.addAll(c0708.m1430());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0946 m1427(String str) {
        C0708 c0708;
        C0946 c0946 = (C0946) this.f2897.f2703.get(str);
        return (c0946 != null || (c0708 = this.f2896) == null) ? c0946 : c0708.m1427(str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0987 m1429(String str) {
        C0708 c0708;
        C0987 c0987 = (C0987) this.f2897.f2704.get(str);
        return (c0987 != null || (c0708 = this.f2896) == null) ? c0987 : c0708.m1429(str);
    }
}
