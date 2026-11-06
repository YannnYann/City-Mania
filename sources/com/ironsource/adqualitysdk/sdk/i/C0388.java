package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ন, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0388 extends AbstractC0963 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC0963[] f2015;

    public C0388(ArrayList arrayList) {
        AbstractC0963[] abstractC0963Arr = new AbstractC0963[arrayList.size()];
        this.f2015 = abstractC0963Arr;
        arrayList.toArray(abstractC0963Arr);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return Arrays.equals(this.f2015, ((C0388) obj).f2015);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    public final int hashCode() {
        return Arrays.hashCode(this.f2015);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("8Q==\n", "qmn8L4N8Q6M=\n"));
        sb.append(AbstractC0963.m1576(this.f2015));
        return AbstractC0829.m1456("mg==\n", "xzQ8NaxE/+w=\n", sb);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0963
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1030(C0915 c0915, C0048 c0048) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC0963 abstractC0963 : this.f2015) {
            arrayList.add(abstractC0963.m1577(c0915, c0048).f1192);
        }
        return new C0180(arrayList);
    }
}
