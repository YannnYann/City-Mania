package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AllowedPiiKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AllowedPiiKt {
    public static final AllowedPiiKt INSTANCE = new AllowedPiiKt();

    private AllowedPiiKt() {
    }

    /* JADX INFO: compiled from: AllowedPiiKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final AllowedPiiOuterClass.AllowedPii.Builder _builder;

        public /* synthetic */ Dsl(AllowedPiiOuterClass.AllowedPii.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(AllowedPiiOuterClass.AllowedPii.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: AllowedPiiKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(AllowedPiiOuterClass.AllowedPii.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ AllowedPiiOuterClass.AllowedPii _build() {
            AllowedPiiOuterClass.AllowedPii allowedPiiBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(allowedPiiBuild, "build(...)");
            return allowedPiiBuild;
        }

        public final boolean getIdfa() {
            return this._builder.getIdfa();
        }

        public final void setIdfa(boolean z) {
            this._builder.setIdfa(z);
        }

        public final void clearIdfa() {
            this._builder.clearIdfa();
        }

        public final boolean getIdfv() {
            return this._builder.getIdfv();
        }

        public final void setIdfv(boolean z) {
            this._builder.setIdfv(z);
        }

        public final void clearIdfv() {
            this._builder.clearIdfv();
        }

        public final boolean getFid() {
            return this._builder.getFid();
        }

        public final void setFid(boolean z) {
            this._builder.setFid(z);
        }

        public final void clearFid() {
            this._builder.clearFid();
        }

        public final boolean getAppsetId() {
            return this._builder.getAppsetId();
        }

        public final void setAppsetId(boolean z) {
            this._builder.setAppsetId(z);
        }

        public final void clearAppsetId() {
            this._builder.clearAppsetId();
        }
    }
}
