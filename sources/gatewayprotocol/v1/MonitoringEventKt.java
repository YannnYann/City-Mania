package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.MonitoringEventRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MonitoringEventKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MonitoringEventKt {
    public static final MonitoringEventKt INSTANCE = new MonitoringEventKt();

    private MonitoringEventKt() {
    }

    /* JADX INFO: compiled from: MonitoringEventKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final MonitoringEventRequestOuterClass.MonitoringEvent.Builder _builder;

        public /* synthetic */ Dsl(MonitoringEventRequestOuterClass.MonitoringEvent.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(MonitoringEventRequestOuterClass.MonitoringEvent.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: MonitoringEventKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(MonitoringEventRequestOuterClass.MonitoringEvent.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ MonitoringEventRequestOuterClass.MonitoringEvent _build() {
            MonitoringEventRequestOuterClass.MonitoringEvent monitoringEventBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(monitoringEventBuild, "build(...)");
            return monitoringEventBuild;
        }

        public final long getImpressionNumber() {
            return this._builder.getImpressionNumber();
        }

        public final void setImpressionNumber(long j) {
            this._builder.setImpressionNumber(j);
        }

        public final void clearImpressionNumber() {
            this._builder.clearImpressionNumber();
        }

        public final MonitoringEventRequestOuterClass.MonitoringEventType getEventType() {
            MonitoringEventRequestOuterClass.MonitoringEventType eventType = this._builder.getEventType();
            Intrinsics.checkNotNullExpressionValue(eventType, "getEventType(...)");
            return eventType;
        }

        public final void setEventType(MonitoringEventRequestOuterClass.MonitoringEventType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setEventType(value);
        }

        public final int getEventTypeValue() {
            return this._builder.getEventTypeValue();
        }

        public final void setEventTypeValue(int i) {
            this._builder.setEventTypeValue(i);
        }

        public final void clearEventType() {
            this._builder.clearEventType();
        }

        public final int getMonitoringId() {
            return this._builder.getMonitoringId();
        }

        public final void setMonitoringId(int i) {
            this._builder.setMonitoringId(i);
        }

        public final void clearMonitoringId() {
            this._builder.clearMonitoringId();
        }

        public final long getDurationMs() {
            return this._builder.getDurationMs();
        }

        public final void setDurationMs(long j) {
            this._builder.setDurationMs(j);
        }

        public final void clearDurationMs() {
            this._builder.clearDurationMs();
        }

        public final boolean hasDurationMs() {
            return this._builder.hasDurationMs();
        }
    }
}
