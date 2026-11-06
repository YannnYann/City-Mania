package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0694 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final List f2820;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean f2821;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean f2822;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean f2823;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f2824;

    public C0694(boolean z, boolean z2, boolean z3, boolean z4, ArrayList arrayList) {
        this.f2824 = z;
        this.f2823 = z2;
        this.f2822 = z3;
        this.f2821 = z4;
        this.f2820 = Collections.unmodifiableList(new ArrayList(arrayList));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0694.class != obj.getClass()) {
            return false;
        }
        C0694 c0694 = (C0694) obj;
        if (this.f2824 == c0694.f2824 && this.f2823 == c0694.f2823 && this.f2822 == c0694.f2822 && this.f2821 == c0694.f2821) {
            return this.f2820.equals(c0694.f2820);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2820.hashCode() + ((((((((this.f2824 ? 1 : 0) * 31) + (this.f2823 ? 1 : 0)) * 31) + (this.f2822 ? 1 : 0)) * 31) + (this.f2821 ? 1 : 0)) * 31);
    }

    public final String toString() {
        return StringFog.decrypt("JoiIk73w6UYBkpqTpurqcQqVjou7/u1QKZSSg67B4VcKhY+Cq7g=\n", "b+b758+FhCM=\n") + this.f2824 + StringFog.decrypt("ccycpLIzylU4iLGynibGUjiIyA==\n", "Xez11+pDpSY=\n") + this.f2823 + StringFog.decrypt("ckzQTu9jv2o5C9xP6nKpfj0E3FmW\n", "Xmy5PasG3R8=\n") + this.f2822 + StringFog.decrypt("KdkxCL/UWVV2khwehtBdSGCdZQ==\n", "BflYe/K1Pjw=\n") + this.f2821 + StringFog.decrypt("Orys653XZNxloQ==\n", "Fpzfgvq5BbA=\n") + this.f2820 + '}';
    }
}
