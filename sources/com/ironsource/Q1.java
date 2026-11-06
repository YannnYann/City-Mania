package com.ironsource;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Q1 {
    private final String a;
    private final boolean b;
    private final boolean c;
    private final boolean d;
    private final int e;
    private final String f;
    private final String g;
    private final int h;
    private final int i;
    private final int j;
    private final List<Integer> k;
    private final List<Integer> l;
    private final List<Integer> m;
    private final List<Integer> n;

    public Q1(JSONObject applicationEvents) {
        Intrinsics.checkNotNullParameter(applicationEvents, "applicationEvents");
        String strOptString = applicationEvents.optString("abt");
        Intrinsics.checkNotNull(strOptString);
        this.a = strOptString.length() <= 0 ? null : strOptString;
        this.b = applicationEvents.optBoolean(S1.a, false);
        this.c = applicationEvents.optBoolean(S1.b, false);
        this.d = applicationEvents.optBoolean(S1.c, false);
        this.e = applicationEvents.optInt(S1.d, -1);
        String strOptString2 = applicationEvents.optString(S1.e);
        Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
        this.f = strOptString2;
        String strOptString3 = applicationEvents.optString(S1.f);
        Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
        this.g = strOptString3;
        this.h = applicationEvents.optInt(S1.g, -1);
        this.i = applicationEvents.optInt(S1.h, -1);
        this.j = applicationEvents.optInt(S1.i, 5000);
        this.k = a(applicationEvents, S1.j);
        this.l = a(applicationEvents, S1.k);
        this.m = a(applicationEvents, S1.l);
        this.n = a(applicationEvents, S1.m);
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.h;
    }

    public final boolean c() {
        return this.d;
    }

    public final int d() {
        return this.e;
    }

    public final String e() {
        return this.g;
    }

    public final int f() {
        return this.j;
    }

    public final int g() {
        return this.i;
    }

    public final List<Integer> h() {
        return this.n;
    }

    public final List<Integer> i() {
        return this.l;
    }

    public final List<Integer> j() {
        return this.k;
    }

    public final boolean k() {
        return this.c;
    }

    public final boolean l() {
        return this.b;
    }

    public final String m() {
        return this.f;
    }

    public final List<Integer> n() {
        return this.m;
    }

    private final List<Integer> a(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        IntRange intRangeUntil = RangesKt___RangesKt.until(0, jSONArrayOptJSONArray.length());
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.getInt(((IntIterator) it).nextInt())));
        }
        return arrayList;
    }
}
