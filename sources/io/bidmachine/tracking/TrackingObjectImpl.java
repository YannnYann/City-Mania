package io.bidmachine.tracking;

import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.AdExtension;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TrackingObjectImpl implements TrackingObject {
    private final Object trackingKey;

    public TrackingObjectImpl() {
        this(UUID.randomUUID());
    }

    @Override // io.bidmachine.tracking.TrackingObject
    public AdExtension.EventConfiguration getEventConfiguration() {
        return null;
    }

    @Override // io.bidmachine.tracking.TrackingObject
    public Object getTrackingKey() {
        return this.trackingKey;
    }

    @Override // io.bidmachine.tracking.TrackingObject
    public List<String> getTrackingUrls(TrackEventType trackEventType) {
        return null;
    }

    public TrackingObjectImpl(Object obj) {
        this.trackingKey = obj;
    }
}
