package io.bidmachine.tracking;

import io.bidmachine.AdsType;
import io.bidmachine.TrackEventType;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes5.dex */
public interface SessionTracker extends EventTracker {
    void clearTrackingEvent(TrackingObject trackingObject, TrackEventType trackEventType);

    void clearTrackingEvents(TrackingObject trackingObject);

    void trackEvent(TrackingObject trackingObject, TrackEventType trackEventType, long j, long j2, AdsType adsType, BMError bMError, EventData eventData);

    void trackEventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError, EventData eventData);

    void trackEventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo);
}
