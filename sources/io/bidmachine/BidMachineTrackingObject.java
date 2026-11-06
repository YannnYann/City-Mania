package io.bidmachine;

import io.bidmachine.AdResponseCacheParamsCollector;
import io.bidmachine.models.AdObject;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.tracking.EventData;
import io.bidmachine.tracking.SessionTrackingObject;
import io.bidmachine.utils.BMError;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class BidMachineTrackingObject extends SessionTrackingObject {
    private AdResponse adResponse;
    private final AdResponseCacheParamsCollector cacheParamsCollector;

    public BidMachineTrackingObject() {
        super(k.b().p());
        this.cacheParamsCollector = new AdResponseCacheParamsCollector(null, null, null, null, null, null, 63, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void eventFinish$default(BidMachineTrackingObject bidMachineTrackingObject, TrackEventType trackEventType, boolean z, AdsType adsType, AdResponse adResponse, BMError bMError, Map map, int i, Object obj) {
        if ((i & 32) != 0) {
            map = null;
        }
        bidMachineTrackingObject.eventFinish(trackEventType, z, adsType, adResponse, bMError, map);
    }

    public final void eventFinish(TrackEventType trackEventType, boolean z, AdsType adsType, AdResponse adResponse, BMError bMError) {
        Intrinsics.checkNotNullParameter(trackEventType, "trackEventType");
        eventFinish$default(this, trackEventType, z, adsType, adResponse, bMError, null, 32, null);
    }

    @Override // io.bidmachine.tracking.TrackingObject
    public /* bridge */ /* synthetic */ void eventStart(TrackEventType trackEventType) {
        super.eventStart(trackEventType);
    }

    @Override // io.bidmachine.tracking.TrackingObjectImpl, io.bidmachine.tracking.TrackingObject
    public AdExtension.EventConfiguration getEventConfiguration() {
        AdResponse adResponse = this.adResponse;
        return adResponse == null ? super.getEventConfiguration() : adResponse.getEventConfiguration();
    }

    @Override // io.bidmachine.tracking.TrackingObjectImpl, io.bidmachine.tracking.TrackingObject
    public List<String> getTrackingUrls(TrackEventType eventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        AdResponse adResponse = this.adResponse;
        return adResponse == null ? super.getTrackingUrls(eventType) : adResponse.getTrackUrlListByEvent(eventType);
    }

    public final void setAdResponse(AdResponse adResponse) {
        this.adResponse = adResponse;
    }

    public final void eventFinish(final TrackEventType trackEventType, final boolean z, final AdsType adsType, final AdResponse adResponse, final BMError bMError, final Map<String, Object> map) {
        Intrinsics.checkNotNullParameter(trackEventType, "trackEventType");
        this.cacheParamsCollector.collect(trackEventType, adResponse, new AdResponseCacheParamsCollector.Callback() { // from class: io.bidmachine.BidMachineTrackingObject.eventFinish.1
            @Override // io.bidmachine.AdResponseCacheParamsCollector.Callback
            public void onCollected(Map<String, ? extends Object> cacheParams) {
                Intrinsics.checkNotNullParameter(cacheParams, "cacheParams");
                BidMachineTrackingObject.this.eventFinish(trackEventType, z, adsType, adResponse, bMError, map, cacheParams);
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BidMachineTrackingObject(Object trackingKey) {
        super(trackingKey, k.b().p());
        Intrinsics.checkNotNullParameter(trackingKey, "trackingKey");
        this.cacheParamsCollector = new AdResponseCacheParamsCollector(null, null, null, null, null, null, 63, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void eventFinish(TrackEventType trackEventType, boolean z, AdsType adsType, AdResponse adResponse, BMError bMError, Map<String, ? extends Object> map, Map<String, ? extends Object> map2) {
        Map<String, ? extends Object> customParams;
        EventData isBillable = new EventData().setIsBillable(z);
        if (adResponse != null) {
            isBillable.setNetworkName(adResponse.getAuctionResult().getNetworkKey());
            isBillable.setPrice(Double.valueOf(adResponse.getPrice()));
            AdObject adObject = adResponse.getAdObject();
            if (adObject != null && (customParams = adObject.getCustomParams()) != null && !customParams.isEmpty()) {
                isBillable.addCustomParams(customParams);
            }
            String deal = adResponse.getAuctionResult().getDeal();
            if (deal != null && !StringsKt__StringsKt.isBlank(deal)) {
                isBillable.addCustomParam("deal_id", deal);
            }
        }
        if (map != null && !map.isEmpty()) {
            isBillable.addCustomParams(map);
        }
        if (map2 != null && !map2.isEmpty()) {
            isBillable.addCustomParams(map2);
        }
        eventFinish(trackEventType, adsType, isBillable, bMError);
    }
}
