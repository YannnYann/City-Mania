package io.bidmachine.analytics;

import com.explorestack.protobuf.Struct;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class AnalyticsConfig {
    private final String a;
    private final List b;
    private final List c;
    private final String d;
    private final Struct e;

    public AnalyticsConfig(String str, List<MonitorConfig> list, List<ReaderConfig> list2, String str2, Struct struct) {
        this.a = str;
        this.b = list;
        this.c = list2;
        this.d = str2;
        this.e = struct;
    }

    public final String getBpk() {
        return this.d;
    }

    public final Struct getExtras() {
        return this.e;
    }

    public final List<MonitorConfig> getMonitorConfigList() {
        return this.b;
    }

    public final List<ReaderConfig> getReaderConfigList() {
        return this.c;
    }

    public final String getSessionId() {
        return this.a;
    }
}
