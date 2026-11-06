package io.bidmachine.tracking;

import io.bidmachine.AdsType;
import io.bidmachine.TrackEventType;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleTrackingObject extends TrackingObjectImpl {
    @Override // io.bidmachine.tracking.TrackingObject
    public void clearEvent(TrackEventType trackEventType) {
    }

    @Override // io.bidmachine.tracking.TrackingObject
    public void eventFinish(TrackEventType trackEventType, AdsType adsType, EventData eventData, BMError bMError) {
    }

    @Override // io.bidmachine.tracking.TrackingObject
    public void eventStart(TrackEventType trackEventType, TrackEventInfo trackEventInfo) {
    }
}
