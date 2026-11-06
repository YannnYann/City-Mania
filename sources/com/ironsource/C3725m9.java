package com.ironsource;

import com.ironsource.environment.ContextProvider;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.m9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3725m9 {
    public static final C3725m9 a = new C3725m9();

    private C3725m9() {
    }

    public static final JSONObject a() throws JSONException {
        new C3528ba().b(ContextProvider.getInstance().getApplicationContext());
        String string = new C3707l9().a().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        We.c(string);
        JSONObject jSONObjectPut = new JSONObject().put("data", Q9.e(C3775p5.b().c(), string));
        Intrinsics.checkNotNull(jSONObjectPut);
        return jSONObjectPut;
    }
}
