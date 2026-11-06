package gatewayprotocol.v1;

import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.MonitoringEventRequestKt;
import gatewayprotocol.v1.MonitoringEventRequestOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MonitoringEventRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MonitoringEventRequestKtKt {
    /* JADX INFO: renamed from: -initializemonitoringEventRequest, reason: not valid java name */
    public static final MonitoringEventRequestOuterClass.MonitoringEventRequest m2075initializemonitoringEventRequest(Function1<? super MonitoringEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventRequestKt.Dsl.Companion companion = MonitoringEventRequestKt.Dsl.Companion;
        MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder builderNewBuilder = MonitoringEventRequestOuterClass.MonitoringEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        MonitoringEventRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final MonitoringEventRequestOuterClass.MonitoringEventRequest copy(MonitoringEventRequestOuterClass.MonitoringEventRequest monitoringEventRequest, Function1<? super MonitoringEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(monitoringEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventRequestKt.Dsl.Companion companion = MonitoringEventRequestKt.Dsl.Companion;
        MonitoringEventRequestOuterClass.MonitoringEventRequest.Builder builder = monitoringEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        MonitoringEventRequestKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(MonitoringEventRequestOuterClass.MonitoringEventRequestOrBuilder monitoringEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(monitoringEventRequestOrBuilder, "<this>");
        if (monitoringEventRequestOrBuilder.hasStaticDeviceInfo()) {
            return monitoringEventRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }

    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(MonitoringEventRequestOuterClass.MonitoringEventRequestOrBuilder monitoringEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(monitoringEventRequestOrBuilder, "<this>");
        if (monitoringEventRequestOrBuilder.hasDynamicDeviceInfo()) {
            return monitoringEventRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    public static final MonitoringEventRequestOuterClass.MonitoringEvent getMonitoringEventOrNull(MonitoringEventRequestOuterClass.MonitoringEventRequestOrBuilder monitoringEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(monitoringEventRequestOrBuilder, "<this>");
        if (monitoringEventRequestOrBuilder.hasMonitoringEvent()) {
            return monitoringEventRequestOrBuilder.getMonitoringEvent();
        }
        return null;
    }
}
