package gatewayprotocol.v1;

import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccelerometerSampleKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AccelerometerSampleKt {
    public static final AccelerometerSampleKt INSTANCE = new AccelerometerSampleKt();

    private AccelerometerSampleKt() {
    }

    /* JADX INFO: compiled from: AccelerometerSampleKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final DynamicDeviceInfoOuterClass.AccelerometerSample.Builder _builder;

        public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: AccelerometerSampleKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.AccelerometerSample.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ DynamicDeviceInfoOuterClass.AccelerometerSample _build() {
            DynamicDeviceInfoOuterClass.AccelerometerSample accelerometerSampleBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(accelerometerSampleBuild, "build(...)");
            return accelerometerSampleBuild;
        }

        public final Timestamp getClientTimestamp() {
            Timestamp clientTimestamp = this._builder.getClientTimestamp();
            Intrinsics.checkNotNullExpressionValue(clientTimestamp, "getClientTimestamp(...)");
            return clientTimestamp;
        }

        public final void setClientTimestamp(Timestamp value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setClientTimestamp(value);
        }

        public final void clearClientTimestamp() {
            this._builder.clearClientTimestamp();
        }

        public final boolean hasClientTimestamp() {
            return this._builder.hasClientTimestamp();
        }

        public final float getX() {
            return this._builder.getX();
        }

        public final void setX(float f) {
            this._builder.setX(f);
        }

        public final void clearX() {
            this._builder.clearX();
        }

        public final float getY() {
            return this._builder.getY();
        }

        public final void setY(float f) {
            this._builder.setY(f);
        }

        public final void clearY() {
            this._builder.clearY();
        }

        public final float getZ() {
            return this._builder.getZ();
        }

        public final void setZ(float f) {
            this._builder.setZ(f);
        }

        public final void clearZ() {
            this._builder.clearZ();
        }
    }
}
