package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᚁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0626 extends AbstractC0993 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC0679[] f2644;

    public C0626(ArrayList arrayList, byte b) {
        super(b);
        AbstractC0679[] abstractC0679Arr = new AbstractC0679[arrayList.size()];
        this.f2644 = abstractC0679Arr;
        arrayList.toArray(abstractC0679Arr);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            return Arrays.equals(this.f2644, ((C0626) obj).f2644);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    public final int hashCode() {
        return Arrays.hashCode(this.f2644);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("KeM=\n", "Uuk3D6Ng238=\n"));
        for (AbstractC0679 abstractC0679 : this.f2644) {
            byte b = this.f3786;
            for (int i = 0; i < b; i++) {
                sb.append("  ");
            }
            sb.append(abstractC0679.toString());
            sb.append("\n");
        }
        int i2 = this.f3786 - 1;
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("  ");
        }
        sb.append(StringFog.decrypt("kQ==\n", "7GMUK/ybMGE=\n"));
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final C0180 mo1031(C0915 c0915, C0048 c0048) {
        C0180 c0180 = new C0180(null);
        C0915 c09152 = new C0915(new HashMap(), c0915, false);
        int i = c0915.f3489;
        c0915.f3489 = 0;
        for (AbstractC0679 abstractC0679 : this.f2644) {
            c0180 = abstractC0679.m1418(c09152, c0048);
            if (c0180.f1191 || c0180.f1190 || c0180.f1189) {
                c0915.f3489 = i;
                return c0180;
            }
            c0915.f3489++;
        }
        c0915.f3489 = i;
        return c0180;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1048() {
        int iMo1048 = 2;
        for (AbstractC0679 abstractC0679 : this.f2644) {
            iMo1048 += abstractC0679.mo1048();
        }
        return iMo1048;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0679
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1049(C0915 c0915) {
        int iMo1048 = 1;
        for (int i = 0; i < c0915.f3489; i++) {
            iMo1048 += this.f2644[i].mo1048();
        }
        return iMo1048;
    }
}
