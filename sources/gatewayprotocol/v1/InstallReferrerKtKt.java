package gatewayprotocol.v1;

import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.InstallReferrerKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InstallReferrerKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InstallReferrerKtKt {
    /* JADX INFO: renamed from: -initializeinstallReferrer, reason: not valid java name */
    public static final InitializationRequestOuterClass.InstallReferrer m2068initializeinstallReferrer(Function1<? super InstallReferrerKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        InstallReferrerKt.Dsl.Companion companion = InstallReferrerKt.Dsl.Companion;
        InitializationRequestOuterClass.InstallReferrer.Builder builderNewBuilder = InitializationRequestOuterClass.InstallReferrer.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        InstallReferrerKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final InitializationRequestOuterClass.InstallReferrer copy(InitializationRequestOuterClass.InstallReferrer installReferrer, Function1<? super InstallReferrerKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(installReferrer, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        InstallReferrerKt.Dsl.Companion companion = InstallReferrerKt.Dsl.Companion;
        InitializationRequestOuterClass.InstallReferrer.Builder builder = installReferrer.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        InstallReferrerKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
