package io.bidmachine.tracking;

import io.bidmachine.AdsType;
import io.bidmachine.TrackEventType;
import io.bidmachine.utils.BMError;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class SessionTrackerImpl implements SessionTracker {
    public final EventTracker eventTracker;
    public final Map<Object, Map<TrackEventType, TrackEventInfo>> trackEventInfoHolders = new ConcurrentHashMap();

    public SessionTrackerImpl(EventTracker eventTracker) {
        this.eventTracker = eventTracker;
    }

    @Override // io.bidmachine.tracking.SessionTracker
    public void clearTrackingEvent(TrackingObject trackingObject, TrackEventType trackEventType) {
        Map<TrackEventType, TrackEventInfo> map = this.trackEventInfoHolders.get(trackingObject.getTrackingKey());
        if (map != null) {
            map.remove(trackEventType);
        }
    }

    @Override // io.bidmachine.tracking.SessionTracker
    public void clearTrackingEvents(TrackingObject trackingObject) {
        this.trackEventInfoHolders.remove(trackingObject.getTrackingKey());
    }

    @Override // io.bidmachine.tracking.SessionTracker
    public void trackEvent(TrackingObject trackingObject, TrackEventType trackEventType, long j, long j2, AdsType adsType, BMError bMError, EventData eventData) {
        trackEvent(trackingObject, trackEventType, new TrackEventInfo(j, j2), adsType, bMError, eventData);
    }

    @Override // io.bidmachine.tracking.SessionTracker
    public void trackEventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError, EventData eventData) {
        TrackEventInfo trackEventInfo;
        Map<TrackEventType, TrackEventInfo> map = this.trackEventInfoHolders.get(trackingObject.getTrackingKey());
        if (map == null || !map.containsKey(trackEventType)) {
            trackEventInfo = null;
        } else {
            trackEventInfo = map.get(trackEventType);
            if (trackEventInfo != null) {
                trackEventInfo.setFinishTimeMs(System.currentTimeMillis());
            }
            map.remove(trackEventType);
            if (map.isEmpty()) {
                clearTrackingEvents(trackingObject);
            }
        }
        trackEvent(trackingObject, trackEventType, trackEventInfo, adsType, bMError, eventData);
    }

    @Override // io.bidmachine.tracking.SessionTracker
    public void trackEventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo) {
        Object trackingKey = trackingObject.getTrackingKey();
        Map<TrackEventType, TrackEventInfo> enumMap = this.trackEventInfoHolders.get(trackingKey);
        if (enumMap == null) {
            enumMap = new EnumMap<>(TrackEventType.class);
            this.trackEventInfoHolders.put(trackingKey, enumMap);
        }
        if (enumMap.containsKey(trackEventType)) {
            return;
        }
        if (trackEventInfo == null) {
            trackEventInfo = new TrackEventInfo();
        }
        enumMap.put(trackEventType, trackEventInfo);
    }

    @Override // io.bidmachine.tracking.EventTracker
    public void trackEvent(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, AdsType adsType, BMError bMError, EventData eventData) {
        this.eventTracker.trackEvent(trackingObject, trackEventType, trackEventInfo, adsType, bMError, eventData);
    }
}
