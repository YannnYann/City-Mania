package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RequestUrlOverrideKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RequestUrlOverrideKt {
    public static final RequestUrlOverrideKt INSTANCE = new RequestUrlOverrideKt();

    private RequestUrlOverrideKt() {
    }

    /* JADX INFO: compiled from: RequestUrlOverrideKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final InitializationResponseOuterClass.RequestUrlOverride.Builder _builder;

        public /* synthetic */ Dsl(InitializationResponseOuterClass.RequestUrlOverride.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(InitializationResponseOuterClass.RequestUrlOverride.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: RequestUrlOverrideKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(InitializationResponseOuterClass.RequestUrlOverride.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ InitializationResponseOuterClass.RequestUrlOverride _build() {
            InitializationResponseOuterClass.RequestUrlOverride requestUrlOverrideBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(requestUrlOverrideBuild, "build(...)");
            return requestUrlOverrideBuild;
        }

        public final InitializationResponseOuterClass.RequestType getRequestType() {
            InitializationResponseOuterClass.RequestType requestType = this._builder.getRequestType();
            Intrinsics.checkNotNullExpressionValue(requestType, "getRequestType(...)");
            return requestType;
        }

        public final void setRequestType(InitializationResponseOuterClass.RequestType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setRequestType(value);
        }

        public final int getRequestTypeValue() {
            return this._builder.getRequestTypeValue();
        }

        public final void setRequestTypeValue(int i) {
            this._builder.setRequestTypeValue(i);
        }

        public final void clearRequestType() {
            this._builder.clearRequestType();
        }

        public final String getUrl() {
            String url = this._builder.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
            return url;
        }

        public final void setUrl(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUrl(value);
        }

        public final void clearUrl() {
            this._builder.clearUrl();
        }
    }
}
