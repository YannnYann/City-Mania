package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.Timestamp;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdDataRefreshRequestOuterClass;
import gatewayprotocol.v1.AdPlayerConfigRequestOuterClass;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import gatewayprotocol.v1.AdViewerRequestOuterClass;
import gatewayprotocol.v1.AudienceManagementRequestOuterClass;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.GetTokenEventRequestOuterClass;
import gatewayprotocol.v1.InitializationCompletedEventRequestOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.LifecycleEventRequestOuterClass;
import gatewayprotocol.v1.MonitoringEventRequestOuterClass;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.PrivacyUpdateRequestOuterClass;
import gatewayprotocol.v1.RewardedOffersRequestOuterClass;
import gatewayprotocol.v1.TestDataOuterClass;
import gatewayprotocol.v1.TimestampsOuterClass;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UniversalRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UniversalRequestKt {
    public static final UniversalRequestKt INSTANCE = new UniversalRequestKt();

    private UniversalRequestKt() {
    }

    /* JADX INFO: compiled from: UniversalRequestKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final UniversalRequestOuterClass.UniversalRequest.Builder _builder;

        public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(UniversalRequestOuterClass.UniversalRequest.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: UniversalRequestKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest _build() {
            UniversalRequestOuterClass.UniversalRequest universalRequestBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(universalRequestBuild, "build(...)");
            return universalRequestBuild;
        }

        public final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedData() {
            UniversalRequestOuterClass.UniversalRequest.SharedData sharedData = this._builder.getSharedData();
            Intrinsics.checkNotNullExpressionValue(sharedData, "getSharedData(...)");
            return sharedData;
        }

        public final void setSharedData(UniversalRequestOuterClass.UniversalRequest.SharedData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSharedData(value);
        }

        public final void clearSharedData() {
            this._builder.clearSharedData();
        }

        public final boolean hasSharedData() {
            return this._builder.hasSharedData();
        }

        public final UniversalRequestOuterClass.UniversalRequest.Payload getPayload() {
            UniversalRequestOuterClass.UniversalRequest.Payload payload = this._builder.getPayload();
            Intrinsics.checkNotNullExpressionValue(payload, "getPayload(...)");
            return payload;
        }

        public final void setPayload(UniversalRequestOuterClass.UniversalRequest.Payload value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPayload(value);
        }

        public final void clearPayload() {
            this._builder.clearPayload();
        }

        public final boolean hasPayload() {
            return this._builder.hasPayload();
        }
    }

    /* JADX INFO: renamed from: -initializesharedData, reason: not valid java name */
    public final UniversalRequestOuterClass.UniversalRequest.SharedData m2102initializesharedData(Function1<? super SharedDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        SharedDataKt.Dsl.Companion companion = SharedDataKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builderNewBuilder = UniversalRequestOuterClass.UniversalRequest.SharedData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        SharedDataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: compiled from: UniversalRequestKt.kt */
    public static final class SharedDataKt {
        public static final SharedDataKt INSTANCE = new SharedDataKt();

        private SharedDataKt() {
        }

        /* JADX INFO: compiled from: UniversalRequestKt.kt */
        @ProtoDslMarker
        public static final class Dsl {
            public static final Companion Companion = new Companion(null);
            private final UniversalRequestOuterClass.UniversalRequest.SharedData.Builder _builder;

            public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            private Dsl(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder) {
                this._builder = builder;
            }

            /* JADX INFO: compiled from: UniversalRequestKt.kt */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.SharedData.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.SharedData _build() {
                UniversalRequestOuterClass.UniversalRequest.SharedData sharedDataBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(sharedDataBuild, "build(...)");
                return sharedDataBuild;
            }

            public final ByteString getSessionToken() {
                ByteString sessionToken = this._builder.getSessionToken();
                Intrinsics.checkNotNullExpressionValue(sessionToken, "getSessionToken(...)");
                return sessionToken;
            }

            public final void setSessionToken(ByteString value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSessionToken(value);
            }

            public final void clearSessionToken() {
                this._builder.clearSessionToken();
            }

            public final boolean hasSessionToken() {
                return this._builder.hasSessionToken();
            }

            public final TimestampsOuterClass.Timestamps getTimestamps() {
                TimestampsOuterClass.Timestamps timestamps = this._builder.getTimestamps();
                Intrinsics.checkNotNullExpressionValue(timestamps, "getTimestamps(...)");
                return timestamps;
            }

            public final void setTimestamps(TimestampsOuterClass.Timestamps value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setTimestamps(value);
            }

            public final void clearTimestamps() {
                this._builder.clearTimestamps();
            }

            public final boolean hasTimestamps() {
                return this._builder.hasTimestamps();
            }

            public final PiiOuterClass.Pii getPii() {
                PiiOuterClass.Pii pii = this._builder.getPii();
                Intrinsics.checkNotNullExpressionValue(pii, "getPii(...)");
                return pii;
            }

            public final void setPii(PiiOuterClass.Pii value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPii(value);
            }

            public final void clearPii() {
                this._builder.clearPii();
            }

            public final boolean hasPii() {
                return this._builder.hasPii();
            }

            public final PiiOuterClass.Pii getPiiOrNull(Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getPiiOrNull(dsl._builder);
            }

            public final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent() {
                DeveloperConsentOuterClass.DeveloperConsent developerConsent = this._builder.getDeveloperConsent();
                Intrinsics.checkNotNullExpressionValue(developerConsent, "getDeveloperConsent(...)");
                return developerConsent;
            }

            public final void setDeveloperConsent(DeveloperConsentOuterClass.DeveloperConsent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setDeveloperConsent(value);
            }

            public final void clearDeveloperConsent() {
                this._builder.clearDeveloperConsent();
            }

            public final boolean hasDeveloperConsent() {
                return this._builder.hasDeveloperConsent();
            }

            public final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsentOrNull(Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getDeveloperConsentOrNull(dsl._builder);
            }

            public final int getWebviewVersion() {
                return this._builder.getWebviewVersion();
            }

            public final void setWebviewVersion(int i) {
                this._builder.setWebviewVersion(i);
            }

            public final void clearWebviewVersion() {
                this._builder.clearWebviewVersion();
            }

            public final boolean hasWebviewVersion() {
                return this._builder.hasWebviewVersion();
            }

            public final ByteString getCurrentState() {
                ByteString currentState = this._builder.getCurrentState();
                Intrinsics.checkNotNullExpressionValue(currentState, "getCurrentState(...)");
                return currentState;
            }

            public final void setCurrentState(ByteString value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setCurrentState(value);
            }

            public final void clearCurrentState() {
                this._builder.clearCurrentState();
            }

            public final boolean hasCurrentState() {
                return this._builder.hasCurrentState();
            }

            public final TestDataOuterClass.TestData getTestData() {
                TestDataOuterClass.TestData testData = this._builder.getTestData();
                Intrinsics.checkNotNullExpressionValue(testData, "getTestData(...)");
                return testData;
            }

            public final void setTestData(TestDataOuterClass.TestData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setTestData(value);
            }

            public final void clearTestData() {
                this._builder.clearTestData();
            }

            public final boolean hasTestData() {
                return this._builder.hasTestData();
            }

            public final TestDataOuterClass.TestData getTestDataOrNull(Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getTestDataOrNull(dsl._builder);
            }

            public final Timestamp getAppStartTime() {
                Timestamp appStartTime = this._builder.getAppStartTime();
                Intrinsics.checkNotNullExpressionValue(appStartTime, "getAppStartTime(...)");
                return appStartTime;
            }

            public final void setAppStartTime(Timestamp value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAppStartTime(value);
            }

            public final void clearAppStartTime() {
                this._builder.clearAppStartTime();
            }

            public final boolean hasAppStartTime() {
                return this._builder.hasAppStartTime();
            }

            public final Timestamp getSdkStartTime() {
                Timestamp sdkStartTime = this._builder.getSdkStartTime();
                Intrinsics.checkNotNullExpressionValue(sdkStartTime, "getSdkStartTime(...)");
                return sdkStartTime;
            }

            public final void setSdkStartTime(Timestamp value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSdkStartTime(value);
            }

            public final void clearSdkStartTime() {
                this._builder.clearSdkStartTime();
            }

            public final boolean hasSdkStartTime() {
                return this._builder.hasSdkStartTime();
            }

            public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionToken() {
                UniversalRequestOuterClass.LimitedSessionToken limitedSessionToken = this._builder.getLimitedSessionToken();
                Intrinsics.checkNotNullExpressionValue(limitedSessionToken, "getLimitedSessionToken(...)");
                return limitedSessionToken;
            }

            public final void setLimitedSessionToken(UniversalRequestOuterClass.LimitedSessionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setLimitedSessionToken(value);
            }

            public final void clearLimitedSessionToken() {
                this._builder.clearLimitedSessionToken();
            }

            public final boolean hasLimitedSessionToken() {
                return this._builder.hasLimitedSessionToken();
            }

            public final UniversalRequestOuterClass.LimitedSessionToken getLimitedSessionTokenOrNull(Dsl dsl) {
                Intrinsics.checkNotNullParameter(dsl, "<this>");
                return UniversalRequestKtKt.getLimitedSessionTokenOrNull(dsl._builder);
            }
        }
    }

    /* JADX INFO: renamed from: -initializepayload, reason: not valid java name */
    public final UniversalRequestOuterClass.UniversalRequest.Payload m2101initializepayload(Function1<? super PayloadKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PayloadKt.Dsl.Companion companion = PayloadKt.Dsl.Companion;
        UniversalRequestOuterClass.UniversalRequest.Payload.Builder builderNewBuilder = UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        PayloadKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: compiled from: UniversalRequestKt.kt */
    public static final class PayloadKt {
        public static final PayloadKt INSTANCE = new PayloadKt();

        private PayloadKt() {
        }

        /* JADX INFO: compiled from: UniversalRequestKt.kt */
        @ProtoDslMarker
        public static final class Dsl {
            public static final Companion Companion = new Companion(null);
            private final UniversalRequestOuterClass.UniversalRequest.Payload.Builder _builder;

            public /* synthetic */ Dsl(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public static /* synthetic */ void getRewardedOffersRequest$annotations() {
            }

            private Dsl(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder) {
                this._builder = builder;
            }

            /* JADX INFO: compiled from: UniversalRequestKt.kt */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Dsl _create(UniversalRequestOuterClass.UniversalRequest.Payload.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest.Payload _build() {
                UniversalRequestOuterClass.UniversalRequest.Payload payloadBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(payloadBuild, "build(...)");
                return payloadBuild;
            }

            public final InitializationRequestOuterClass.InitializationRequest getInitializationRequest() {
                InitializationRequestOuterClass.InitializationRequest initializationRequest = this._builder.getInitializationRequest();
                Intrinsics.checkNotNullExpressionValue(initializationRequest, "getInitializationRequest(...)");
                return initializationRequest;
            }

            public final void setInitializationRequest(InitializationRequestOuterClass.InitializationRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setInitializationRequest(value);
            }

            public final void clearInitializationRequest() {
                this._builder.clearInitializationRequest();
            }

            public final boolean hasInitializationRequest() {
                return this._builder.hasInitializationRequest();
            }

            public final AdRequestOuterClass.AdRequest getAdRequest() {
                AdRequestOuterClass.AdRequest adRequest = this._builder.getAdRequest();
                Intrinsics.checkNotNullExpressionValue(adRequest, "getAdRequest(...)");
                return adRequest;
            }

            public final void setAdRequest(AdRequestOuterClass.AdRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdRequest(value);
            }

            public final void clearAdRequest() {
                this._builder.clearAdRequest();
            }

            public final boolean hasAdRequest() {
                return this._builder.hasAdRequest();
            }

            public final OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEvent() {
                OperativeEventRequestOuterClass.OperativeEventRequest operativeEvent = this._builder.getOperativeEvent();
                Intrinsics.checkNotNullExpressionValue(operativeEvent, "getOperativeEvent(...)");
                return operativeEvent;
            }

            public final void setOperativeEvent(OperativeEventRequestOuterClass.OperativeEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setOperativeEvent(value);
            }

            public final void clearOperativeEvent() {
                this._builder.clearOperativeEvent();
            }

            public final boolean hasOperativeEvent() {
                return this._builder.hasOperativeEvent();
            }

            public final DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequest() {
                DiagnosticEventRequestOuterClass.DiagnosticEventRequest diagnosticEventRequest = this._builder.getDiagnosticEventRequest();
                Intrinsics.checkNotNullExpressionValue(diagnosticEventRequest, "getDiagnosticEventRequest(...)");
                return diagnosticEventRequest;
            }

            public final void setDiagnosticEventRequest(DiagnosticEventRequestOuterClass.DiagnosticEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setDiagnosticEventRequest(value);
            }

            public final void clearDiagnosticEventRequest() {
                this._builder.clearDiagnosticEventRequest();
            }

            public final boolean hasDiagnosticEventRequest() {
                return this._builder.hasDiagnosticEventRequest();
            }

            public final AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequest() {
                AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest adPlayerConfigRequest = this._builder.getAdPlayerConfigRequest();
                Intrinsics.checkNotNullExpressionValue(adPlayerConfigRequest, "getAdPlayerConfigRequest(...)");
                return adPlayerConfigRequest;
            }

            public final void setAdPlayerConfigRequest(AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdPlayerConfigRequest(value);
            }

            public final void clearAdPlayerConfigRequest() {
                this._builder.clearAdPlayerConfigRequest();
            }

            public final boolean hasAdPlayerConfigRequest() {
                return this._builder.hasAdPlayerConfigRequest();
            }

            public final GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequest() {
                GetTokenEventRequestOuterClass.GetTokenEventRequest getTokenEventRequest = this._builder.getGetTokenEventRequest();
                Intrinsics.checkNotNullExpressionValue(getTokenEventRequest, "getGetTokenEventRequest(...)");
                return getTokenEventRequest;
            }

            public final void setGetTokenEventRequest(GetTokenEventRequestOuterClass.GetTokenEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setGetTokenEventRequest(value);
            }

            public final void clearGetTokenEventRequest() {
                this._builder.clearGetTokenEventRequest();
            }

            public final boolean hasGetTokenEventRequest() {
                return this._builder.hasGetTokenEventRequest();
            }

            public final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequest() {
                PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest = this._builder.getPrivacyUpdateRequest();
                Intrinsics.checkNotNullExpressionValue(privacyUpdateRequest, "getPrivacyUpdateRequest(...)");
                return privacyUpdateRequest;
            }

            public final void setPrivacyUpdateRequest(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPrivacyUpdateRequest(value);
            }

            public final void clearPrivacyUpdateRequest() {
                this._builder.clearPrivacyUpdateRequest();
            }

            public final boolean hasPrivacyUpdateRequest() {
                return this._builder.hasPrivacyUpdateRequest();
            }

            public final AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequest() {
                AdDataRefreshRequestOuterClass.AdDataRefreshRequest adDataRefreshRequest = this._builder.getAdDataRefreshRequest();
                Intrinsics.checkNotNullExpressionValue(adDataRefreshRequest, "getAdDataRefreshRequest(...)");
                return adDataRefreshRequest;
            }

            public final void setAdDataRefreshRequest(AdDataRefreshRequestOuterClass.AdDataRefreshRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdDataRefreshRequest(value);
            }

            public final void clearAdDataRefreshRequest() {
                this._builder.clearAdDataRefreshRequest();
            }

            public final boolean hasAdDataRefreshRequest() {
                return this._builder.hasAdDataRefreshRequest();
            }

            public final InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequest() {
                InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest initializationCompletedEventRequest = this._builder.getInitializationCompletedEventRequest();
                Intrinsics.checkNotNullExpressionValue(initializationCompletedEventRequest, "getInitializationCompletedEventRequest(...)");
                return initializationCompletedEventRequest;
            }

            public final void setInitializationCompletedEventRequest(InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setInitializationCompletedEventRequest(value);
            }

            public final void clearInitializationCompletedEventRequest() {
                this._builder.clearInitializationCompletedEventRequest();
            }

            public final boolean hasInitializationCompletedEventRequest() {
                return this._builder.hasInitializationCompletedEventRequest();
            }

            public final TransactionEventRequestOuterClass.TransactionEventRequest getTransactionEventRequest() {
                TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest = this._builder.getTransactionEventRequest();
                Intrinsics.checkNotNullExpressionValue(transactionEventRequest, "getTransactionEventRequest(...)");
                return transactionEventRequest;
            }

            public final void setTransactionEventRequest(TransactionEventRequestOuterClass.TransactionEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setTransactionEventRequest(value);
            }

            public final void clearTransactionEventRequest() {
                this._builder.clearTransactionEventRequest();
            }

            public final boolean hasTransactionEventRequest() {
                return this._builder.hasTransactionEventRequest();
            }

            public final AudienceManagementRequestOuterClass.AudienceManagementRequest getAudienceManagementRequest() {
                AudienceManagementRequestOuterClass.AudienceManagementRequest audienceManagementRequest = this._builder.getAudienceManagementRequest();
                Intrinsics.checkNotNullExpressionValue(audienceManagementRequest, "getAudienceManagementRequest(...)");
                return audienceManagementRequest;
            }

            public final void setAudienceManagementRequest(AudienceManagementRequestOuterClass.AudienceManagementRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAudienceManagementRequest(value);
            }

            public final void clearAudienceManagementRequest() {
                this._builder.clearAudienceManagementRequest();
            }

            public final boolean hasAudienceManagementRequest() {
                return this._builder.hasAudienceManagementRequest();
            }

            public final AdRevenueEventRequestOuterClass.AdRevenueEventRequest getAdRevenueEventRequest() {
                AdRevenueEventRequestOuterClass.AdRevenueEventRequest adRevenueEventRequest = this._builder.getAdRevenueEventRequest();
                Intrinsics.checkNotNullExpressionValue(adRevenueEventRequest, "getAdRevenueEventRequest(...)");
                return adRevenueEventRequest;
            }

            public final void setAdRevenueEventRequest(AdRevenueEventRequestOuterClass.AdRevenueEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdRevenueEventRequest(value);
            }

            public final void clearAdRevenueEventRequest() {
                this._builder.clearAdRevenueEventRequest();
            }

            public final boolean hasAdRevenueEventRequest() {
                return this._builder.hasAdRevenueEventRequest();
            }

            public final MonitoringEventRequestOuterClass.MonitoringEventRequest getMonitoringEventRequest() {
                MonitoringEventRequestOuterClass.MonitoringEventRequest monitoringEventRequest = this._builder.getMonitoringEventRequest();
                Intrinsics.checkNotNullExpressionValue(monitoringEventRequest, "getMonitoringEventRequest(...)");
                return monitoringEventRequest;
            }

            public final void setMonitoringEventRequest(MonitoringEventRequestOuterClass.MonitoringEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setMonitoringEventRequest(value);
            }

            public final void clearMonitoringEventRequest() {
                this._builder.clearMonitoringEventRequest();
            }

            public final boolean hasMonitoringEventRequest() {
                return this._builder.hasMonitoringEventRequest();
            }

            public final LifecycleEventRequestOuterClass.LifecycleEventRequest getLifecycleEventRequest() {
                LifecycleEventRequestOuterClass.LifecycleEventRequest lifecycleEventRequest = this._builder.getLifecycleEventRequest();
                Intrinsics.checkNotNullExpressionValue(lifecycleEventRequest, "getLifecycleEventRequest(...)");
                return lifecycleEventRequest;
            }

            public final void setLifecycleEventRequest(LifecycleEventRequestOuterClass.LifecycleEventRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setLifecycleEventRequest(value);
            }

            public final void clearLifecycleEventRequest() {
                this._builder.clearLifecycleEventRequest();
            }

            public final boolean hasLifecycleEventRequest() {
                return this._builder.hasLifecycleEventRequest();
            }

            public final RewardedOffersRequestOuterClass.RewardedOffersRequest getRewardedOffersRequest() {
                RewardedOffersRequestOuterClass.RewardedOffersRequest rewardedOffersRequest = this._builder.getRewardedOffersRequest();
                Intrinsics.checkNotNullExpressionValue(rewardedOffersRequest, "getRewardedOffersRequest(...)");
                return rewardedOffersRequest;
            }

            public final void setRewardedOffersRequest(RewardedOffersRequestOuterClass.RewardedOffersRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setRewardedOffersRequest(value);
            }

            public final void clearRewardedOffersRequest() {
                this._builder.clearRewardedOffersRequest();
            }

            public final boolean hasRewardedOffersRequest() {
                return this._builder.hasRewardedOffersRequest();
            }

            public final AdViewerRequestOuterClass.AdViewerRequest getAdViewerRequest() {
                AdViewerRequestOuterClass.AdViewerRequest adViewerRequest = this._builder.getAdViewerRequest();
                Intrinsics.checkNotNullExpressionValue(adViewerRequest, "getAdViewerRequest(...)");
                return adViewerRequest;
            }

            public final void setAdViewerRequest(AdViewerRequestOuterClass.AdViewerRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAdViewerRequest(value);
            }

            public final void clearAdViewerRequest() {
                this._builder.clearAdViewerRequest();
            }

            public final boolean hasAdViewerRequest() {
                return this._builder.hasAdViewerRequest();
            }

            public final UniversalRequestOuterClass.UniversalRequest.Payload.ValueCase getValueCase() {
                UniversalRequestOuterClass.UniversalRequest.Payload.ValueCase valueCase = this._builder.getValueCase();
                Intrinsics.checkNotNullExpressionValue(valueCase, "getValueCase(...)");
                return valueCase;
            }

            public final void clearValue() {
                this._builder.clearValue();
            }
        }
    }
}
