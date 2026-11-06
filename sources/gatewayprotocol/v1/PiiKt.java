package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.PiiOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PiiKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PiiKt {
    public static final PiiKt INSTANCE = new PiiKt();

    private PiiKt() {
    }

    /* JADX INFO: compiled from: PiiKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final PiiOuterClass.Pii.Builder _builder;

        public /* synthetic */ Dsl(PiiOuterClass.Pii.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(PiiOuterClass.Pii.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: PiiKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(PiiOuterClass.Pii.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ PiiOuterClass.Pii _build() {
            PiiOuterClass.Pii piiBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(piiBuild, "build(...)");
            return piiBuild;
        }

        public final ByteString getAdvertisingId() {
            ByteString advertisingId = this._builder.getAdvertisingId();
            Intrinsics.checkNotNullExpressionValue(advertisingId, "getAdvertisingId(...)");
            return advertisingId;
        }

        public final void setAdvertisingId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdvertisingId(value);
        }

        public final void clearAdvertisingId() {
            this._builder.clearAdvertisingId();
        }

        public final ByteString getVendorId() {
            ByteString vendorId = this._builder.getVendorId();
            Intrinsics.checkNotNullExpressionValue(vendorId, "getVendorId(...)");
            return vendorId;
        }

        public final void setVendorId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setVendorId(value);
        }

        public final void clearVendorId() {
            this._builder.clearVendorId();
        }

        public final ByteString getOpenAdvertisingTrackingId() {
            ByteString openAdvertisingTrackingId = this._builder.getOpenAdvertisingTrackingId();
            Intrinsics.checkNotNullExpressionValue(openAdvertisingTrackingId, "getOpenAdvertisingTrackingId(...)");
            return openAdvertisingTrackingId;
        }

        public final void setOpenAdvertisingTrackingId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOpenAdvertisingTrackingId(value);
        }

        public final void clearOpenAdvertisingTrackingId() {
            this._builder.clearOpenAdvertisingTrackingId();
        }

        public final String getFid() {
            String fid = this._builder.getFid();
            Intrinsics.checkNotNullExpressionValue(fid, "getFid(...)");
            return fid;
        }

        public final void setFid(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setFid(value);
        }

        public final void clearFid() {
            this._builder.clearFid();
        }

        public final boolean hasFid() {
            return this._builder.hasFid();
        }

        public final String getAppsetId() {
            String appsetId = this._builder.getAppsetId();
            Intrinsics.checkNotNullExpressionValue(appsetId, "getAppsetId(...)");
            return appsetId;
        }

        public final void setAppsetId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAppsetId(value);
        }

        public final void clearAppsetId() {
            this._builder.clearAppsetId();
        }

        public final boolean hasAppsetId() {
            return this._builder.hasAppsetId();
        }
    }
}
