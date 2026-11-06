package io.bidmachine.core;

import io.bidmachine.util.time.SystemTimeManagerInstance;
import io.bidmachine.util.time.TimeManagerInstance;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public final class TimeManager {
    public static final TimeManager INSTANCE = new TimeManager();
    public static TimeManagerInstance instance = new SystemTimeManagerInstance();

    public static final long currentTimeMillis() {
        return instance.currentTimeMillis();
    }

    public final Date currentDate() {
        return new Date(currentTimeMillis());
    }

    public final String getTimezoneId() {
        return instance.getTimeZoneId();
    }
}
