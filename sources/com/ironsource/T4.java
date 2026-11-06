package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface T4 {

    public static final class a {
        private final Map<String, Object> a;

        public a(String providerName) {
            Intrinsics.checkNotNullParameter(providerName, "providerName");
            this.a = MapsKt__MapsKt.mutableMapOf(TuplesKt.to(IronSourceConstants.EVENTS_PROVIDER, providerName), TuplesKt.to(IronSourceConstants.EVENTS_DEMAND_ONLY, 1));
        }

        public final void a(String key, Object value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this.a.put(key, value);
        }

        public final Map<String, Object> a() {
            return MapsKt__MapsKt.toMutableMap(this.a);
        }
    }

    void a(D5 d5, He he);

    void a(D5 d5, String str);

    public static final class b implements T4 {
        private final F7 a;
        private final a b;

        public b(F7 eventManager, a eventBaseData) {
            Intrinsics.checkNotNullParameter(eventManager, "eventManager");
            Intrinsics.checkNotNullParameter(eventBaseData, "eventBaseData");
            this.a = eventManager;
            this.b = eventBaseData;
        }

        @Override // com.ironsource.T4
        public void a(D5 eventName, String instanceId) {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Map<String, Object> mapA = this.b.a();
            mapA.put("spId", instanceId);
            this.a.a(new C5(eventName, new JSONObject(MapsKt__MapsKt.toMap(mapA))));
        }

        @Override // com.ironsource.T4
        public void a(D5 eventName, He he) {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            Map<String, Object> mapA = this.b.a();
            if (he != null) {
                mapA.put(IronSourceConstants.EVENTS_EXT1, he.toString());
            }
            this.a.a(new C5(eventName, new JSONObject(MapsKt__MapsKt.toMap(mapA))));
        }
    }
}
