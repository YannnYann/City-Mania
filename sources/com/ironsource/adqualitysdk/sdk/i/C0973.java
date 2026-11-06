package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ｊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0973 extends AbstractC0925 {
    static {
        StringFog.decrypt("2AC8\n", "tWHMGx7SaDE=\n");
        StringFog.decrypt("nM/yU8YpDA==\n", "+qCAFqdKZKM=\n");
        StringFog.decrypt("6HhDc7a3\n", "jhEvB9PF6tM=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m1582(C0048 c0048, ArrayList arrayList) {
        List list = (List) AbstractC0925.m1545(arrayList, 0, List.class);
        C0946 c0946 = (C0946) AbstractC0925.m1545(arrayList, 1, C0946.class);
        List arrayList2 = new ArrayList();
        if (arrayList.size() > 2) {
            if (AbstractC0925.m1544(arrayList, 2, C0048.class)) {
                c0048 = (C0048) AbstractC0925.m1545(arrayList, 2, C0048.class);
                if (arrayList.size() > 3) {
                    arrayList2 = AbstractC0925.m1546(arrayList, 3);
                }
            } else {
                arrayList2 = AbstractC0925.m1546(arrayList, 2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList2.add(0, list.get(i));
            C0915 c0915 = c0048.f653;
            c0946.getClass();
            arrayList3.add(c0946.m1558(c0915, c0915.f3495, c0048, arrayList2).f1192);
            arrayList2.remove(0);
        }
        return arrayList3;
    }
}
