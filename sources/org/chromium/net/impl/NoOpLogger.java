package org.chromium.net.impl;

import org.chromium.net.impl.CronetLogger;

/* JADX INFO: loaded from: classes5.dex */
public final class NoOpLogger extends CronetLogger {
    @Override // org.chromium.net.impl.CronetLogger
    public long generateId() {
        return 0L;
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineBuilderInitializedInfo(CronetLogger.CronetEngineBuilderInitializedInfo info2) {
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineCreation(long cronetEngineId, CronetLogger.CronetEngineBuilderInfo engineBuilderInfo, CronetLogger.CronetVersion version, CronetLogger.CronetSource source) {
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetTrafficInfo(long cronetEngineId, CronetLogger.CronetTrafficInfo trafficInfo) {
    }
}
