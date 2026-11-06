package gatewayprotocol.v1;

import gatewayprotocol.v1.AccelerometerCollectionConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccelerometerCollectionConfigurationKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AccelerometerCollectionConfigurationKtKt {
    /* JADX INFO: renamed from: -initializeaccelerometerCollectionConfiguration, reason: not valid java name */
    public static final NativeConfigurationOuterClass.AccelerometerCollectionConfiguration m2024initializeaccelerometerCollectionConfiguration(Function1<? super AccelerometerCollectionConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AccelerometerCollectionConfigurationKt.Dsl.Companion companion = AccelerometerCollectionConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builderNewBuilder = NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AccelerometerCollectionConfigurationKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final NativeConfigurationOuterClass.AccelerometerCollectionConfiguration copy(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration accelerometerCollectionConfiguration, Function1<? super AccelerometerCollectionConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(accelerometerCollectionConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AccelerometerCollectionConfigurationKt.Dsl.Companion companion = AccelerometerCollectionConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builder = accelerometerCollectionConfiguration.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        AccelerometerCollectionConfigurationKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
