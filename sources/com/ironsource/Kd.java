package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Kd {
    private final Map<LevelPlay.AdFormat, a> a;

    public static final class a {
        public static final C0031a c = new C0031a(null);
        private static final String d = "adUnitId";
        private static final String e = "instances";
        private final Map<String, b> a;
        private final List<c> b;

        /* JADX INFO: renamed from: com.ironsource.Kd$a$a, reason: collision with other inner class name */
        public static final class C0031a {
            public /* synthetic */ C0031a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0031a() {
            }
        }

        public a(JSONObject adFormatProviderOrder) throws JSONException {
            Intrinsics.checkNotNullParameter(adFormatProviderOrder, "adFormatProviderOrder");
            List<String> listB = C3780pa.b(adFormatProviderOrder.names());
            listB = listB == null ? CollectionsKt__CollectionsKt.emptyList() : listB;
            ArrayList arrayList = new ArrayList();
            for (Object obj : listB) {
                if (!Intrinsics.areEqual((String) obj, "preload")) {
                    arrayList.add(obj);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10)), 16));
            for (Object obj2 : arrayList) {
                JSONArray jSONArrayOptJSONArray = adFormatProviderOrder.optJSONArray((String) obj2);
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                linkedHashMap.put(obj2, new b(jSONArrayOptJSONArray));
            }
            this.a = linkedHashMap;
            this.b = b(adFormatProviderOrder);
        }

        public final Map<String, b> a() {
            return this.a;
        }

        public final List<c> b() {
            return this.b;
        }

        private final c a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            String strOptString = jSONObject.has("adUnitId") ? jSONObject.optString("adUnitId") : null;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("instances");
            return new c(strOptString, jSONArrayOptJSONArray != null ? C3780pa.b(jSONArrayOptJSONArray) : null);
        }

        private final List<c> b(JSONObject jSONObject) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("preload");
            if (jSONArrayOptJSONArray == null) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            IntRange intRangeUntil = RangesKt___RangesKt.until(0, jSONArrayOptJSONArray.length());
            ArrayList arrayList = new ArrayList();
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                c cVarA = a(jSONArrayOptJSONArray.optJSONObject(((IntIterator) it).nextInt()));
                if (cVarA != null) {
                    arrayList.add(cVarA);
                }
            }
            return arrayList;
        }
    }

    public static final class b {
        private final List<String> a;

        public b(JSONArray providerOrder) throws JSONException {
            Intrinsics.checkNotNullParameter(providerOrder, "providerOrder");
            List<String> listB = C3780pa.b(providerOrder);
            Intrinsics.checkNotNullExpressionValue(listB, "jsonArrayToStringList(...)");
            this.a = listB;
        }

        public final List<String> a() {
            return this.a;
        }
    }

    public static final class c {
        private final String a;
        private final List<String> b;

        public c(String str, List<String> list) {
            this.a = str;
            this.b = list;
        }

        public final String a() {
            return this.a;
        }

        public final List<String> b() {
            return this.b;
        }

        public final String c() {
            return this.a;
        }

        public final List<String> d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.areEqual(this.a, cVar.a) && Intrinsics.areEqual(this.b, cVar.b);
        }

        public int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            List<String> list = this.b;
            return iHashCode + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "AdUnitPreloadConfig(adUnitId=" + this.a + ", instanceIds=" + this.b + ")";
        }

        public final c a(String str, List<String> list) {
            return new c(str, list);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ c a(c cVar, String str, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cVar.a;
            }
            if ((i & 2) != 0) {
                list = cVar.b;
            }
            return cVar.a(str, list);
        }
    }

    public Kd(JSONObject providerOrder) {
        Intrinsics.checkNotNullParameter(providerOrder, "providerOrder");
        LevelPlay.AdFormat[] adFormatArrValues = LevelPlay.AdFormat.values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(adFormatArrValues.length), 16));
        for (LevelPlay.AdFormat adFormat : adFormatArrValues) {
            JSONObject jSONObjectOptJSONObject = providerOrder.optJSONObject(If.a(adFormat));
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
            }
            linkedHashMap.put(adFormat, new a(jSONObjectOptJSONObject));
        }
        this.a = linkedHashMap;
    }

    public final Map<LevelPlay.AdFormat, a> a() {
        return this.a;
    }

    public final List<c> a(LevelPlay.AdFormat adFormat) {
        List<c> listB;
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        a aVar = this.a.get(adFormat);
        return (aVar == null || (listB = aVar.b()) == null) ? CollectionsKt__CollectionsKt.emptyList() : listB;
    }
}
