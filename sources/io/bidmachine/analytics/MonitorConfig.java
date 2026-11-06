package io.bidmachine.analytics;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class MonitorConfig {
    private final String a;
    private final String b;
    private final int c;
    private final long d;
    private final boolean e;
    private final Filter f;
    private final ConfigExtension g;

    public interface ConfigExtension {
    }

    public static final class GenericConfigExtension implements ConfigExtension {
        private final String a;

        /* JADX WARN: Multi-variable type inference failed */
        public GenericConfigExtension() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public final String getConfig() {
            return this.a;
        }

        public GenericConfigExtension(String str) {
            this.a = str;
        }

        public /* synthetic */ GenericConfigExtension(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str);
        }
    }

    public static final class ImpConfigExtension implements ConfigExtension {
        private final String a;
        private final long b;

        public /* synthetic */ ImpConfigExtension(String str, long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j);
        }

        public final String getIaaQuery() {
            return this.a;
        }

        /* JADX INFO: renamed from: getRecordsTtl-UwyO8pc, reason: not valid java name */
        public final long m2540getRecordsTtlUwyO8pc() {
            return this.b;
        }

        private ImpConfigExtension(String str, long j) {
            this.a = str;
            this.b = j;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ ImpConfigExtension(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            DefaultConstructorMarker defaultConstructorMarker2 = null;
            str = (i & 1) != 0 ? null : str;
            if ((i & 2) != 0) {
                Duration.Companion companion = Duration.Companion;
                j = DurationKt.toDuration(90, DurationUnit.DAYS);
            }
            this(str, j, defaultConstructorMarker2);
        }
    }

    public MonitorConfig(String str, String str2, int i, long j, boolean z, Filter filter, ConfigExtension configExtension) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = j;
        this.e = z;
        this.f = filter;
        this.g = configExtension;
    }

    public final int getBatchSize() {
        return this.c;
    }

    public final ConfigExtension getConfigExtension() {
        return this.g;
    }

    public final Filter getFilter() {
        return this.f;
    }

    public final long getInterval() {
        return this.d;
    }

    public final String getName() {
        return this.a;
    }

    public final String getUrl() {
        return this.b;
    }

    public final boolean isReportEnabled() {
        return this.e;
    }

    public /* synthetic */ MonitorConfig(String str, String str2, int i, long j, boolean z, Filter filter, ConfigExtension configExtension, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i, j, z, filter, (i2 & 64) != 0 ? null : configExtension);
    }
}
