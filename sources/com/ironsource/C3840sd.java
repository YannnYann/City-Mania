package com.ironsource;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.sd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3840sd implements D0 {
    private final String a;

    public C3840sd(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        this.a = placementName;
    }

    @Override // com.ironsource.D0
    public Map<String, Object> a(B0 b0) {
        HashMap map = new HashMap();
        map.put("placement", this.a);
        return map;
    }
}
