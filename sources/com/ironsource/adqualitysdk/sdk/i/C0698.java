package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0698 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f2830;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963 f2831;

    public C0698(AbstractC0963 abstractC0963, String str) {
        this.f2831 = abstractC0963;
        this.f2830 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0698 c0698 = (C0698) obj;
        AbstractC0963 abstractC0963 = this.f2831;
        if (abstractC0963 == null ? c0698.f2831 != null : !abstractC0963.equals(c0698.f2831)) {
            return false;
        }
        String str = this.f2830;
        String str2 = c0698.f2830;
        return str != null ? str.equals(str2) : str2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        AbstractC0963 abstractC0963 = this.f2831;
        int iHashCode = (abstractC0963 != null ? abstractC0963.hashCode() : 0) * 31;
        String str = this.f2830;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return this.f2831.toString() + StringFog.decrypt("Gg==\n", "NNfX5f1Fk9o=\n") + this.f2830;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0946 c0946M1427;
        Object obj = this.f2831.m1577(c0915, c0048).f1192;
        if (!(obj instanceof C0048)) {
            try {
                return new C0180(obj.getClass().getDeclaredField(this.f2830).get(obj));
            } catch (IllegalAccessException | NoSuchFieldException e) {
                StringBuilder sb = new StringBuilder();
                sb.append(StringFog.decrypt("4EXIi9nNoCrEW8+F34SrO4VR04HHieU9xlTfl9jN4g==\n", "pTe65KvtxVw=\n"));
                sb.append(this);
                throw new C0480(c0048, c0915, AbstractC0829.m1456("dA==\n", "UwnzWJF/3JQ=\n", sb), e);
            }
        }
        C0048 c00482 = (C0048) obj;
        String str = this.f2830;
        if (str != null) {
            c0946M1427 = c00482.f654.m1427(str);
        } else {
            c00482.getClass();
            c0946M1427 = null;
        }
        return new C0180(c0946M1427);
    }
}
