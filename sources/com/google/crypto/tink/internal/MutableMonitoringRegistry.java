package com.google.crypto.tink.internal;

import com.google.crypto.tink.internal.MonitoringClient;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableMonitoringRegistry {
    public final AtomicReference<MonitoringClient> monitoringClient = new AtomicReference<>();
    public static final MutableMonitoringRegistry GLOBAL_INSTANCE = new MutableMonitoringRegistry();
    public static final DoNothingClient DO_NOTHING_CLIENT = new DoNothingClient();

    public static MutableMonitoringRegistry globalInstance() {
        return GLOBAL_INSTANCE;
    }

    public static class DoNothingClient implements MonitoringClient {
        public DoNothingClient() {
        }

        @Override // com.google.crypto.tink.internal.MonitoringClient
        public MonitoringClient.Logger createLogger(KeysetHandleInterface keysetInfo, MonitoringAnnotations annotations, String primitive, String api) {
            return MonitoringUtil.DO_NOTHING_LOGGER;
        }
    }

    public MonitoringClient getMonitoringClient() {
        MonitoringClient monitoringClient = this.monitoringClient.get();
        return monitoringClient == null ? DO_NOTHING_CLIENT : monitoringClient;
    }
}
