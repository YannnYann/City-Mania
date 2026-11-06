package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TransactionDataKt {
    public static final TransactionDataKt INSTANCE = new TransactionDataKt();

    private TransactionDataKt() {
    }

    /* JADX INFO: compiled from: TransactionDataKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final TransactionEventRequestOuterClass.TransactionData.Builder _builder;

        public /* synthetic */ Dsl(TransactionEventRequestOuterClass.TransactionData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public static /* synthetic */ void getReceipt$annotations() {
        }

        private Dsl(TransactionEventRequestOuterClass.TransactionData.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: TransactionDataKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(TransactionEventRequestOuterClass.TransactionData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ TransactionEventRequestOuterClass.TransactionData _build() {
            TransactionEventRequestOuterClass.TransactionData transactionDataBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(transactionDataBuild, "build(...)");
            return transactionDataBuild;
        }

        public final Timestamp getTimestamp() {
            Timestamp timestamp = this._builder.getTimestamp();
            Intrinsics.checkNotNullExpressionValue(timestamp, "getTimestamp(...)");
            return timestamp;
        }

        public final void setTimestamp(Timestamp value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTimestamp(value);
        }

        public final void clearTimestamp() {
            this._builder.clearTimestamp();
        }

        public final boolean hasTimestamp() {
            return this._builder.hasTimestamp();
        }

        public final String getProductId() {
            String productId = this._builder.getProductId();
            Intrinsics.checkNotNullExpressionValue(productId, "getProductId(...)");
            return productId;
        }

        public final void setProductId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setProductId(value);
        }

        public final void clearProductId() {
            this._builder.clearProductId();
        }

        public final ByteString getEventId() {
            ByteString eventId = this._builder.getEventId();
            Intrinsics.checkNotNullExpressionValue(eventId, "getEventId(...)");
            return eventId;
        }

        public final void setEventId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setEventId(value);
        }

        public final void clearEventId() {
            this._builder.clearEventId();
        }

        public final String getTransactionId() {
            String transactionId = this._builder.getTransactionId();
            Intrinsics.checkNotNullExpressionValue(transactionId, "getTransactionId(...)");
            return transactionId;
        }

        public final void setTransactionId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTransactionId(value);
        }

        public final void clearTransactionId() {
            this._builder.clearTransactionId();
        }

        public final String getProduct() {
            String product = this._builder.getProduct();
            Intrinsics.checkNotNullExpressionValue(product, "getProduct(...)");
            return product;
        }

        public final void setProduct(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setProduct(value);
        }

        public final void clearProduct() {
            this._builder.clearProduct();
        }

        public final String getTransaction() {
            String transaction = this._builder.getTransaction();
            Intrinsics.checkNotNullExpressionValue(transaction, "getTransaction(...)");
            return transaction;
        }

        public final void setTransaction(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTransaction(value);
        }

        public final void clearTransaction() {
            this._builder.clearTransaction();
        }

        public final String getReceipt() {
            String receipt = this._builder.getReceipt();
            Intrinsics.checkNotNullExpressionValue(receipt, "getReceipt(...)");
            return receipt;
        }

        public final void setReceipt(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setReceipt(value);
        }

        public final void clearReceipt() {
            this._builder.clearReceipt();
        }

        public final boolean hasReceipt() {
            return this._builder.hasReceipt();
        }

        public final TransactionEventRequestOuterClass.TransactionState getTransactionState() {
            TransactionEventRequestOuterClass.TransactionState transactionState = this._builder.getTransactionState();
            Intrinsics.checkNotNullExpressionValue(transactionState, "getTransactionState(...)");
            return transactionState;
        }

        public final void setTransactionState(TransactionEventRequestOuterClass.TransactionState value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTransactionState(value);
        }

        public final int getTransactionStateValue() {
            return this._builder.getTransactionStateValue();
        }

        public final void setTransactionStateValue(int i) {
            this._builder.setTransactionStateValue(i);
        }

        public final void clearTransactionState() {
            this._builder.clearTransactionState();
        }

        public final String getJwsRepresentation() {
            String jwsRepresentation = this._builder.getJwsRepresentation();
            Intrinsics.checkNotNullExpressionValue(jwsRepresentation, "getJwsRepresentation(...)");
            return jwsRepresentation;
        }

        public final void setJwsRepresentation(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setJwsRepresentation(value);
        }

        public final void clearJwsRepresentation() {
            this._builder.clearJwsRepresentation();
        }

        public final boolean hasJwsRepresentation() {
            return this._builder.hasJwsRepresentation();
        }

        public final String getSignature() {
            String signature = this._builder.getSignature();
            Intrinsics.checkNotNullExpressionValue(signature, "getSignature(...)");
            return signature;
        }

        public final void setSignature(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSignature(value);
        }

        public final void clearSignature() {
            this._builder.clearSignature();
        }

        public final boolean hasSignature() {
            return this._builder.hasSignature();
        }
    }
}
