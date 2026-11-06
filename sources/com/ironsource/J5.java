package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class J5 implements D0 {
    public final Map<String, Object> a(C3609g0 adProperties) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        map.put(C3529bb.f, adProperties.a().toString());
        map.put("adf", Integer.valueOf(If.c(adProperties.a())));
        map.put(C3529bb.i, adProperties.b().toString());
        map.put("mediationAdUnitId", adProperties.c());
        map.put("isMultipleAdUnits", 1);
        return map;
    }
}
