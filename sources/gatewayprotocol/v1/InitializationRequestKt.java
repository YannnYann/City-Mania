package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslMap;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import gatewayprotocol.v1.ModuleInitParamsOuterClass;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InitializationRequestKt {
    public static final InitializationRequestKt INSTANCE = new InitializationRequestKt();

    private InitializationRequestKt() {
    }

    /* JADX INFO: compiled from: InitializationRequestKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final InitializationRequestOuterClass.InitializationRequest.Builder _builder;

        public /* synthetic */ Dsl(InitializationRequestOuterClass.InitializationRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(InitializationRequestOuterClass.InitializationRequest.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: InitializationRequestKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.InitializationRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ InitializationRequestOuterClass.InitializationRequest _build() {
            InitializationRequestOuterClass.InitializationRequest initializationRequestBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(initializationRequestBuild, "build(...)");
            return initializationRequestBuild;
        }

        public final ClientInfoOuterClass.ClientInfo getClientInfo() {
            ClientInfoOuterClass.ClientInfo clientInfo = this._builder.getClientInfo();
            Intrinsics.checkNotNullExpressionValue(clientInfo, "getClientInfo(...)");
            return clientInfo;
        }

        public final void setClientInfo(ClientInfoOuterClass.ClientInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setClientInfo(value);
        }

        public final void clearClientInfo() {
            this._builder.clearClientInfo();
        }

        public final boolean hasClientInfo() {
            return this._builder.hasClientInfo();
        }

        public final ByteString getPrivacy() {
            ByteString privacy = this._builder.getPrivacy();
            Intrinsics.checkNotNullExpressionValue(privacy, "getPrivacy(...)");
            return privacy;
        }

        public final void setPrivacy(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPrivacy(value);
        }

        public final void clearPrivacy() {
            this._builder.clearPrivacy();
        }

        public final boolean hasPrivacy() {
            return this._builder.hasPrivacy();
        }

        public final String getIdfi() {
            String idfi = this._builder.getIdfi();
            Intrinsics.checkNotNullExpressionValue(idfi, "getIdfi(...)");
            return idfi;
        }

        public final void setIdfi(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setIdfi(value);
        }

        public final void clearIdfi() {
            this._builder.clearIdfi();
        }

        public final ByteString getSessionId() {
            ByteString sessionId = this._builder.getSessionId();
            Intrinsics.checkNotNullExpressionValue(sessionId, "getSessionId(...)");
            return sessionId;
        }

        public final void setSessionId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSessionId(value);
        }

        public final void clearSessionId() {
            this._builder.clearSessionId();
        }

        public final ByteString getCache() {
            ByteString cache = this._builder.getCache();
            Intrinsics.checkNotNullExpressionValue(cache, "getCache(...)");
            return cache;
        }

        public final void setCache(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCache(value);
        }

        public final void clearCache() {
            this._builder.clearCache();
        }

        public final boolean hasCache() {
            return this._builder.hasCache();
        }

        public final String getLegacyFlowUserConsent() {
            String legacyFlowUserConsent = this._builder.getLegacyFlowUserConsent();
            Intrinsics.checkNotNullExpressionValue(legacyFlowUserConsent, "getLegacyFlowUserConsent(...)");
            return legacyFlowUserConsent;
        }

        public final void setLegacyFlowUserConsent(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setLegacyFlowUserConsent(value);
        }

        public final void clearLegacyFlowUserConsent() {
            this._builder.clearLegacyFlowUserConsent();
        }

        public final boolean hasLegacyFlowUserConsent() {
            return this._builder.hasLegacyFlowUserConsent();
        }

        public final ByteString getAuid() {
            ByteString auid = this._builder.getAuid();
            Intrinsics.checkNotNullExpressionValue(auid, "getAuid(...)");
            return auid;
        }

        public final void setAuid(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAuid(value);
        }

        public final void clearAuid() {
            this._builder.clearAuid();
        }

        public final boolean hasAuid() {
            return this._builder.hasAuid();
        }

        public final String getAnalyticsUserId() {
            String analyticsUserId = this._builder.getAnalyticsUserId();
            Intrinsics.checkNotNullExpressionValue(analyticsUserId, "getAnalyticsUserId(...)");
            return analyticsUserId;
        }

        public final void setAnalyticsUserId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAnalyticsUserId(value);
        }

        public final void clearAnalyticsUserId() {
            this._builder.clearAnalyticsUserId();
        }

        public final boolean hasAnalyticsUserId() {
            return this._builder.hasAnalyticsUserId();
        }

        public final InitializationRequestOuterClass.InitializationDeviceInfo getDeviceInfo() {
            InitializationRequestOuterClass.InitializationDeviceInfo deviceInfo = this._builder.getDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(deviceInfo, "getDeviceInfo(...)");
            return deviceInfo;
        }

        public final void setDeviceInfo(InitializationRequestOuterClass.InitializationDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceInfo(value);
        }

        public final void clearDeviceInfo() {
            this._builder.clearDeviceInfo();
        }

        public final boolean hasDeviceInfo() {
            return this._builder.hasDeviceInfo();
        }

        public final boolean getIsFirstInit() {
            return this._builder.getIsFirstInit();
        }

        public final void setIsFirstInit(boolean z) {
            this._builder.setIsFirstInit(z);
        }

        public final void clearIsFirstInit() {
            this._builder.clearIsFirstInit();
        }

        public final String getAuidString() {
            String auidString = this._builder.getAuidString();
            Intrinsics.checkNotNullExpressionValue(auidString, "getAuidString(...)");
            return auidString;
        }

        public final void setAuidString(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAuidString(value);
        }

        public final void clearAuidString() {
            this._builder.clearAuidString();
        }

        public final boolean hasAuidString() {
            return this._builder.hasAuidString();
        }

        public final ByteString getUadsInitBlob() {
            ByteString uadsInitBlob = this._builder.getUadsInitBlob();
            Intrinsics.checkNotNullExpressionValue(uadsInitBlob, "getUadsInitBlob(...)");
            return uadsInitBlob;
        }

        public final void setUadsInitBlob(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUadsInitBlob(value);
        }

        public final void clearUadsInitBlob() {
            this._builder.clearUadsInitBlob();
        }

        public final boolean hasUadsInitBlob() {
            return this._builder.hasUadsInitBlob();
        }

        public final ByteString getUnityInstallationId() {
            ByteString unityInstallationId = this._builder.getUnityInstallationId();
            Intrinsics.checkNotNullExpressionValue(unityInstallationId, "getUnityInstallationId(...)");
            return unityInstallationId;
        }

        public final void setUnityInstallationId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUnityInstallationId(value);
        }

        public final void clearUnityInstallationId() {
            this._builder.clearUnityInstallationId();
        }

        public final boolean hasUnityInstallationId() {
            return this._builder.hasUnityInstallationId();
        }

        public final ByteString getUnityMegaSessionId() {
            ByteString unityMegaSessionId = this._builder.getUnityMegaSessionId();
            Intrinsics.checkNotNullExpressionValue(unityMegaSessionId, "getUnityMegaSessionId(...)");
            return unityMegaSessionId;
        }

        public final void setUnityMegaSessionId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUnityMegaSessionId(value);
        }

        public final void clearUnityMegaSessionId() {
            this._builder.clearUnityMegaSessionId();
        }

        public final boolean hasUnityMegaSessionId() {
            return this._builder.hasUnityMegaSessionId();
        }

        public final String getExternalUserIdentifier() {
            String externalUserIdentifier = this._builder.getExternalUserIdentifier();
            Intrinsics.checkNotNullExpressionValue(externalUserIdentifier, "getExternalUserIdentifier(...)");
            return externalUserIdentifier;
        }

        public final void setExternalUserIdentifier(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setExternalUserIdentifier(value);
        }

        public final void clearExternalUserIdentifier() {
            this._builder.clearExternalUserIdentifier();
        }

        public final boolean hasExternalUserIdentifier() {
            return this._builder.hasExternalUserIdentifier();
        }

        /* JADX INFO: compiled from: InitializationRequestKt.kt */
        public static final class ExtrasProxy extends DslProxy {
            private ExtrasProxy() {
            }
        }

        public final /* synthetic */ DslMap getExtrasMap() {
            Map<String, String> extrasMap = this._builder.getExtrasMap();
            Intrinsics.checkNotNullExpressionValue(extrasMap, "getExtrasMap(...)");
            return new DslMap(extrasMap);
        }

        public final void putExtras(DslMap<String, String, ExtrasProxy> dslMap, String key, String value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.putExtras(key, value);
        }

        public final /* synthetic */ void setExtras(DslMap<String, String, ExtrasProxy> dslMap, String key, String value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            putExtras(dslMap, key, value);
        }

        public final /* synthetic */ void removeExtras(DslMap dslMap, String key) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            this._builder.removeExtras(key);
        }

        public final /* synthetic */ void putAllExtras(DslMap dslMap, Map map) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            this._builder.putAllExtras(map);
        }

        public final /* synthetic */ void clearExtras(DslMap dslMap) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            this._builder.clearExtras();
        }

        public final String getUnityBuildGuid() {
            String unityBuildGuid = this._builder.getUnityBuildGuid();
            Intrinsics.checkNotNullExpressionValue(unityBuildGuid, "getUnityBuildGuid(...)");
            return unityBuildGuid;
        }

        public final void setUnityBuildGuid(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUnityBuildGuid(value);
        }

        public final void clearUnityBuildGuid() {
            this._builder.clearUnityBuildGuid();
        }

        public final boolean hasUnityBuildGuid() {
            return this._builder.hasUnityBuildGuid();
        }

        public final InitializationRequestOuterClass.InstallReferrer getInstallReferrer() {
            InitializationRequestOuterClass.InstallReferrer installReferrer = this._builder.getInstallReferrer();
            Intrinsics.checkNotNullExpressionValue(installReferrer, "getInstallReferrer(...)");
            return installReferrer;
        }

        public final void setInstallReferrer(InitializationRequestOuterClass.InstallReferrer value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setInstallReferrer(value);
        }

        public final void clearInstallReferrer() {
            this._builder.clearInstallReferrer();
        }

        public final boolean hasInstallReferrer() {
            return this._builder.hasInstallReferrer();
        }

        public final InitializationRequestOuterClass.InstallReferrer getInstallReferrerOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return InitializationRequestKtKt.getInstallReferrerOrNull(dsl._builder);
        }

        public final String getGoogleAppId() {
            String googleAppId = this._builder.getGoogleAppId();
            Intrinsics.checkNotNullExpressionValue(googleAppId, "getGoogleAppId(...)");
            return googleAppId;
        }

        public final void setGoogleAppId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setGoogleAppId(value);
        }

        public final void clearGoogleAppId() {
            this._builder.clearGoogleAppId();
        }

        public final boolean hasGoogleAppId() {
            return this._builder.hasGoogleAppId();
        }

        /* JADX INFO: compiled from: InitializationRequestKt.kt */
        public static final class ModuleInitParamsProxy extends DslProxy {
            private ModuleInitParamsProxy() {
            }
        }

        public final /* synthetic */ DslList getModuleInitParams() {
            List<ModuleInitParamsOuterClass.ModuleInitParams> moduleInitParamsList = this._builder.getModuleInitParamsList();
            Intrinsics.checkNotNullExpressionValue(moduleInitParamsList, "getModuleInitParamsList(...)");
            return new DslList(moduleInitParamsList);
        }

        public final /* synthetic */ void addModuleInitParams(DslList dslList, ModuleInitParamsOuterClass.ModuleInitParams value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addModuleInitParams(value);
        }

        public final /* synthetic */ void plusAssignModuleInitParams(DslList<ModuleInitParamsOuterClass.ModuleInitParams, ModuleInitParamsProxy> dslList, ModuleInitParamsOuterClass.ModuleInitParams value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addModuleInitParams(dslList, value);
        }

        public final /* synthetic */ void addAllModuleInitParams(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllModuleInitParams(values);
        }

        public final /* synthetic */ void plusAssignAllModuleInitParams(DslList<ModuleInitParamsOuterClass.ModuleInitParams, ModuleInitParamsProxy> dslList, Iterable<ModuleInitParamsOuterClass.ModuleInitParams> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllModuleInitParams(dslList, values);
        }

        public final /* synthetic */ void setModuleInitParams(DslList dslList, int i, ModuleInitParamsOuterClass.ModuleInitParams value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setModuleInitParams(i, value);
        }

        public final /* synthetic */ void clearModuleInitParams(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearModuleInitParams();
        }

        public final String getInstallSource() {
            String installSource = this._builder.getInstallSource();
            Intrinsics.checkNotNullExpressionValue(installSource, "getInstallSource(...)");
            return installSource;
        }

        public final void setInstallSource(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setInstallSource(value);
        }

        public final void clearInstallSource() {
            this._builder.clearInstallSource();
        }

        public final boolean hasInstallSource() {
            return this._builder.hasInstallSource();
        }
    }
}
