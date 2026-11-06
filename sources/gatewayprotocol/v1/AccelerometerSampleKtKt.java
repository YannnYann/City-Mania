package gatewayprotocol.v1;

import com.google.protobuf.Timestamp;
import gatewayprotocol.v1.AccelerometerSampleKt;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccelerometerSampleKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AccelerometerSampleKtKt {
    /* JADX INFO: renamed from: -initializeaccelerometerSample, reason: not valid java name */
    public static final DynamicDeviceInfoOuterClass.AccelerometerSample m2025initializeaccelerometerSample(Function1<? super AccelerometerSampleKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AccelerometerSampleKt.Dsl.Companion companion = AccelerometerSampleKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builderNewBuilder = DynamicDeviceInfoOuterClass.AccelerometerSample.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AccelerometerSampleKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final DynamicDeviceInfoOuterClass.AccelerometerSample copy(DynamicDeviceInfoOuterClass.AccelerometerSample accelerometerSample, Function1<? super AccelerometerSampleKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(accelerometerSample, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AccelerometerSampleKt.Dsl.Companion companion = AccelerometerSampleKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builder = accelerometerSample.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        AccelerometerSampleKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final Timestamp getClientTimestampOrNull(DynamicDeviceInfoOuterClass.AccelerometerSampleOrBuilder accelerometerSampleOrBuilder) {
        Intrinsics.checkNotNullParameter(accelerometerSampleOrBuilder, "<this>");
        if (accelerometerSampleOrBuilder.hasClientTimestamp()) {
            return accelerometerSampleOrBuilder.getClientTimestamp();
        }
        return null;
    }
}
