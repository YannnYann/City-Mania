package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.AutoValue_EventStoreConfig;
import com.google.auto.value.AutoValue;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes3.dex */
@AutoValue
public abstract class EventStoreConfig {
    public static final EventStoreConfig DEFAULT = builder().setMaxStorageSizeInBytes(10485760).setLoadBatchSize(200).setCriticalSectionEnterTimeoutMs(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS).setEventCleanUpAge(604800000).setMaxBlobByteSizePerRow(81920).build();

    @AutoValue.Builder
    public static abstract class Builder {
        public abstract EventStoreConfig build();

        public abstract Builder setCriticalSectionEnterTimeoutMs(int i);

        public abstract Builder setEventCleanUpAge(long j);

        public abstract Builder setLoadBatchSize(int i);

        public abstract Builder setMaxBlobByteSizePerRow(int i);

        public abstract Builder setMaxStorageSizeInBytes(long j);
    }

    public abstract int getCriticalSectionEnterTimeoutMs();

    public abstract long getEventCleanUpAge();

    public abstract int getLoadBatchSize();

    public abstract int getMaxBlobByteSizePerRow();

    public abstract long getMaxStorageSizeInBytes();

    public static Builder builder() {
        return new AutoValue_EventStoreConfig.Builder();
    }
}
