package io.bidmachine;

import android.util.Pair;
import io.bidmachine.internal.InterfaceC4217a;
import io.bidmachine.internal.InterfaceC4225i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdResponseCacheParamsAdapter implements InterfaceC4225i {
    private final InterfaceC4217a cacheParamsAccessor;

    public AdResponseCacheParamsAdapter(InterfaceC4217a cacheParamsAccessor) {
        Intrinsics.checkNotNullParameter(cacheParamsAccessor, "cacheParamsAccessor");
        this.cacheParamsAccessor = cacheParamsAccessor;
    }

    @Override // io.bidmachine.internal.InterfaceC4225i
    public /* bridge */ /* synthetic */ Object getCacheParams(Object obj, Continuation continuation) {
        return getCacheParams((AdResponse) obj, (Continuation<? super Map<String, ? extends Object>>) continuation);
    }

    public Object getCacheParams(AdResponse adResponse, Continuation<? super Map<String, ? extends Object>> continuation) {
        try {
            InterfaceC4217a interfaceC4217a = this.cacheParamsAccessor;
            AdRequestParameters adRequestParameters = adResponse.getAdRequestParameters();
            Intrinsics.checkNotNullExpressionValue(adRequestParameters, "adRequestParameters");
            List<Pair> listA = interfaceC4217a.a(adRequestParameters);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA, 10));
            for (Pair pair : listA) {
                arrayList.add(MapsKt__MapsKt.mapOf(TuplesKt.to("price", pair.first), TuplesKt.to("request_id", pair.second)));
            }
            Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
            String responseId = adResponse.responseId;
            Intrinsics.checkNotNullExpressionValue(responseId, "responseId");
            mapCreateMapBuilder.put("request_id", responseId);
            mapCreateMapBuilder.put("is_bid_cached", Boxing.boxBoolean(adResponse.isCached()));
            mapCreateMapBuilder.put("price", Boxing.boxDouble(adResponse.getPrice()));
            if (!arrayList.isEmpty()) {
                mapCreateMapBuilder.put("cache", arrayList);
            }
            return MapsKt__MapsJVMKt.mapOf(TuplesKt.to("ad_response_cache", MapsKt__MapsJVMKt.build(mapCreateMapBuilder)));
        } catch (Exception unused) {
            return MapsKt__MapsKt.emptyMap();
        }
    }
}
