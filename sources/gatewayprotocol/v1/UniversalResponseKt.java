package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.AdPlayerConfigResponseOuterClass;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.AdViewerResponseOuterClass;
import gatewayprotocol.v1.AudienceManagementResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.MutableDataOuterClass;
import gatewayprotocol.v1.PrivacyUpdateResponseOuterClass;
import gatewayprotocol.v1.RewardedOffersResponseOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UniversalResponseKt {
    public static final UniversalResponseKt INSTANCE = new UniversalResponseKt();

    private UniversalResponseKt() {
    }

    /* JADX INFO: compiled from: UniversalResponseKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final UniversalResponseOuterClass.UniversalResponse.Builder _builder;

        public /* synthetic */ Dsl(UniversalResponseOuterClass.UniversalResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(UniversalResponseOuterClass.UniversalResponse.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: UniversalResponseKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(UniversalResponseOuterClass.UniversalResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse _build() {
            UniversalResponseOuterClass.UniversalResponse universalResponseBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(universalResponseBuild, "build(...)");
            return universalResponseBuild;
        }

        public final UniversalResponseOuterClass.UniversalResponse.Payload getPayload() {
            UniversalResponseOuterClass.UniversalResponse.Payload payload = this._builder.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "getPayload(...)");
            return payload;
        }

        public final void setPayload(UniversalResponseOuterClass.UniversalResponse.Payload value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPayload(value);
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        public final boolean hasPayload() {
            return this._builder.hasPayload();
        }

        public final MutableDataOuterClass.MutableData getMutableData() {
            MutableDataOuterClass.MutableData mutableData = this._builder.getMutableData();
            Intrinsics.checkNotNullExpressionValue(mutableData, "getMutableData(...)");
            return mutableData;
        }

        public final void setMutableData(MutableDataOuterClass.MutableData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMutableData(value);
        }

        public final void clearMutableData() {
            this._builder.clearMutableData();
        }

        public final boolean hasMutableData() {
            return this._builder.hasMutableData();
        }

        public final MutableDataOuterClass.MutableData getMutableDataOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return UniversalResponseKtKt.getMutableDataOrNull(dsl._builder);
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
            return UniversalResponseKtKt.getErrorOrNull(dsl._builder);
        }
    }

    /* JADX INFO: renamed from: -initializepayload, reason: not valid java name */
    public final UniversalResponseOuterClass.UniversalResponse.Payload m2104initializepayload(Function1<? super PayloadKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PayloadKt.Dsl.Companion companion = PayloadKt.Dsl.Companion;
        UniversalResponseOuterClass.UniversalResponse.Payload.Builder builderNewBuilder = UniversalResponseOuterClass.UniversalResponse.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        PayloadKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: compiled from: UniversalResponseKt.kt */
    public static final class PayloadKt {
        public static final PayloadKt INSTANCE = new PayloadKt();

        private PayloadKt() {
        }

        /* JADX INFO: compiled from: UniversalResponseKt.kt */
        @ProtoDslMarker
        public static final class Dsl {
            public static final Companion Companion = new Companion(null);
            private final UniversalResponseOuterClass.UniversalResponse.Payload.Builder _builder;

            public /* synthetic */ Dsl(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public static /* synthetic */ void getRewardedOffersResponse$annotations() {
            }

            private Dsl(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder) {
                this._builder = builder;
            }

            /* JADX INFO: compiled from: UniversalResponseKt.kt */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Dsl _create(UniversalResponseOuterClass.UniversalResponse.Payload.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            public final /* synthetic */ UniversalResponseOuterClass.UniversalResponse.Payload _build() {
                UniversalResponseOuterClass.UniversalResponse.Payload payloadBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(payloadBuild, "build(...)");
                return payloadBuild;
            }

            public final InitializationResponseOuterClass.InitializationResponse getInitializationResponse() {
                InitializationResponseOuterClass.InitializationResponse initializationResponse = this._builder.getInitializationResponse();
                Intrinsics.checkNotNullExpressionValue(initializationResponse, "getInitializationResponse(...)");
                return initializationResponse;
            }

            public final void setInitializationResponse(InitializationResponseOuterClass.InitializationResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setInitializationResponse(value);
            }

            public final void clearInitializationResponse() {
                this._builder.clearInitializationResponse();
            }

            public final boolean hasInitializationResponse() {
                return this._builder.hasInitializationResponse();
            }

            public final AdResponseOuterClass.AdResponse getAdResponse() {
                AdResponseOuterClass.AdResponse adResponse = this._builder.getAdResponse();
                Intrinsics.checkNotNullExpressionValue(adResponse, "getAdResponse(...)");
                return adResponse;
            }

            public final void setAdResponse(AdResponseOuterClass.AdResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdResponse(value);
            }

            public final void clearAdResponse() {
                this._builder.clearAdResponse();
            }

            public final boolean hasAdResponse() {
                return this._builder.hasAdResponse();
            }

            public final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse getAdPlayerConfigResponse() {
                AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse adPlayerConfigResponse = this._builder.getAdPlayerConfigResponse();
                Intrinsics.checkNotNullExpressionValue(adPlayerConfigResponse, "getAdPlayerConfigResponse(...)");
                return adPlayerConfigResponse;
            }

            public final void setAdPlayerConfigResponse(AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdPlayerConfigResponse(value);
            }

            public final void clearAdPlayerConfigResponse() {
                this._builder.clearAdPlayerConfigResponse();
            }

            public final boolean hasAdPlayerConfigResponse() {
                return this._builder.hasAdPlayerConfigResponse();
            }

            public final AdDataRefreshResponseOuterClass.AdDataRefreshResponse getAdDataRefreshResponse() {
                AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse = this._builder.getAdDataRefreshResponse();
                Intrinsics.checkNotNullExpressionValue(adDataRefreshResponse, "getAdDataRefreshResponse(...)");
                return adDataRefreshResponse;
            }

            public final void setAdDataRefreshResponse(AdDataRefreshResponseOuterClass.AdDataRefreshResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdDataRefreshResponse(value);
            }

            public final void clearAdDataRefreshResponse() {
                this._builder.clearAdDataRefreshResponse();
            }

            public final boolean hasAdDataRefreshResponse() {
                return this._builder.hasAdDataRefreshResponse();
            }

            public final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse getPrivacyUpdateResponse() {
                PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse privacyUpdateResponse = this._builder.getPrivacyUpdateResponse();
                Intrinsics.checkNotNullExpressionValue(privacyUpdateResponse, "getPrivacyUpdateResponse(...)");
                return privacyUpdateResponse;
            }

            public final void setPrivacyUpdateResponse(PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPrivacyUpdateResponse(value);
            }

            public final void clearPrivacyUpdateResponse() {
                this._builder.clearPrivacyUpdateResponse();
            }

            public final boolean hasPrivacyUpdateResponse() {
                return this._builder.hasPrivacyUpdateResponse();
            }

            public final AudienceManagementResponseOuterClass.AudienceManagementResponse getAudienceManagementResponse() {
                AudienceManagementResponseOuterClass.AudienceManagementResponse audienceManagementResponse = this._builder.getAudienceManagementResponse();
                Intrinsics.checkNotNullExpressionValue(audienceManagementResponse, "getAudienceManagementResponse(...)");
                return audienceManagementResponse;
            }

            public final void setAudienceManagementResponse(AudienceManagementResponseOuterClass.AudienceManagementResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAudienceManagementResponse(value);
            }

            public final void clearAudienceManagementResponse() {
                this._builder.clearAudienceManagementResponse();
            }

            public final boolean hasAudienceManagementResponse() {
                return this._builder.hasAudienceManagementResponse();
            }

            public final RewardedOffersResponseOuterClass.RewardedOffersResponse getRewardedOffersResponse() {
                RewardedOffersResponseOuterClass.RewardedOffersResponse rewardedOffersResponse = this._builder.getRewardedOffersResponse();
                Intrinsics.checkNotNullExpressionValue(rewardedOffersResponse, "getRewardedOffersResponse(...)");
                return rewardedOffersResponse;
            }

            public final void setRewardedOffersResponse(RewardedOffersResponseOuterClass.RewardedOffersResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setRewardedOffersResponse(value);
            }

            public final void clearRewardedOffersResponse() {
                this._builder.clearRewardedOffersResponse();
            }

            public final boolean hasRewardedOffersResponse() {
                return this._builder.hasRewardedOffersResponse();
            }

            public final AdViewerResponseOuterClass.AdViewerResponse getAdViewerResponse() {
                AdViewerResponseOuterClass.AdViewerResponse adViewerResponse = this._builder.getAdViewerResponse();
                Intrinsics.checkNotNullExpressionValue(adViewerResponse, "getAdViewerResponse(...)");
                return adViewerResponse;
            }

            public final void setAdViewerResponse(AdViewerResponseOuterClass.AdViewerResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdViewerResponse(value);
            }

            public final void clearAdViewerResponse() {
                this._builder.clearAdViewerResponse();
            }

            public final boolean hasAdViewerResponse() {
                return this._builder.hasAdViewerResponse();
            }

            public final UniversalResponseOuterClass.UniversalResponse.Payload.ValueCase getValueCase() {
                UniversalResponseOuterClass.UniversalResponse.Payload.ValueCase valueCase = this._builder.getValueCase();
                Intrinsics.checkNotNullExpressionValue(valueCase, "getValueCase(...)");
                return valueCase;
            }

            public final void clearValue() {
                this._builder.clearValue();
            }
        }
    }
}
