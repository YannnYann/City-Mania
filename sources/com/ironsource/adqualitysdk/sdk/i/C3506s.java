package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3506s extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f379;

    public C3506s(String str) {
        this.f379 = AbstractC0668.m1416(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return this.f379.equals(((C3506s) obj).f379);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        String str = this.f379;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return this.f379;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0946 c0946M1427;
        try {
            return new C0180(c0915.m1539(this.f379));
        } catch (Exception e) {
            String str = this.f379;
            if (str != null) {
                c0946M1427 = c0048.f654.m1427(str);
            } else {
                c0048.getClass();
                c0946M1427 = null;
            }
            if (c0946M1427 != null) {
                return new C0180(c0946M1427);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("zpv6Zukgjpbqhf1o72mFh6uM8HnpZZiT4obmKbw=\n", "i+mICZsA6+A=\n"));
            sb.append(this);
            throw new C0480(c0048, c0915, AbstractC0829.m1456("pg==\n", "gXtVeFihnww=\n", sb), e);
        }
    }
}
