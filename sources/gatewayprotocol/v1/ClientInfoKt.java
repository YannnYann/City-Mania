package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ClientInfoKt {
    public static final ClientInfoKt INSTANCE = new ClientInfoKt();

    private ClientInfoKt() {
    }

    /* JADX INFO: compiled from: ClientInfoKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final ClientInfoOuterClass.ClientInfo.Builder _builder;

        public /* synthetic */ Dsl(ClientInfoOuterClass.ClientInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(ClientInfoOuterClass.ClientInfo.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: ClientInfoKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(ClientInfoOuterClass.ClientInfo.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ ClientInfoOuterClass.ClientInfo _build() {
            ClientInfoOuterClass.ClientInfo clientInfoBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(clientInfoBuild, "build(...)");
            return clientInfoBuild;
        }

        public final int getSdkVersion() {
            return this._builder.getSdkVersion();
        }

        public final void setSdkVersion(int i) {
            this._builder.setSdkVersion(i);
        }

        public final void clearSdkVersion() {
            this._builder.clearSdkVersion();
        }

        public final String getSdkVersionName() {
            String sdkVersionName = this._builder.getSdkVersionName();
            Intrinsics.checkNotNullExpressionValue(sdkVersionName, "getSdkVersionName(...)");
            return sdkVersionName;
        }

        public final void setSdkVersionName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSdkVersionName(value);
        }

        public final void clearSdkVersionName() {
            this._builder.clearSdkVersionName();
        }

        public final String getGameId() {
            String gameId = this._builder.getGameId();
            Intrinsics.checkNotNullExpressionValue(gameId, "getGameId(...)");
            return gameId;
        }

        public final void setGameId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setGameId(value);
        }

        public final void clearGameId() {
            this._builder.clearGameId();
        }

        public final boolean getTest() {
            return this._builder.getTest();
        }

        public final void setTest(boolean z) {
            this._builder.setTest(z);
        }

        public final void clearTest() {
            this._builder.clearTest();
        }

        public final ClientInfoOuterClass.Platform getPlatform() {
            ClientInfoOuterClass.Platform platform = this._builder.getPlatform();
            Intrinsics.checkNotNullExpressionValue(platform, "getPlatform(...)");
            return platform;
        }

        public final void setPlatform(ClientInfoOuterClass.Platform value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPlatform(value);
        }

        public final int getPlatformValue() {
            return this._builder.getPlatformValue();
        }

        public final void setPlatformValue(int i) {
            this._builder.setPlatformValue(i);
        }

        public final void clearPlatform() {
            this._builder.clearPlatform();
        }

        public final ClientInfoOuterClass.MediationProvider getMediationProvider() {
            ClientInfoOuterClass.MediationProvider mediationProvider = this._builder.getMediationProvider();
            Intrinsics.checkNotNullExpressionValue(mediationProvider, "getMediationProvider(...)");
            return mediationProvider;
        }

        public final void setMediationProvider(ClientInfoOuterClass.MediationProvider value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMediationProvider(value);
        }

        public final int getMediationProviderValue() {
            return this._builder.getMediationProviderValue();
        }

        public final void setMediationProviderValue(int i) {
            this._builder.setMediationProviderValue(i);
        }

        public final void clearMediationProvider() {
            this._builder.clearMediationProvider();
        }

        public final String getCustomMediationName() {
            String customMediationName = this._builder.getCustomMediationName();
            Intrinsics.checkNotNullExpressionValue(customMediationName, "getCustomMediationName(...)");
            return customMediationName;
        }

        public final void setCustomMediationName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCustomMediationName(value);
        }

        public final void clearCustomMediationName() {
            this._builder.clearCustomMediationName();
        }

        public final boolean hasCustomMediationName() {
            return this._builder.hasCustomMediationName();
        }

        public final String getMediationVersion() {
            String mediationVersion = this._builder.getMediationVersion();
            Intrinsics.checkNotNullExpressionValue(mediationVersion, "getMediationVersion(...)");
            return mediationVersion;
        }

        public final void setMediationVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMediationVersion(value);
        }

        public final void clearMediationVersion() {
            this._builder.clearMediationVersion();
        }

        public final boolean hasMediationVersion() {
            return this._builder.hasMediationVersion();
        }

        public final String getOmidPartnerVersion() {
            String omidPartnerVersion = this._builder.getOmidPartnerVersion();
            Intrinsics.checkNotNullExpressionValue(omidPartnerVersion, "getOmidPartnerVersion(...)");
            return omidPartnerVersion;
        }

        public final void setOmidPartnerVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOmidPartnerVersion(value);
        }

        public final void clearOmidPartnerVersion() {
            this._builder.clearOmidPartnerVersion();
        }

        public final boolean hasOmidPartnerVersion() {
            return this._builder.hasOmidPartnerVersion();
        }

        public final String getOmidVersion() {
            String omidVersion = this._builder.getOmidVersion();
            Intrinsics.checkNotNullExpressionValue(omidVersion, "getOmidVersion(...)");
            return omidVersion;
        }

        public final void setOmidVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOmidVersion(value);
        }

        public final void clearOmidVersion() {
            this._builder.clearOmidVersion();
        }

        public final boolean hasOmidVersion() {
            return this._builder.hasOmidVersion();
        }

        public final String getSdkDevelopmentPlatform() {
            String sdkDevelopmentPlatform = this._builder.getSdkDevelopmentPlatform();
            Intrinsics.checkNotNullExpressionValue(sdkDevelopmentPlatform, "getSdkDevelopmentPlatform(...)");
            return sdkDevelopmentPlatform;
        }

        public final void setSdkDevelopmentPlatform(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSdkDevelopmentPlatform(value);
        }

        public final void clearSdkDevelopmentPlatform() {
            this._builder.clearSdkDevelopmentPlatform();
        }

        public final boolean hasSdkDevelopmentPlatform() {
            return this._builder.hasSdkDevelopmentPlatform();
        }

        public final String getScarVersionName() {
            String scarVersionName = this._builder.getScarVersionName();
            Intrinsics.checkNotNullExpressionValue(scarVersionName, "getScarVersionName(...)");
            return scarVersionName;
        }

        public final void setScarVersionName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setScarVersionName(value);
        }

        public final void clearScarVersionName() {
            this._builder.clearScarVersionName();
        }

        public final boolean hasScarVersionName() {
            return this._builder.hasScarVersionName();
        }

        public final String getOfferwallVersion() {
            String offerwallVersion = this._builder.getOfferwallVersion();
            Intrinsics.checkNotNullExpressionValue(offerwallVersion, "getOfferwallVersion(...)");
            return offerwallVersion;
        }

        public final void setOfferwallVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOfferwallVersion(value);
        }

        public final void clearOfferwallVersion() {
            this._builder.clearOfferwallVersion();
        }

        public final boolean hasOfferwallVersion() {
            return this._builder.hasOfferwallVersion();
        }

        public final boolean getIsFidAvailable() {
            return this._builder.getIsFidAvailable();
        }

        public final void setIsFidAvailable(boolean z) {
            this._builder.setIsFidAvailable(z);
        }

        public final void clearIsFidAvailable() {
            this._builder.clearIsFidAvailable();
        }

        public final boolean hasIsFidAvailable() {
            return this._builder.hasIsFidAvailable();
        }

        public final String getMediationAdapterVersion() {
            String mediationAdapterVersion = this._builder.getMediationAdapterVersion();
            Intrinsics.checkNotNullExpressionValue(mediationAdapterVersion, "getMediationAdapterVersion(...)");
            return mediationAdapterVersion;
        }

        public final void setMediationAdapterVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setMediationAdapterVersion(value);
        }

        public final void clearMediationAdapterVersion() {
            this._builder.clearMediationAdapterVersion();
        }

        public final boolean hasMediationAdapterVersion() {
            return this._builder.hasMediationAdapterVersion();
        }

        public final String getAdQualitySdkVersion() {
            String adQualitySdkVersion = this._builder.getAdQualitySdkVersion();
            Intrinsics.checkNotNullExpressionValue(adQualitySdkVersion, "getAdQualitySdkVersion(...)");
            return adQualitySdkVersion;
        }

        public final void setAdQualitySdkVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdQualitySdkVersion(value);
        }

        public final void clearAdQualitySdkVersion() {
            this._builder.clearAdQualitySdkVersion();
        }

        public final boolean hasAdQualitySdkVersion() {
            return this._builder.hasAdQualitySdkVersion();
        }
    }
}
