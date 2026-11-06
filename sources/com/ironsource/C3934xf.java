package com.ironsource;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.xf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3934xf extends K4 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3934xf(AbstractC3919x0 adUnitData, Mg waterfallInstances) {
        super(adUnitData, waterfallInstances);
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
    }

    private final int b(A a) {
        return a.h().l();
    }

    @Override // com.ironsource.G
    public boolean a(A instance, Mg waterfallInstances) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        return a(waterfallInstances) < b(instance);
    }

    private final int a(Mg mg) {
        Integer num;
        List<A> listB = mg.b();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listB) {
            if (((A) obj).x()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Integer numValueOf = Integer.valueOf(b((A) it.next()));
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(b((A) it.next()));
                if (numValueOf.compareTo(numValueOf2) > 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        return num != null ? num.intValue() : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }
}
