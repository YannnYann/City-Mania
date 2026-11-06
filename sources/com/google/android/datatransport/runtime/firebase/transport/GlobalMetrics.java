package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.Protobuf;

/* JADX INFO: loaded from: classes3.dex */
public final class GlobalMetrics {
    public static final GlobalMetrics DEFAULT_INSTANCE = new Builder().build();
    public final StorageMetrics storage_metrics_;

    public GlobalMetrics(StorageMetrics storageMetrics) {
        this.storage_metrics_ = storageMetrics;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 1)
    public StorageMetrics getStorageMetricsInternal() {
        return this.storage_metrics_;
    }

    public static final class Builder {
        public StorageMetrics storage_metrics_ = null;

        public GlobalMetrics build() {
            return new GlobalMetrics(this.storage_metrics_);
        }

        public Builder setStorageMetrics(StorageMetrics storageMetrics) {
            this.storage_metrics_ = storageMetrics;
            return this;
        }
    }
}
