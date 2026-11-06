package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetTokenEventRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class GetTokenEventRequestKt {
    public static final GetTokenEventRequestKt INSTANCE = new GetTokenEventRequestKt();

    private GetTokenEventRequestKt() {
    }

    /* JADX INFO: compiled from: GetTokenEventRequestKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final GetTokenEventRequestOuterClass.GetTokenEventRequest.Builder _builder;

        public /* synthetic */ Dsl(GetTokenEventRequestOuterClass.GetTokenEventRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(GetTokenEventRequestOuterClass.GetTokenEventRequest.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: GetTokenEventRequestKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(GetTokenEventRequestOuterClass.GetTokenEventRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ GetTokenEventRequestOuterClass.GetTokenEventRequest _build() {
            GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequestBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(getTokenEventRequestBuild, "build(...)");
            return getTokenEventRequestBuild;
        }

        public final ByteString getRewarded() {
            ByteString rewarded = this._builder.getRewarded();
            Intrinsics.checkNotNullExpressionValue(rewarded, "getRewarded(...)");
            return rewarded;
        }

        public final void setRewarded(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setRewarded(value);
        }

        public final void clearRewarded() {
            this._builder.clearRewarded();
        }

        public final boolean hasRewarded() {
            return this._builder.hasRewarded();
        }

        public final ByteString getInterstitial() {
            ByteString interstitial = this._builder.getInterstitial();
            Intrinsics.checkNotNullExpressionValue(interstitial, "getInterstitial(...)");
            return interstitial;
        }

        public final void setInterstitial(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setInterstitial(value);
        }

        public final void clearInterstitial() {
            this._builder.clearInterstitial();
        }

        public final boolean hasInterstitial() {
            return this._builder.hasInterstitial();
        }

        public final ByteString getBanner() {
            ByteString banner = this._builder.getBanner();
            Intrinsics.checkNotNullExpressionValue(banner, "getBanner(...)");
            return banner;
        }

        public final void setBanner(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setBanner(value);
        }

        public final void clearBanner() {
            this._builder.clearBanner();
        }

        public final boolean hasBanner() {
            return this._builder.hasBanner();
        }

        public final ByteString getTokenId() {
            ByteString tokenId = this._builder.getTokenId();
            Intrinsics.checkNotNullExpressionValue(tokenId, "getTokenId(...)");
            return tokenId;
        }

        public final void setTokenId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTokenId(value);
        }

        public final void clearTokenId() {
            this._builder.clearTokenId();
        }
    }
}
