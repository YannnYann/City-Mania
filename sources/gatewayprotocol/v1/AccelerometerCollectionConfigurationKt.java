package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AccelerometerCollectionConfigurationKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AccelerometerCollectionConfigurationKt {
    public static final AccelerometerCollectionConfigurationKt INSTANCE = new AccelerometerCollectionConfigurationKt();

    private AccelerometerCollectionConfigurationKt() {
    }

    /* JADX INFO: compiled from: AccelerometerCollectionConfigurationKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder _builder;

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: AccelerometerCollectionConfigurationKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ NativeConfigurationOuterClass.AccelerometerCollectionConfiguration _build() {
            NativeConfigurationOuterClass.AccelerometerCollectionConfiguration accelerometerCollectionConfigurationBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(accelerometerCollectionConfigurationBuild, "build(...)");
            return accelerometerCollectionConfigurationBuild;
        }

        public final int getSamplingIntervalMs() {
            return this._builder.getSamplingIntervalMs();
        }

        public final void setSamplingIntervalMs(int i) {
            this._builder.setSamplingIntervalMs(i);
        }

        public final void clearSamplingIntervalMs() {
            this._builder.clearSamplingIntervalMs();
        }

        public final int getMaxSamples() {
            return this._builder.getMaxSamples();
        }

        public final void setMaxSamples(int i) {
            this._builder.setMaxSamples(i);
        }

        public final void clearMaxSamples() {
            this._builder.clearMaxSamples();
        }
    }
}
