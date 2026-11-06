package gatewayprotocol.v1;

import gatewayprotocol.v1.ModuleKt;
import gatewayprotocol.v1.ModuleOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ModuleKtKt {
    /* JADX INFO: renamed from: -initializemodule, reason: not valid java name */
    public static final ModuleOuterClass.Module m2073initializemodule(Function1<? super ModuleKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ModuleKt.Dsl.Companion companion = ModuleKt.Dsl.Companion;
        ModuleOuterClass.Module.Builder builderNewBuilder = ModuleOuterClass.Module.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        ModuleKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final ModuleOuterClass.Module copy(ModuleOuterClass.Module module, Function1<? super ModuleKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(module, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ModuleKt.Dsl.Companion companion = ModuleKt.Dsl.Companion;
        ModuleOuterClass.Module.Builder builder = module.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        ModuleKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
