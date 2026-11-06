package com.ironsource;

import com.ironsource.mediationsdk.demandOnly.a;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.u2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3867u2 {
    public static final b h = new b(null);
    private final String a;
    private final com.ironsource.mediationsdk.demandOnly.a b;
    private final C3939y2 c;
    private final JSONObject d;
    private final JSONObject e;
    private final C3754o2 f;
    private final C3957z2 g;

    /* JADX INFO: renamed from: com.ironsource.u2$a */
    public static final class a {
        private final JSONObject a;
        private final String b;
        private final String c;
        private final com.ironsource.mediationsdk.demandOnly.a d;
        private final C3939y2 e;
        private final JSONObject f;
        private final JSONObject g;
        private final C3754o2 h;
        private final C3957z2 i;

        public a(JSONObject auctionData, String instanceId) {
            Intrinsics.checkNotNullParameter(auctionData, "auctionData");
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            this.a = auctionData;
            this.b = instanceId;
            JSONObject jSONObjectA = a(auctionData);
            this.c = auctionData.optString("auctionId");
            com.ironsource.mediationsdk.demandOnly.a aVarA = a(auctionData, jSONObjectA);
            this.d = aVarA;
            this.e = c(jSONObjectA);
            this.f = d(jSONObjectA);
            this.g = b(jSONObjectA);
            this.h = a(aVarA, instanceId);
            this.i = b(aVarA, instanceId);
        }

        private final JSONObject d(JSONObject jSONObject) {
            return jSONObject.optJSONObject("genericParams");
        }

        public final C3867u2 a() {
            return new C3867u2(this.c, this.d, this.e, this.f, this.g, this.h, this.i);
        }

        public final JSONObject b() {
            return this.a;
        }

        public final String c() {
            return this.b;
        }

        private final JSONObject b(JSONObject jSONObject) {
            return jSONObject.optJSONObject("configurations");
        }

        private final C3939y2 c(JSONObject jSONObject) {
            return new C3939y2(jSONObject);
        }

        private final C3957z2 b(com.ironsource.mediationsdk.demandOnly.a aVar, String str) {
            C3939y2 c3939y2A = aVar.a(str);
            if (c3939y2A == null) {
                return null;
            }
            String strK = c3939y2A.k();
            Intrinsics.checkNotNullExpressionValue(strK, "getServerData(...)");
            return new C3957z2(strK);
        }

        private final JSONObject a(JSONObject jSONObject) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
            return jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        }

        private final com.ironsource.mediationsdk.demandOnly.a a(JSONObject jSONObject, JSONObject jSONObject2) {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(com.ironsource.mediationsdk.d.d);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(com.ironsource.mediationsdk.d.h);
            if (jSONArrayOptJSONArray != null) {
                IntRange intRangeUntil = RangesKt___RangesKt.until(0, jSONArrayOptJSONArray.length());
                ArrayList arrayList2 = new ArrayList();
                Iterator<Integer> it = intRangeUntil.iterator();
                while (it.hasNext()) {
                    int iNextInt = ((IntIterator) it).nextInt();
                    C3939y2 c3939y2 = new C3939y2(jSONArrayOptJSONArray.getJSONObject(iNextInt), iNextInt, jSONObjectOptJSONObject);
                    if (!c3939y2.n()) {
                        c3939y2 = null;
                    }
                    if (c3939y2 != null) {
                        arrayList2.add(c3939y2);
                    }
                }
                arrayList.addAll(arrayList2);
            }
            return new a.C1049a(arrayList);
        }

        private final C3754o2 a(com.ironsource.mediationsdk.demandOnly.a aVar, String str) {
            C3939y2 c3939y2A = aVar.a(str);
            if (c3939y2A == null) {
                return null;
            }
            C3754o2 c3754o2 = new C3754o2();
            c3754o2.a(c3939y2A.b());
            c3754o2.c(c3939y2A.h());
            c3754o2.b(c3939y2A.g());
            return c3754o2;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.u2$b */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Object a(JSONObject auctionData, String instanceId) {
            Intrinsics.checkNotNullParameter(auctionData, "auctionData");
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            return a(new a(auctionData, instanceId).a(), instanceId);
        }

        private b() {
        }

        private final Object a(C3867u2 c3867u2, String str) {
            String strB = c3867u2.b();
            if (strB != null && strB.length() != 0) {
                if (c3867u2.i()) {
                    Result.Companion companion = Result.Companion;
                    return Result.m2760constructorimpl(ResultKt.createFailure(new C3599f8(C3960z5.a.f())));
                }
                C3939y2 c3939y2A = c3867u2.a(str);
                if (c3939y2A == null) {
                    Result.Companion companion2 = Result.Companion;
                    return Result.m2760constructorimpl(ResultKt.createFailure(new C3599f8(C3960z5.a.j())));
                }
                String strK = c3939y2A.k();
                if (strK != null && strK.length() != 0) {
                    return Result.m2760constructorimpl(c3867u2);
                }
                Result.Companion companion3 = Result.Companion;
                return Result.m2760constructorimpl(ResultKt.createFailure(new C3599f8(C3960z5.a.e())));
            }
            Result.Companion companion4 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new C3599f8(C3960z5.a.i())));
        }
    }

    public C3867u2(String str, com.ironsource.mediationsdk.demandOnly.a waterfall, C3939y2 genericNotifications, JSONObject jSONObject, JSONObject jSONObject2, C3754o2 c3754o2, C3957z2 c3957z2) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        Intrinsics.checkNotNullParameter(genericNotifications, "genericNotifications");
        this.a = str;
        this.b = waterfall;
        this.c = genericNotifications;
        this.d = jSONObject;
        this.e = jSONObject2;
        this.f = c3754o2;
        this.g = c3957z2;
    }

    public final String a() {
        C3957z2 c3957z2 = this.g;
        if (c3957z2 != null) {
            return c3957z2.d();
        }
        return null;
    }

    public final String b() {
        return this.a;
    }

    public final C3754o2 c() {
        return this.f;
    }

    public final JSONObject d() {
        return this.e;
    }

    public final C3939y2 e() {
        return this.c;
    }

    public final JSONObject f() {
        return this.d;
    }

    public final C3957z2 g() {
        return this.g;
    }

    public final com.ironsource.mediationsdk.demandOnly.a h() {
        return this.b;
    }

    public final boolean i() {
        return this.b.isEmpty();
    }

    public final C3939y2 a(String providerName) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return a(this.b, providerName);
    }

    private final C3939y2 a(com.ironsource.mediationsdk.demandOnly.a aVar, String str) {
        return aVar.a(str);
    }
}
