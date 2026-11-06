package io.bidmachine.util.time;

import java.util.TimeZone;

/* JADX INFO: compiled from: SystemTimeManagerInstance.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SystemTimeManagerInstance implements TimeManagerInstance {
    @Override // io.bidmachine.util.time.TimeManagerInstance
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // io.bidmachine.util.time.TimeManagerInstance
    public String getTimeZoneId() {
        return TimeZone.getDefault().getID();
    }
}
