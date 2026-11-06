package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OperativeEventErrorDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class OperativeEventErrorDataKt {
    public static final OperativeEventErrorDataKt INSTANCE = new OperativeEventErrorDataKt();

    private OperativeEventErrorDataKt() {
    }

    /* JADX INFO: compiled from: OperativeEventErrorDataKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final OperativeEventRequestOuterClass.OperativeEventErrorData.Builder _builder;

        public /* synthetic */ Dsl(OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: OperativeEventErrorDataKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ OperativeEventRequestOuterClass.OperativeEventErrorData _build() {
            OperativeEventRequestOuterClass.OperativeEventErrorData operativeEventErrorDataBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(operativeEventErrorDataBuild, "build(...)");
            return operativeEventErrorDataBuild;
        }

        public final OperativeEventRequestOuterClass.OperativeEventErrorType getErrorType() {
            OperativeEventRequestOuterClass.OperativeEventErrorType errorType = this._builder.getErrorType();
            Intrinsics.checkNotNullExpressionValue(errorType, "getErrorType(...)");
            return errorType;
        }

        public final void setErrorType(OperativeEventRequestOuterClass.OperativeEventErrorType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setErrorType(value);
        }

        public final int getErrorTypeValue() {
            return this._builder.getErrorTypeValue();
        }

        public final void setErrorTypeValue(int i) {
            this._builder.setErrorTypeValue(i);
        }

        public final void clearErrorType() {
            this._builder.clearErrorType();
        }

        public final String getMessage() {
            String message = this._builder.getMessage();
            Intrinsics.checkNotNullExpressionValue(message, "getMessage(...)");
            return message;
        }

        public final void setMessage(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMessage(value);
        }

        public final void clearMessage() {
            this._builder.clearMessage();
        }

        public final ByteString getErrorToken() {
            ByteString errorToken = this._builder.getErrorToken();
            Intrinsics.checkNotNullExpressionValue(errorToken, "getErrorToken(...)");
            return errorToken;
        }

        public final void setErrorToken(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setErrorToken(value);
        }

        public final void clearErrorToken() {
            this._builder.clearErrorToken();
        }

        public final boolean hasErrorToken() {
            return this._builder.hasErrorToken();
        }
    }
}
