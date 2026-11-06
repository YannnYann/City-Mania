package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.MonitoringEventRequestOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MonitoringEventRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MonitoringEventRequestKt {
    public static final MonitoringEventRequestKt INSTANCE = new MonitoringEventRequestKt();

    private MonitoringEventRequestKt() {
    }

    /* JADX INFO: compiled from: MonitoringEventRequestKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder _builder;

        public /* synthetic */ Dsl(MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: MonitoringEventRequestKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ MonitoringEventRequestOuterClass.MonitoringEventRequest _build() {
            MonitoringEventRequestOuterClass.MonitoringEventRequest monitoringEventRequestBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(monitoringEventRequestBuild, "build(...)");
            return monitoringEventRequestBuild;
        }

        public final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo = this._builder.getStaticDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(staticDeviceInfo, "getStaticDeviceInfo(...)");
            return staticDeviceInfo;
        }

        public final void setStaticDeviceInfo(StaticDeviceInfoOuterClass.StaticDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStaticDeviceInfo(value);
        }

        public final void clearStaticDeviceInfo() {
            this._builder.clearStaticDeviceInfo();
        }

        public final boolean hasStaticDeviceInfo() {
            return this._builder.hasStaticDeviceInfo();
        }

        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo = this._builder.getDynamicDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(dynamicDeviceInfo, "getDynamicDeviceInfo(...)");
            return dynamicDeviceInfo;
        }

        public final void setDynamicDeviceInfo(DynamicDeviceInfoOuterClass.DynamicDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDynamicDeviceInfo(value);
        }

        public final void clearDynamicDeviceInfo() {
            this._builder.clearDynamicDeviceInfo();
        }

        public final boolean hasDynamicDeviceInfo() {
            return this._builder.hasDynamicDeviceInfo();
        }

        public final MonitoringEventRequestOuterClass.MonitoringEvent getMonitoringEvent() {
            MonitoringEventRequestOuterClass.MonitoringEvent monitoringEvent = this._builder.getMonitoringEvent();
            Intrinsics.checkNotNullExpressionValue(monitoringEvent, "getMonitoringEvent(...)");
            return monitoringEvent;
        }

        public final void setMonitoringEvent(MonitoringEventRequestOuterClass.MonitoringEvent value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMonitoringEvent(value);
        }

        public final void clearMonitoringEvent() {
            this._builder.clearMonitoringEvent();
        }

        public final boolean hasMonitoringEvent() {
            return this._builder.hasMonitoringEvent();
        }
    }
}
