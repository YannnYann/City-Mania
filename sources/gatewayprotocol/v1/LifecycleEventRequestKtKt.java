package gatewayprotocol.v1;

import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.LifecycleEventRequestKt;
import gatewayprotocol.v1.LifecycleEventRequestOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LifecycleEventRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LifecycleEventRequestKtKt {
    /* JADX INFO: renamed from: -initializelifecycleEventRequest, reason: not valid java name */
    public static final LifecycleEventRequestOuterClass.LifecycleEventRequest m2069initializelifecycleEventRequest(Function1<? super LifecycleEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        LifecycleEventRequestKt.Dsl.Companion companion = LifecycleEventRequestKt.Dsl.Companion;
        LifecycleEventRequestOuterClass.LifecycleEventRequest.Builder builderNewBuilder = LifecycleEventRequestOuterClass.LifecycleEventRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        LifecycleEventRequestKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final LifecycleEventRequestOuterClass.LifecycleEventRequest copy(LifecycleEventRequestOuterClass.LifecycleEventRequest lifecycleEventRequest, Function1<? super LifecycleEventRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(lifecycleEventRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        LifecycleEventRequestKt.Dsl.Companion companion = LifecycleEventRequestKt.Dsl.Companion;
        LifecycleEventRequestOuterClass.LifecycleEventRequest.Builder builder = lifecycleEventRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        LifecycleEventRequestKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(LifecycleEventRequestOuterClass.LifecycleEventRequestOrBuilder lifecycleEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(lifecycleEventRequestOrBuilder, "<this>");
        if (lifecycleEventRequestOrBuilder.hasStaticDeviceInfo()) {
            return lifecycleEventRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }

    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(LifecycleEventRequestOuterClass.LifecycleEventRequestOrBuilder lifecycleEventRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(lifecycleEventRequestOrBuilder, "<this>");
        if (lifecycleEventRequestOrBuilder.hasDynamicDeviceInfo()) {
            return lifecycleEventRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }
}
