package com.ironsource;

import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Md {
    private final Map<String, Ec> a;

    public Md(final JSONObject providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Iterator<String> itKeys = providerSettings.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
        Map<String, Ec> map = MapsKt__MapsKt.toMap(SequencesKt___SequencesKt.map(SequencesKt__SequencesKt.asSequence(itKeys), new Function1() { // from class: com.ironsource.Md$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Md.a(providerSettings, (String) obj);
            }
        }));
        this.a = map;
        for (Map.Entry<String, Ec> entry : map.entrySet()) {
            entry.getKey();
            Ec value = entry.getValue();
            if (b(value)) {
                value.b(a(value));
            }
        }
    }

    private final boolean b(Ec ec) {
        return ec.o() && ec.l().length() > 0;
    }

    public final Map<String, Ec> a() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair a(JSONObject jSONObject, String str) throws JSONException {
        Intrinsics.checkNotNull(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "getJSONObject(...)");
        return TuplesKt.to(str, new Ec(str, jSONObject2));
    }

    private final Ec a(Ec ec) {
        return this.a.get(ec.h());
    }
}
