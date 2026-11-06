package io.bidmachine.tracking;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class TrackEventInfo {
    public Map<String, Object> eventParameters;
    public long finishTimeMs;
    public long startTimeMs;

    public TrackEventInfo() {
        this(0L, 0L, 3, null);
    }

    public final Map<String, Object> getEventParameters() {
        return this.eventParameters;
    }

    public final long getFinishTimeMs() {
        return this.finishTimeMs;
    }

    public final long getStartTimeMs() {
        return this.startTimeMs;
    }

    public final void setFinishTimeMs(long j) {
        this.finishTimeMs = Math.max(j, this.startTimeMs);
    }

    public final TrackEventInfo withParameter(String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.eventParameters == null) {
            this.eventParameters = new HashMap();
        }
        Map<String, Object> map = this.eventParameters;
        if (map != null) {
            map.put(key, value);
        }
        return this;
    }

    public TrackEventInfo(long j, long j2) {
        this.startTimeMs = j;
        this.finishTimeMs = j2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TrackEventInfo(long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        j = (i & 1) != 0 ? System.currentTimeMillis() : j;
        this(j, (i & 2) != 0 ? j : j2);
    }
}
