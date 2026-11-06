package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.RewardedOffersResponseOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RewardedOffersResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RewardedOffersResponseKt {
    public static final RewardedOffersResponseKt INSTANCE = new RewardedOffersResponseKt();

    private RewardedOffersResponseKt() {
    }

    /* JADX INFO: compiled from: RewardedOffersResponseKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final RewardedOffersResponseOuterClass.RewardedOffersResponse.Builder _builder;

        public /* synthetic */ Dsl(RewardedOffersResponseOuterClass.RewardedOffersResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(RewardedOffersResponseOuterClass.RewardedOffersResponse.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: RewardedOffersResponseKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(RewardedOffersResponseOuterClass.RewardedOffersResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ RewardedOffersResponseOuterClass.RewardedOffersResponse _build() {
            RewardedOffersResponseOuterClass.RewardedOffersResponse rewardedOffersResponseBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(rewardedOffersResponseBuild, "build(...)");
            return rewardedOffersResponseBuild;
        }

        public final ByteString getRewardedOffers() {
            ByteString rewardedOffers = this._builder.getRewardedOffers();
            Intrinsics.checkNotNullExpressionValue(rewardedOffers, "getRewardedOffers(...)");
            return rewardedOffers;
        }

        public final void setRewardedOffers(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setRewardedOffers(value);
        }

        public final void clearRewardedOffers() {
            this._builder.clearRewardedOffers();
        }

        public final int getRewardedOffersVersion() {
            return this._builder.getRewardedOffersVersion();
        }

        public final void setRewardedOffersVersion(int i) {
            this._builder.setRewardedOffersVersion(i);
        }

        public final void clearRewardedOffersVersion() {
            this._builder.clearRewardedOffersVersion();
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
            return RewardedOffersResponseKtKt.getErrorOrNull(dsl._builder);
        }
    }
}
