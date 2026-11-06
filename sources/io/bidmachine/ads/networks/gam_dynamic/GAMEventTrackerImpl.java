package io.bidmachine.ads.networks.gam_dynamic;

import io.bidmachine.AdsFormat;
import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.tracking.EventData;
import io.bidmachine.tracking.EventTrackerImpl;
import io.bidmachine.tracking.SimpleTrackingObject;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public class GAMEventTrackerImpl extends EventTrackerImpl implements GAMEventTracker {
    public GAMEventTrackerImpl(AdExtension.EventConfiguration eventConfiguration) {
        super(eventConfiguration);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.GAMEventTracker
    public void trackEvent(TrackEventType trackEventType, AdsFormat adsFormat, EventData eventData, BMError bmError) {
        trackEvent(new SimpleTrackingObject(), trackEventType, null, adsFormat.getAdsType(), bmError, eventData);
    }
}
