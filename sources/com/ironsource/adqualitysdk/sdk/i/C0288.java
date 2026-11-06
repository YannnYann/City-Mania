package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.י, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0288 extends AbstractC0925 {
    static {
        StringFog.decrypt("uUtzjTW5Gvq0V3eOLbk=\n", "2jkW7EHcSI8=\n");
        StringFog.decrypt("66RxC7rGnVj3hXc2seqY\n", "mdEfRNSL/DE=\n");
        StringFog.decrypt("naYpp3D84ZmEpw67TffNnA==\n", "7cla0z+SrPg=\n");
        StringFog.decrypt("jveg2xegJEaH/bfgPYgpTpDMu902pCw=\n", "/pjTr1PFSCc=\n");
        StringFog.decrypt("jdCPo0Q5WeCRwIKYRQhi5o3AgIg=\n", "/6Xh7Cp6No4=\n");
        StringFog.decrypt("9I8uL4g5I3jqjjg4szgSQ+ySODqj\n", "hOBdW8dXYBc=\n");
        StringFog.decrypt("B/ooayFcyfEO8D9QC3rK/hnwOGsKS/H4BfA6ew==\n", "d5VbH2U5pZA=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static AbstractRunnableC0689 m1220(C0048 c0048, C0915 c0915, ArrayList arrayList) {
        if (AbstractC0925.m1544(arrayList, 0, AbstractRunnableC0689.class)) {
            return (AbstractRunnableC0689) AbstractC0925.m1545(arrayList, 0, AbstractRunnableC0689.class);
        }
        return new C0323(arrayList.size() > 2 ? AbstractC0925.m1546(arrayList, 2) : AbstractC0925.m1546(arrayList, 1), (C0946) AbstractC0925.m1545(arrayList, 0, C0946.class), c0915, c0048);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static long m1219(ArrayList arrayList) {
        int iIntValue;
        if (arrayList.size() > 1 && AbstractC0925.m1544(arrayList, 1, Integer.class)) {
            iIntValue = ((Integer) AbstractC0925.m1545(arrayList, 1, Integer.class)).intValue();
        } else {
            if (arrayList.size() <= 2) {
                return 0L;
            }
            iIntValue = ((Integer) AbstractC0925.m1545(arrayList, 2, Integer.class)).intValue();
        }
        return iIntValue;
    }
}
