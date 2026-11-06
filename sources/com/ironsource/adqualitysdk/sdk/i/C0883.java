package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0883 extends AbstractC0963 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3386 = StringFog.decrypt("ytVN\n", "proqt/eIxGY=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0963[] f3387;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f3388;

    public C0883(String str, ArrayList arrayList) {
        this.f3388 = AbstractC0668.m1416(str);
        AbstractC0963[] abstractC0963Arr = new AbstractC0963[arrayList.size()];
        this.f3387 = abstractC0963Arr;
        arrayList.toArray(abstractC0963Arr);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0883 c0883 = (C0883) obj;
        if (this.f3388.equals(c0883.f3388)) {
            return Arrays.equals(this.f3387, c0883.f3387);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public int hashCode() {
        String str = this.f3388;
        return Arrays.hashCode(this.f3387) + ((str != null ? str.hashCode() : 0) * 31);
    }

    public String toString() {
        return mo1301(this.f3387);
    }

    /* JADX INFO: renamed from: ﾇ */
    public String mo1301(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3388);
        sb.append(StringFog.decrypt("7A==\n", "xK7tYPLVhlU=\n"));
        sb.append(AbstractC0963.m1576(objArr));
        return AbstractC0829.m1456("VQ==\n", "fOIUnvB+E2E=\n", sb);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public C0180 mo1030(C0915 c0915, C0048 c0048) {
        C0946 c0946;
        ArrayList arrayList = new ArrayList();
        for (AbstractC0963 abstractC0963 : this.f3387) {
            arrayList.add(abstractC0963.m1577(c0915, c0048).f1192);
        }
        if (this.f3388.equals(f3386)) {
            AbstractC0923.m1543(StringFog.decrypt("RGVyWe8Gqw==\n", "Fzc+BqNJ7IU=\n"), c0048.m1060() + StringFog.decrypt("l8U=\n", "reUNfk8pgGg=\n") + arrayList.get(0), null, null);
            return new C0180(null);
        }
        try {
            c0946 = (C0946) c0915.m1539(this.f3388);
        } catch (Exception unused) {
            c0946 = null;
        }
        if (c0946 != null) {
            C0180 c0180M1558 = c0946.m1558(c0915, c0915.f3495, c0048, arrayList);
            return c0180M1558 != null ? new C0180(c0180M1558.f1192) : new C0180(null);
        }
        C0946 c0946M1427 = c0048.f654.m1427(this.f3388);
        if (c0946M1427 == null) {
            return new C0180(c0048.f652.mo1012(c0048, this.f3388, arrayList, c0048.f650, c0915));
        }
        C0180 c0180M15582 = c0946M1427.m1558(c0915, c0915.f3495, c0048, arrayList);
        c0180M15582.f1191 = false;
        return c0180M15582;
    }
}
