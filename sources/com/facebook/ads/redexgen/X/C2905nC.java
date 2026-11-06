package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2905nC {
    public double A00;
    public EnumC2911nI A01;
    public EnumC2912nJ A02;
    public String A03;
    public String A04;
    public Map<String, String> A05;
    public boolean A06;

    public final C2905nC A00(double d) {
        this.A00 = d;
        return this;
    }

    public final C2905nC A01(EnumC2911nI enumC2911nI) {
        this.A01 = enumC2911nI;
        return this;
    }

    public final C2905nC A02(EnumC2912nJ enumC2912nJ) {
        this.A02 = enumC2912nJ;
        return this;
    }

    public final C2905nC A03(String str) {
        this.A03 = str;
        return this;
    }

    public final C2905nC A04(String str) {
        this.A04 = str;
        return this;
    }

    public final C2905nC A05(Map<String, String> mData) {
        this.A05 = mData;
        return this;
    }

    public final C2905nC A06(boolean z) {
        this.A06 = z;
        return this;
    }

    public final C2906nD A07(C2780lA c2780lA) {
        return new C2906nD(c2780lA, this.A04, this.A00, this.A03, this.A05, this.A01, this.A02, this.A06);
    }
}
