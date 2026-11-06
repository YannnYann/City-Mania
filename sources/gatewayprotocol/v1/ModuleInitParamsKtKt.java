package gatewayprotocol.v1;

import gatewayprotocol.v1.ModuleInitParamsKt;
import gatewayprotocol.v1.ModuleInitParamsOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleInitParamsKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ModuleInitParamsKtKt {
    /* JADX INFO: renamed from: -initializemoduleInitParams, reason: not valid java name */
    public static final ModuleInitParamsOuterClass.ModuleInitParams m2072initializemoduleInitParams(Function1<? super ModuleInitParamsKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ModuleInitParamsKt.Dsl.Companion companion = ModuleInitParamsKt.Dsl.Companion;
        ModuleInitParamsOuterClass.ModuleInitParams.Builder builderNewBuilder = ModuleInitParamsOuterClass.ModuleInitParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        ModuleInitParamsKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final ModuleInitParamsOuterClass.ModuleInitParams copy(ModuleInitParamsOuterClass.ModuleInitParams moduleInitParams, Function1<? super ModuleInitParamsKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(moduleInitParams, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ModuleInitParamsKt.Dsl.Companion companion = ModuleInitParamsKt.Dsl.Companion;
        ModuleInitParamsOuterClass.ModuleInitParams.Builder builder = moduleInitParams.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        ModuleInitParamsKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
