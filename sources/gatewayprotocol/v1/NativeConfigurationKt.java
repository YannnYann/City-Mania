package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NativeConfigurationKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class NativeConfigurationKt {
    public static final NativeConfigurationKt INSTANCE = new NativeConfigurationKt();

    private NativeConfigurationKt() {
    }

    /* JADX INFO: compiled from: NativeConfigurationKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final NativeConfigurationOuterClass.NativeConfiguration.Builder _builder;

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.NativeConfiguration.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(NativeConfigurationOuterClass.NativeConfiguration.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: NativeConfigurationKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.NativeConfiguration.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ NativeConfigurationOuterClass.NativeConfiguration _build() {
            NativeConfigurationOuterClass.NativeConfiguration nativeConfigurationBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(nativeConfigurationBuild, "build(...)");
            return nativeConfigurationBuild;
        }

        public final NativeConfigurationOuterClass.DiagnosticEventsConfiguration getDiagnosticEvents() {
            NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticEvents = this._builder.getDiagnosticEvents();
            Intrinsics.checkNotNullExpressionValue(diagnosticEvents, "getDiagnosticEvents(...)");
            return diagnosticEvents;
        }

        public final void setDiagnosticEvents(NativeConfigurationOuterClass.DiagnosticEventsConfiguration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDiagnosticEvents(value);
        }

        public final void clearDiagnosticEvents() {
            this._builder.clearDiagnosticEvents();
        }

        public final boolean hasDiagnosticEvents() {
            return this._builder.hasDiagnosticEvents();
        }

        public final NativeConfigurationOuterClass.RequestPolicy getInitPolicy() {
            NativeConfigurationOuterClass.RequestPolicy initPolicy = this._builder.getInitPolicy();
            Intrinsics.checkNotNullExpressionValue(initPolicy, "getInitPolicy(...)");
            return initPolicy;
        }

        public final void setInitPolicy(NativeConfigurationOuterClass.RequestPolicy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setInitPolicy(value);
        }

        public final void clearInitPolicy() {
            this._builder.clearInitPolicy();
        }

        public final boolean hasInitPolicy() {
            return this._builder.hasInitPolicy();
        }

        public final NativeConfigurationOuterClass.RequestPolicy getAdPolicy() {
            NativeConfigurationOuterClass.RequestPolicy adPolicy = this._builder.getAdPolicy();
            Intrinsics.checkNotNullExpressionValue(adPolicy, "getAdPolicy(...)");
            return adPolicy;
        }

        public final void setAdPolicy(NativeConfigurationOuterClass.RequestPolicy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdPolicy(value);
        }

        public final void clearAdPolicy() {
            this._builder.clearAdPolicy();
        }

        public final boolean hasAdPolicy() {
            return this._builder.hasAdPolicy();
        }

        public final NativeConfigurationOuterClass.RequestPolicy getOperativeEventPolicy() {
            NativeConfigurationOuterClass.RequestPolicy operativeEventPolicy = this._builder.getOperativeEventPolicy();
            Intrinsics.checkNotNullExpressionValue(operativeEventPolicy, "getOperativeEventPolicy(...)");
            return operativeEventPolicy;
        }

        public final void setOperativeEventPolicy(NativeConfigurationOuterClass.RequestPolicy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOperativeEventPolicy(value);
        }

        public final void clearOperativeEventPolicy() {
            this._builder.clearOperativeEventPolicy();
        }

        public final boolean hasOperativeEventPolicy() {
            return this._builder.hasOperativeEventPolicy();
        }

        public final NativeConfigurationOuterClass.RequestPolicy getOtherPolicy() {
            NativeConfigurationOuterClass.RequestPolicy otherPolicy = this._builder.getOtherPolicy();
            Intrinsics.checkNotNullExpressionValue(otherPolicy, "getOtherPolicy(...)");
            return otherPolicy;
        }

        public final void setOtherPolicy(NativeConfigurationOuterClass.RequestPolicy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOtherPolicy(value);
        }

        public final void clearOtherPolicy() {
            this._builder.clearOtherPolicy();
        }

        public final boolean hasOtherPolicy() {
            return this._builder.hasOtherPolicy();
        }

        public final NativeConfigurationOuterClass.AdOperationsConfiguration getAdOperations() {
            NativeConfigurationOuterClass.AdOperationsConfiguration adOperations = this._builder.getAdOperations();
            Intrinsics.checkNotNullExpressionValue(adOperations, "getAdOperations(...)");
            return adOperations;
        }

        public final void setAdOperations(NativeConfigurationOuterClass.AdOperationsConfiguration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdOperations(value);
        }

        public final void clearAdOperations() {
            this._builder.clearAdOperations();
        }

        public final boolean hasAdOperations() {
            return this._builder.hasAdOperations();
        }

        public final NativeConfigurationOuterClass.FeatureFlags getFeatureFlags() {
            NativeConfigurationOuterClass.FeatureFlags featureFlags = this._builder.getFeatureFlags();
            Intrinsics.checkNotNullExpressionValue(featureFlags, "getFeatureFlags(...)");
            return featureFlags;
        }

        public final void setFeatureFlags(NativeConfigurationOuterClass.FeatureFlags value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setFeatureFlags(value);
        }

        public final void clearFeatureFlags() {
            this._builder.clearFeatureFlags();
        }

        public final boolean hasFeatureFlags() {
            return this._builder.hasFeatureFlags();
        }

        public final boolean getEnableIapEvent() {
            return this._builder.getEnableIapEvent();
        }

        public final void setEnableIapEvent(boolean z) {
            this._builder.setEnableIapEvent(z);
        }

        public final void clearEnableIapEvent() {
            this._builder.clearEnableIapEvent();
        }

        public final boolean getEnableOm() {
            return this._builder.getEnableOm();
        }

        public final void setEnableOm(boolean z) {
            this._builder.setEnableOm(z);
        }

        public final void clearEnableOm() {
            this._builder.clearEnableOm();
        }

        /* JADX INFO: compiled from: NativeConfigurationKt.kt */
        public static final class AdditionalStorePackagesProxy extends DslProxy {
            private AdditionalStorePackagesProxy() {
            }
        }

        public final DslList<String, AdditionalStorePackagesProxy> getAdditionalStorePackages() {
            List<String> additionalStorePackagesList = this._builder.getAdditionalStorePackagesList();
            Intrinsics.checkNotNullExpressionValue(additionalStorePackagesList, "getAdditionalStorePackagesList(...)");
            return new DslList<>(additionalStorePackagesList);
        }

        public final /* synthetic */ void addAdditionalStorePackages(DslList dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addAdditionalStorePackages(value);
        }

        public final /* synthetic */ void plusAssignAdditionalStorePackages(DslList<String, AdditionalStorePackagesProxy> dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addAdditionalStorePackages(dslList, value);
        }

        public final /* synthetic */ void addAllAdditionalStorePackages(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllAdditionalStorePackages(values);
        }

        public final /* synthetic */ void plusAssignAllAdditionalStorePackages(DslList<String, AdditionalStorePackagesProxy> dslList, Iterable<String> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllAdditionalStorePackages(dslList, values);
        }

        public final /* synthetic */ void setAdditionalStorePackages(DslList dslList, int i, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdditionalStorePackages(i, value);
        }

        public final /* synthetic */ void clearAdditionalStorePackages(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearAdditionalStorePackages();
        }

        public final NativeConfigurationOuterClass.CachedAssetsConfiguration getCachedAssetsConfiguration() {
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration = this._builder.getCachedAssetsConfiguration();
            Intrinsics.checkNotNullExpressionValue(cachedAssetsConfiguration, "getCachedAssetsConfiguration(...)");
            return cachedAssetsConfiguration;
        }

        public final void setCachedAssetsConfiguration(NativeConfigurationOuterClass.CachedAssetsConfiguration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCachedAssetsConfiguration(value);
        }

        public final void clearCachedAssetsConfiguration() {
            this._builder.clearCachedAssetsConfiguration();
        }

        public final boolean hasCachedAssetsConfiguration() {
            return this._builder.hasCachedAssetsConfiguration();
        }

        /* JADX INFO: compiled from: NativeConfigurationKt.kt */
        public static final class ObservableAndroidActivitiesProxy extends DslProxy {
            private ObservableAndroidActivitiesProxy() {
            }
        }

        public final /* synthetic */ DslList getObservableAndroidActivities() {
            List<ByteString> observableAndroidActivitiesList = this._builder.getObservableAndroidActivitiesList();
            Intrinsics.checkNotNullExpressionValue(observableAndroidActivitiesList, "getObservableAndroidActivitiesList(...)");
            return new DslList(observableAndroidActivitiesList);
        }

        public final /* synthetic */ void addObservableAndroidActivities(DslList dslList, ByteString value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addObservableAndroidActivities(value);
        }

        public final /* synthetic */ void plusAssignObservableAndroidActivities(DslList<ByteString, ObservableAndroidActivitiesProxy> dslList, ByteString value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addObservableAndroidActivities(dslList, value);
        }

        public final /* synthetic */ void addAllObservableAndroidActivities(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllObservableAndroidActivities(values);
        }

        public final /* synthetic */ void plusAssignAllObservableAndroidActivities(DslList<ByteString, ObservableAndroidActivitiesProxy> dslList, Iterable<? extends ByteString> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllObservableAndroidActivities(dslList, values);
        }

        public final /* synthetic */ void setObservableAndroidActivities(DslList dslList, int i, ByteString value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setObservableAndroidActivities(i, value);
        }

        public final /* synthetic */ void clearObservableAndroidActivities(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearObservableAndroidActivities();
        }

        public final NativeConfigurationOuterClass.CachedAssetsConfiguration getCachedWebviewFilesConfiguration() {
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedWebviewFilesConfiguration = this._builder.getCachedWebviewFilesConfiguration();
            Intrinsics.checkNotNullExpressionValue(cachedWebviewFilesConfiguration, "getCachedWebviewFilesConfiguration(...)");
            return cachedWebviewFilesConfiguration;
        }

        public final void setCachedWebviewFilesConfiguration(NativeConfigurationOuterClass.CachedAssetsConfiguration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCachedWebviewFilesConfiguration(value);
        }

        public final void clearCachedWebviewFilesConfiguration() {
            this._builder.clearCachedWebviewFilesConfiguration();
        }

        public final boolean hasCachedWebviewFilesConfiguration() {
            return this._builder.hasCachedWebviewFilesConfiguration();
        }

        public final NativeConfigurationOuterClass.ShowCompletionState getDefaultShowCompletionState() {
            NativeConfigurationOuterClass.ShowCompletionState defaultShowCompletionState = this._builder.getDefaultShowCompletionState();
            Intrinsics.checkNotNullExpressionValue(defaultShowCompletionState, "getDefaultShowCompletionState(...)");
            return defaultShowCompletionState;
        }

        public final void setDefaultShowCompletionState(NativeConfigurationOuterClass.ShowCompletionState value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDefaultShowCompletionState(value);
        }

        public final int getDefaultShowCompletionStateValue() {
            return this._builder.getDefaultShowCompletionStateValue();
        }

        public final void setDefaultShowCompletionStateValue(int i) {
            this._builder.setDefaultShowCompletionStateValue(i);
        }

        public final void clearDefaultShowCompletionState() {
            this._builder.clearDefaultShowCompletionState();
        }

        public final NativeConfigurationOuterClass.RequestPolicy getDownloadPolicy() {
            NativeConfigurationOuterClass.RequestPolicy downloadPolicy = this._builder.getDownloadPolicy();
            Intrinsics.checkNotNullExpressionValue(downloadPolicy, "getDownloadPolicy(...)");
            return downloadPolicy;
        }

        public final void setDownloadPolicy(NativeConfigurationOuterClass.RequestPolicy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDownloadPolicy(value);
        }

        public final void clearDownloadPolicy() {
            this._builder.clearDownloadPolicy();
        }

        public final boolean hasDownloadPolicy() {
            return this._builder.hasDownloadPolicy();
        }

        public final NativeConfigurationOuterClass.DebugSettings getDebugSettings() {
            NativeConfigurationOuterClass.DebugSettings debugSettings = this._builder.getDebugSettings();
            Intrinsics.checkNotNullExpressionValue(debugSettings, "getDebugSettings(...)");
            return debugSettings;
        }

        public final void setDebugSettings(NativeConfigurationOuterClass.DebugSettings value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDebugSettings(value);
        }

        public final void clearDebugSettings() {
            this._builder.clearDebugSettings();
        }

        public final boolean hasDebugSettings() {
            return this._builder.hasDebugSettings();
        }

        public final int getMaxExtrasSizeKb() {
            return this._builder.getMaxExtrasSizeKb();
        }

        public final void setMaxExtrasSizeKb(int i) {
            this._builder.setMaxExtrasSizeKb(i);
        }

        public final void clearMaxExtrasSizeKb() {
            this._builder.clearMaxExtrasSizeKb();
        }

        public final int getMaxReceiptSizeMb() {
            return this._builder.getMaxReceiptSizeMb();
        }

        public final void setMaxReceiptSizeMb(int i) {
            this._builder.setMaxReceiptSizeMb(i);
        }

        public final void clearMaxReceiptSizeMb() {
            this._builder.clearMaxReceiptSizeMb();
        }

        public final int getOverwriteIntentFlagActivity() {
            return this._builder.getOverwriteIntentFlagActivity();
        }

        public final void setOverwriteIntentFlagActivity(int i) {
            this._builder.setOverwriteIntentFlagActivity(i);
        }

        public final void clearOverwriteIntentFlagActivity() {
            this._builder.clearOverwriteIntentFlagActivity();
        }

        /* JADX INFO: compiled from: NativeConfigurationKt.kt */
        public static final class ObservableViewControllersProxy extends DslProxy {
            private ObservableViewControllersProxy() {
            }
        }

        public final /* synthetic */ DslList getObservableViewControllers() {
            List<ByteString> observableViewControllersList = this._builder.getObservableViewControllersList();
            Intrinsics.checkNotNullExpressionValue(observableViewControllersList, "getObservableViewControllersList(...)");
            return new DslList(observableViewControllersList);
        }

        public final /* synthetic */ void addObservableViewControllers(DslList dslList, ByteString value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addObservableViewControllers(value);
        }

        public final /* synthetic */ void plusAssignObservableViewControllers(DslList<ByteString, ObservableViewControllersProxy> dslList, ByteString value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addObservableViewControllers(dslList, value);
        }

        public final /* synthetic */ void addAllObservableViewControllers(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllObservableViewControllers(values);
        }

        public final /* synthetic */ void plusAssignAllObservableViewControllers(DslList<ByteString, ObservableViewControllersProxy> dslList, Iterable<? extends ByteString> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllObservableViewControllers(dslList, values);
        }

        public final /* synthetic */ void setObservableViewControllers(DslList dslList, int i, ByteString value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setObservableViewControllers(i, value);
        }

        public final /* synthetic */ void clearObservableViewControllers(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearObservableViewControllers();
        }

        /* JADX INFO: compiled from: NativeConfigurationKt.kt */
        public static final class MonitoringIdsProxy extends DslProxy {
            private MonitoringIdsProxy() {
            }
        }

        public final /* synthetic */ DslList getMonitoringIds() {
            List<Integer> monitoringIdsList = this._builder.getMonitoringIdsList();
            Intrinsics.checkNotNullExpressionValue(monitoringIdsList, "getMonitoringIdsList(...)");
            return new DslList(monitoringIdsList);
        }

        public final /* synthetic */ void addMonitoringIds(DslList dslList, int i) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.addMonitoringIds(i);
        }

        public final /* synthetic */ void plusAssignMonitoringIds(DslList<Integer, MonitoringIdsProxy> dslList, int i) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            addMonitoringIds(dslList, i);
        }

        public final /* synthetic */ void addAllMonitoringIds(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllMonitoringIds(values);
        }

        public final /* synthetic */ void plusAssignAllMonitoringIds(DslList<Integer, MonitoringIdsProxy> dslList, Iterable<Integer> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllMonitoringIds(dslList, values);
        }

        public final /* synthetic */ void setMonitoringIds(DslList dslList, int i, int i2) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.setMonitoringIds(i, i2);
        }

        public final /* synthetic */ void clearMonitoringIds(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearMonitoringIds();
        }

        public final String getLevelPlayAppKey() {
            String levelPlayAppKey = this._builder.getLevelPlayAppKey();
            Intrinsics.checkNotNullExpressionValue(levelPlayAppKey, "getLevelPlayAppKey(...)");
            return levelPlayAppKey;
        }

        public final void setLevelPlayAppKey(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setLevelPlayAppKey(value);
        }

        public final void clearLevelPlayAppKey() {
            this._builder.clearLevelPlayAppKey();
        }

        public final boolean hasLevelPlayAppKey() {
            return this._builder.hasLevelPlayAppKey();
        }

        public final NativeConfigurationOuterClass.AccelerometerCollectionConfiguration getAccelerometerCollection() {
            NativeConfigurationOuterClass.AccelerometerCollectionConfiguration accelerometerCollection = this._builder.getAccelerometerCollection();
            Intrinsics.checkNotNullExpressionValue(accelerometerCollection, "getAccelerometerCollection(...)");
            return accelerometerCollection;
        }

        public final void setAccelerometerCollection(NativeConfigurationOuterClass.AccelerometerCollectionConfiguration value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAccelerometerCollection(value);
        }

        public final void clearAccelerometerCollection() {
            this._builder.clearAccelerometerCollection();
        }

        public final boolean hasAccelerometerCollection() {
            return this._builder.hasAccelerometerCollection();
        }

        public final int getOptimisticInitDelayMs() {
            return this._builder.getOptimisticInitDelayMs();
        }

        public final void setOptimisticInitDelayMs(int i) {
            this._builder.setOptimisticInitDelayMs(i);
        }

        public final void clearOptimisticInitDelayMs() {
            this._builder.clearOptimisticInitDelayMs();
        }

        public final boolean hasOptimisticInitDelayMs() {
            return this._builder.hasOptimisticInitDelayMs();
        }
    }
}
