package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslMap;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdFormatOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.ModuleOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InitializationResponseKt {
    public static final InitializationResponseKt INSTANCE = new InitializationResponseKt();

    private InitializationResponseKt() {
    }

    /* JADX INFO: compiled from: InitializationResponseKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final InitializationResponseOuterClass.InitializationResponse.Builder _builder;

        public /* synthetic */ Dsl(InitializationResponseOuterClass.InitializationResponse.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(InitializationResponseOuterClass.InitializationResponse.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: InitializationResponseKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(InitializationResponseOuterClass.InitializationResponse.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ InitializationResponseOuterClass.InitializationResponse _build() {
            InitializationResponseOuterClass.InitializationResponse initializationResponseBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(initializationResponseBuild, "build(...)");
            return initializationResponseBuild;
        }

        public final NativeConfigurationOuterClass.NativeConfiguration getNativeConfiguration() {
            NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration = this._builder.getNativeConfiguration();
            Intrinsics.checkNotNullExpressionValue(nativeConfiguration, "getNativeConfiguration(...)");
            return nativeConfiguration;
        }

        public final void setNativeConfiguration(NativeConfigurationOuterClass.NativeConfiguration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setNativeConfiguration(value);
        }

        public final void clearNativeConfiguration() {
            this._builder.clearNativeConfiguration();
        }

        public final boolean hasNativeConfiguration() {
            return this._builder.hasNativeConfiguration();
        }

        public final String getUniversalRequestUrl() {
            String universalRequestUrl = this._builder.getUniversalRequestUrl();
            Intrinsics.checkNotNullExpressionValue(universalRequestUrl, "getUniversalRequestUrl(...)");
            return universalRequestUrl;
        }

        public final void setUniversalRequestUrl(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUniversalRequestUrl(value);
        }

        public final void clearUniversalRequestUrl() {
            this._builder.clearUniversalRequestUrl();
        }

        public final boolean hasUniversalRequestUrl() {
            return this._builder.hasUniversalRequestUrl();
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
            return InitializationResponseKtKt.getErrorOrNull(dsl._builder);
        }

        public final boolean getTriggerInitializationCompletedRequest() {
            return this._builder.getTriggerInitializationCompletedRequest();
        }

        public final void setTriggerInitializationCompletedRequest(boolean z) {
            this._builder.setTriggerInitializationCompletedRequest(z);
        }

        public final void clearTriggerInitializationCompletedRequest() {
            this._builder.clearTriggerInitializationCompletedRequest();
        }

        public final int getCountOfLastShownCampaigns() {
            return this._builder.getCountOfLastShownCampaigns();
        }

        public final void setCountOfLastShownCampaigns(int i) {
            this._builder.setCountOfLastShownCampaigns(i);
        }

        public final void clearCountOfLastShownCampaigns() {
            this._builder.clearCountOfLastShownCampaigns();
        }

        /* JADX INFO: compiled from: InitializationResponseKt.kt */
        public static final class ScarPlacementsProxy extends DslProxy {
            private ScarPlacementsProxy() {
            }
        }

        public final /* synthetic */ DslMap getScarPlacementsMap() {
            Map<String, InitializationResponseOuterClass.Placement> scarPlacementsMap = this._builder.getScarPlacementsMap();
            Intrinsics.checkNotNullExpressionValue(scarPlacementsMap, "getScarPlacementsMap(...)");
            return new DslMap(scarPlacementsMap);
        }

        public final void putScarPlacements(DslMap<String, InitializationResponseOuterClass.Placement, ScarPlacementsProxy> dslMap, String key, InitializationResponseOuterClass.Placement value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.putScarPlacements(key, value);
        }

        public final /* synthetic */ void setScarPlacements(DslMap<String, InitializationResponseOuterClass.Placement, ScarPlacementsProxy> dslMap, String key, InitializationResponseOuterClass.Placement value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            putScarPlacements(dslMap, key, value);
        }

        public final /* synthetic */ void removeScarPlacements(DslMap dslMap, String key) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            this._builder.removeScarPlacements(key);
        }

        public final /* synthetic */ void putAllScarPlacements(DslMap dslMap, Map map) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            this._builder.putAllScarPlacements(map);
        }

        public final /* synthetic */ void clearScarPlacements(DslMap dslMap) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            this._builder.clearScarPlacements();
        }

        /* JADX INFO: compiled from: InitializationResponseKt.kt */
        public static final class ScarEligibleFormatsProxy extends DslProxy {
            private ScarEligibleFormatsProxy() {
            }
        }

        public final /* synthetic */ DslList getScarEligibleFormats() {
            List<AdFormatOuterClass.AdFormat> scarEligibleFormatsList = this._builder.getScarEligibleFormatsList();
            Intrinsics.checkNotNullExpressionValue(scarEligibleFormatsList, "getScarEligibleFormatsList(...)");
            return new DslList(scarEligibleFormatsList);
        }

        public final /* synthetic */ void addScarEligibleFormats(DslList dslList, AdFormatOuterClass.AdFormat value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addScarEligibleFormats(value);
        }

        public final /* synthetic */ void plusAssignScarEligibleFormats(DslList<AdFormatOuterClass.AdFormat, ScarEligibleFormatsProxy> dslList, AdFormatOuterClass.AdFormat value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addScarEligibleFormats(dslList, value);
        }

        public final /* synthetic */ void addAllScarEligibleFormats(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllScarEligibleFormats(values);
        }

        public final /* synthetic */ void plusAssignAllScarEligibleFormats(DslList<AdFormatOuterClass.AdFormat, ScarEligibleFormatsProxy> dslList, Iterable<? extends AdFormatOuterClass.AdFormat> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllScarEligibleFormats(dslList, values);
        }

        public final /* synthetic */ void setScarEligibleFormats(DslList dslList, int i, AdFormatOuterClass.AdFormat value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setScarEligibleFormats(i, value);
        }

        public final /* synthetic */ void clearScarEligibleFormats(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearScarEligibleFormats();
        }

        /* JADX INFO: compiled from: InitializationResponseKt.kt */
        public static final class RequestUrlOverridesProxy extends DslProxy {
            private RequestUrlOverridesProxy() {
            }
        }

        public final /* synthetic */ DslList getRequestUrlOverrides() {
            List<InitializationResponseOuterClass.RequestUrlOverride> requestUrlOverridesList = this._builder.getRequestUrlOverridesList();
            Intrinsics.checkNotNullExpressionValue(requestUrlOverridesList, "getRequestUrlOverridesList(...)");
            return new DslList(requestUrlOverridesList);
        }

        public final /* synthetic */ void addRequestUrlOverrides(DslList dslList, InitializationResponseOuterClass.RequestUrlOverride value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addRequestUrlOverrides(value);
        }

        public final /* synthetic */ void plusAssignRequestUrlOverrides(DslList<InitializationResponseOuterClass.RequestUrlOverride, RequestUrlOverridesProxy> dslList, InitializationResponseOuterClass.RequestUrlOverride value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addRequestUrlOverrides(dslList, value);
        }

        public final /* synthetic */ void addAllRequestUrlOverrides(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllRequestUrlOverrides(values);
        }

        public final /* synthetic */ void plusAssignAllRequestUrlOverrides(DslList<InitializationResponseOuterClass.RequestUrlOverride, RequestUrlOverridesProxy> dslList, Iterable<InitializationResponseOuterClass.RequestUrlOverride> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllRequestUrlOverrides(dslList, values);
        }

        public final /* synthetic */ void setRequestUrlOverrides(DslList dslList, int i, InitializationResponseOuterClass.RequestUrlOverride value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setRequestUrlOverrides(i, value);
        }

        public final /* synthetic */ void clearRequestUrlOverrides(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearRequestUrlOverrides();
        }

        /* JADX INFO: compiled from: InitializationResponseKt.kt */
        public static final class ModulesProxy extends DslProxy {
            private ModulesProxy() {
            }
        }

        public final /* synthetic */ DslList getModules() {
            List<ModuleOuterClass.Module> modulesList = this._builder.getModulesList();
            Intrinsics.checkNotNullExpressionValue(modulesList, "getModulesList(...)");
            return new DslList(modulesList);
        }

        public final /* synthetic */ void addModules(DslList dslList, ModuleOuterClass.Module value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addModules(value);
        }

        public final /* synthetic */ void plusAssignModules(DslList<ModuleOuterClass.Module, ModulesProxy> dslList, ModuleOuterClass.Module value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addModules(dslList, value);
        }

        public final /* synthetic */ void addAllModules(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllModules(values);
        }

        public final /* synthetic */ void plusAssignAllModules(DslList<ModuleOuterClass.Module, ModulesProxy> dslList, Iterable<ModuleOuterClass.Module> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllModules(dslList, values);
        }

        public final /* synthetic */ void setModules(DslList dslList, int i, ModuleOuterClass.Module value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setModules(i, value);
        }

        public final /* synthetic */ void clearModules(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearModules();
        }
    }
}
