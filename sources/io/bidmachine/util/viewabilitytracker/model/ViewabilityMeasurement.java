package io.bidmachine.util.viewabilitytracker.model;

/* JADX INFO: compiled from: ViewabilityMeasurement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityMeasurement {
    public final int count;
    public final Long failureTimeoutMs;
    public final long intervalMs;

    public ViewabilityMeasurement(int i, long j, Long l) {
        this.count = i;
        this.intervalMs = j;
        this.failureTimeoutMs = l;
    }

    public final int getCount() {
        return this.count;
    }

    public final Long getFailureTimeoutMs() {
        return this.failureTimeoutMs;
    }

    public final long getIntervalMs() {
        return this.intervalMs;
    }
}
