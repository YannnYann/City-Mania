package io.bidmachine.media3.datasource;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class HttpDataSource$RequestProperties {
    public final Map<String, String> requestProperties = new HashMap();
    public Map<String, String> requestPropertiesSnapshot;

    public synchronized Map<String, String> getSnapshot() {
        try {
            if (this.requestPropertiesSnapshot == null) {
                this.requestPropertiesSnapshot = Collections.unmodifiableMap(new HashMap(this.requestProperties));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.requestPropertiesSnapshot;
    }
}
