package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdViewerResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdViewerResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdViewerResponseKt {
    public static final AdViewerResponseKt INSTANCE = new AdViewerResponseKt();

    private AdViewerResponseKt() {
    }

    /* JADX INFO: compiled from: AdViewerResponseKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final AdViewerResponseOuterClass.AdViewerResponse.Builder _builder;

        public /* synthetic */ Dsl(AdViewerResponseOuterClass.AdViewerResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(AdViewerResponseOuterClass.AdViewerResponse.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: AdViewerResponseKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(AdViewerResponseOuterClass.AdViewerResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ AdViewerResponseOuterClass.AdViewerResponse _build() {
            AdViewerResponseOuterClass.AdViewerResponse adViewerResponseBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(adViewerResponseBuild, "build(...)");
            return adViewerResponseBuild;
        }

        public final ByteString getPayload() {
            ByteString payload = this._builder.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "getPayload(...)");
            return payload;
        }

        public final void setPayload(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPayload(value);
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        public final int getPayloadVersion() {
            return this._builder.getPayloadVersion();
        }

        public final void setPayloadVersion(int i) {
            this._builder.setPayloadVersion(i);
        }

        public final void clearPayloadVersion() {
            this._builder.clearPayloadVersion();
        }

        public final ErrorOuterClass.Error getError() {
            ErrorOuterClass.Error error = this._builder.getError();
            Intrinsics.checkNotNullExpressionValue(error, "getError(...)");
            return error;
        }

        public final void setError(ErrorOuterClass.Error value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setError(value);
        }

        public final void clearError() {
            this._builder.clearError();
        }

        public final boolean hasError() {
            return this._builder.hasError();
        }

        public final ErrorOuterClass.Error getErrorOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return AdViewerResponseKtKt.getErrorOrNull(dsl._builder);
        }
    }
}
