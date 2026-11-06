package com.ironsource;

import java.util.HashSet;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class N1 {
    private final boolean a;
    private final HashSet<String> b;
    private final String c;
    private final String d;
    private final boolean e;
    private final int f;
    private final boolean g;

    public N1(JSONObject applicationCrashReporterSettings) throws JSONException {
        Intrinsics.checkNotNullParameter(applicationCrashReporterSettings, "applicationCrashReporterSettings");
        this.a = applicationCrashReporterSettings.optBoolean("enabled", false);
        List<String> listB = C3780pa.b(applicationCrashReporterSettings.optJSONArray(P1.b));
        this.b = listB != null ? CollectionsKt___CollectionsKt.toHashSet(listB) : null;
        String strOptString = applicationCrashReporterSettings.optString(P1.c);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        this.c = strOptString;
        String strOptString2 = applicationCrashReporterSettings.optString(P1.d);
        Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
        this.d = strOptString2;
        this.e = applicationCrashReporterSettings.optBoolean(P1.e, false);
        this.f = applicationCrashReporterSettings.optInt("timeout", 5000);
        this.g = applicationCrashReporterSettings.optBoolean(P1.g, false);
    }

    public final int a() {
        return this.f;
    }

    public final HashSet<String> b() {
        return this.b;
    }

    public final String c() {
        return this.d;
    }

    public final String d() {
        return this.c;
    }

    public final boolean e() {
        return this.e;
    }

    public final boolean f() {
        return this.a;
    }

    public final boolean g() {
        return this.g;
    }
}
