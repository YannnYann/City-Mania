package com.ironsource;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3662j0 {
    private final ArrayList<String> a = new ArrayList<>(new C3645i0().a());
    private final T6 b = new T6();

    public final JSONObject a() throws JSONException {
        JSONObject jSONObjectA = this.b.a(this.a);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "getDataByKeys(...)");
        return jSONObjectA;
    }
}
