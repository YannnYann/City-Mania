package ads_mobile_sdk;

import com.google.gson.JsonElement;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class xr extends Lambda implements Function1 {
    public static final xr a = new xr();

    public xr() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        JsonElement it = (JsonElement) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        Map<String, JsonElement> mapAsMap = it.getAsJsonObject().asMap();
        Intrinsics.checkNotNullExpressionValue(mapAsMap, "asMap(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(mapAsMap.size()));
        Iterator<T> it2 = mapAsMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(entry.getKey(), ((JsonElement) entry.getValue()).getAsString());
        }
        return linkedHashMap;
    }
}
