package gatewayprotocol.v1;

import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.RequestUrlOverrideKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestUrlOverrideKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RequestUrlOverrideKtKt {
    /* JADX INFO: renamed from: -initializerequestUrlOverride, reason: not valid java name */
    public static final InitializationResponseOuterClass.RequestUrlOverride m2088initializerequestUrlOverride(Function1<? super RequestUrlOverrideKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        RequestUrlOverrideKt.Dsl.Companion companion = RequestUrlOverrideKt.Dsl.Companion;
        InitializationResponseOuterClass.RequestUrlOverride.Builder builderNewBuilder = InitializationResponseOuterClass.RequestUrlOverride.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        RequestUrlOverrideKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationResponseOuterClass.RequestUrlOverride copy(InitializationResponseOuterClass.RequestUrlOverride requestUrlOverride, Function1<? super RequestUrlOverrideKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(requestUrlOverride, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        RequestUrlOverrideKt.Dsl.Companion companion = RequestUrlOverrideKt.Dsl.Companion;
        InitializationResponseOuterClass.RequestUrlOverride.Builder builder = requestUrlOverride.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        RequestUrlOverrideKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
