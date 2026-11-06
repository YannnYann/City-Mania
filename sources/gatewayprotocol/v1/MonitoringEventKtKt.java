package gatewayprotocol.v1;

import gatewayprotocol.v1.MonitoringEventKt;
import gatewayprotocol.v1.MonitoringEventRequestOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MonitoringEventKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MonitoringEventKtKt {
    /* JADX INFO: renamed from: -initializemonitoringEvent, reason: not valid java name */
    public static final MonitoringEventRequestOuterClass.MonitoringEvent m2074initializemonitoringEvent(Function1<? super MonitoringEventKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventKt.Dsl.Companion companion = MonitoringEventKt.Dsl.Companion;
        MonitoringEventRequestOuterClass.MonitoringEvent.Builder builderNewBuilder = MonitoringEventRequestOuterClass.MonitoringEvent.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        MonitoringEventKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final MonitoringEventRequestOuterClass.MonitoringEvent copy(MonitoringEventRequestOuterClass.MonitoringEvent monitoringEvent, Function1<? super MonitoringEventKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(monitoringEvent, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        MonitoringEventKt.Dsl.Companion companion = MonitoringEventKt.Dsl.Companion;
        MonitoringEventRequestOuterClass.MonitoringEvent.Builder builder = monitoringEvent.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        MonitoringEventKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
