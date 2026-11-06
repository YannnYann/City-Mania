package io.bidmachine.analytics.internal.i;

import io.bidmachine.analytics.internal.a.f;
import io.bidmachine.analytics.internal.i.AbstractC4127a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt__RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.i.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C4128b implements AbstractC4127a.InterfaceC1123a {
    public static final a f = new a(null);
    private final f a;
    private final f b;
    private final f c;
    private final f d;
    private final Map e;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.i.b$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C4128b a(String str) {
            Iterator<String> itKeys;
            try {
                if (StringsKt__StringsKt.isBlank(str)) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(str);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("afpath");
                if (jSONObjectOptJSONObject != null && (itKeys = jSONObjectOptJSONObject.keys()) != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        f fVarA = f.d.a(next);
                        if (fVarA != null) {
                            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(next);
                            if (jSONArrayOptJSONArray == null) {
                                jSONArrayOptJSONArray = new JSONArray();
                            }
                            ArrayList arrayList = new ArrayList();
                            int length = jSONArrayOptJSONArray.length();
                            for (int i = 0; i < length; i++) {
                                arrayList.add(jSONArrayOptJSONArray.optString(i));
                            }
                            linkedHashMap.put(fVarA, arrayList);
                        }
                    }
                }
                f.a aVar = f.d;
                return new C4128b(aVar.a(jSONObject.optString("afmin")), aVar.a(jSONObject.optString("afmax")), aVar.a(jSONObject.optString("adjmin")), aVar.a(jSONObject.optString("adjmax")), linkedHashMap);
            } catch (Throwable unused) {
                return null;
            }
        }

        private a() {
        }
    }

    public C4128b(f fVar, f fVar2, f fVar3, f fVar4, Map map) {
        this.a = fVar;
        this.b = fVar2;
        this.c = fVar3;
        this.d = fVar4;
        this.e = map;
    }

    public final Map a() {
        return this.e;
    }

    public final boolean b(f fVar) {
        return a(fVar, this.a, this.b);
    }

    public final boolean a(f fVar) {
        return a(fVar, this.c, this.d);
    }

    private final boolean a(f fVar, f fVar2, f fVar3) {
        if (fVar == null || fVar2 == null || fVar3 == null) {
            return false;
        }
        return RangesKt__RangesKt.rangeTo(fVar2, fVar3).contains(fVar);
    }
}
