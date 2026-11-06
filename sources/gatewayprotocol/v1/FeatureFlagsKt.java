package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FeatureFlagsKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class FeatureFlagsKt {
    public static final FeatureFlagsKt INSTANCE = new FeatureFlagsKt();

    private FeatureFlagsKt() {
    }

    /* JADX INFO: compiled from: FeatureFlagsKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final NativeConfigurationOuterClass.FeatureFlags.Builder _builder;

        public /* synthetic */ Dsl(NativeConfigurationOuterClass.FeatureFlags.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(NativeConfigurationOuterClass.FeatureFlags.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: FeatureFlagsKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(NativeConfigurationOuterClass.FeatureFlags.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ NativeConfigurationOuterClass.FeatureFlags _build() {
            NativeConfigurationOuterClass.FeatureFlags featureFlagsBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(featureFlagsBuild, "build(...)");
            return featureFlagsBuild;
        }

        public final boolean getOpenglGpuEnabled() {
            return this._builder.getOpenglGpuEnabled();
        }

        public final void setOpenglGpuEnabled(boolean z) {
            this._builder.setOpenglGpuEnabled(z);
        }

        public final void clearOpenglGpuEnabled() {
            this._builder.clearOpenglGpuEnabled();
        }

        public final boolean getOpportunityIdPlacementValidation() {
            return this._builder.getOpportunityIdPlacementValidation();
        }

        public final void setOpportunityIdPlacementValidation(boolean z) {
            this._builder.setOpportunityIdPlacementValidation(z);
        }

        public final void clearOpportunityIdPlacementValidation() {
            this._builder.clearOpportunityIdPlacementValidation();
        }

        public final boolean getBoldSdkNextSessionEnabled() {
            return this._builder.getBoldSdkNextSessionEnabled();
        }

        public final void setBoldSdkNextSessionEnabled(boolean z) {
            this._builder.setBoldSdkNextSessionEnabled(z);
        }

        public final void clearBoldSdkNextSessionEnabled() {
            this._builder.clearBoldSdkNextSessionEnabled();
        }

        public final boolean getAppSheetBugCheckEnabled() {
            return this._builder.getAppSheetBugCheckEnabled();
        }

        public final void setAppSheetBugCheckEnabled(boolean z) {
            this._builder.setAppSheetBugCheckEnabled(z);
        }

        public final void clearAppSheetBugCheckEnabled() {
            this._builder.clearAppSheetBugCheckEnabled();
        }

        public final boolean getRecoverTerminatedWebviews() {
            return this._builder.getRecoverTerminatedWebviews();
        }

        public final void setRecoverTerminatedWebviews(boolean z) {
            this._builder.setRecoverTerminatedWebviews(z);
        }

        public final void clearRecoverTerminatedWebviews() {
            this._builder.clearRecoverTerminatedWebviews();
        }

        public final boolean getShouldHandleWebviewCaching() {
            return this._builder.getShouldHandleWebviewCaching();
        }

        public final void setShouldHandleWebviewCaching(boolean z) {
            this._builder.setShouldHandleWebviewCaching(z);
        }

        public final void clearShouldHandleWebviewCaching() {
            this._builder.clearShouldHandleWebviewCaching();
        }

        public final boolean getShouldSendIapHistory() {
            return this._builder.getShouldSendIapHistory();
        }

        public final void setShouldSendIapHistory(boolean z) {
            this._builder.setShouldSendIapHistory(z);
        }

        public final void clearShouldSendIapHistory() {
            this._builder.clearShouldSendIapHistory();
        }

        public final boolean getCollectIlrData() {
            return this._builder.getCollectIlrData();
        }

        public final void setCollectIlrData(boolean z) {
            this._builder.setCollectIlrData(z);
        }

        public final void clearCollectIlrData() {
            this._builder.clearCollectIlrData();
        }

        public final boolean getDisableGridCollection() {
            return this._builder.getDisableGridCollection();
        }

        public final void setDisableGridCollection(boolean z) {
            this._builder.setDisableGridCollection(z);
        }

        public final void clearDisableGridCollection() {
            this._builder.clearDisableGridCollection();
        }

        public final boolean getDisableCustomScheme() {
            return this._builder.getDisableCustomScheme();
        }

        public final void setDisableCustomScheme(boolean z) {
            this._builder.setDisableCustomScheme(z);
        }

        public final void clearDisableCustomScheme() {
            this._builder.clearDisableCustomScheme();
        }

        public final boolean getUseFilesDir() {
            return this._builder.getUseFilesDir();
        }

        public final void setUseFilesDir(boolean z) {
            this._builder.setUseFilesDir(z);
        }

        public final void clearUseFilesDir() {
            this._builder.clearUseFilesDir();
        }

        public final boolean getUseTryCatchInDownloadQueue() {
            return this._builder.getUseTryCatchInDownloadQueue();
        }

        public final void setUseTryCatchInDownloadQueue(boolean z) {
            this._builder.setUseTryCatchInDownloadQueue(z);
        }

        public final void clearUseTryCatchInDownloadQueue() {
            this._builder.clearUseTryCatchInDownloadQueue();
        }

        public final boolean getEnsureCacheFolderExistences() {
            return this._builder.getEnsureCacheFolderExistences();
        }

        public final void setEnsureCacheFolderExistences(boolean z) {
            this._builder.setEnsureCacheFolderExistences(z);
        }

        public final void clearEnsureCacheFolderExistences() {
            this._builder.clearEnsureCacheFolderExistences();
        }

        public final boolean getWebviewLessLoadParallelActivityLaunch() {
            return this._builder.getWebviewLessLoadParallelActivityLaunch();
        }

        public final void setWebviewLessLoadParallelActivityLaunch(boolean z) {
            this._builder.setWebviewLessLoadParallelActivityLaunch(z);
        }

        public final void clearWebviewLessLoadParallelActivityLaunch() {
            this._builder.clearWebviewLessLoadParallelActivityLaunch();
        }

        public final boolean getCollectLifecycleEvents() {
            return this._builder.getCollectLifecycleEvents();
        }

        public final void setCollectLifecycleEvents(boolean z) {
            this._builder.setCollectLifecycleEvents(z);
        }

        public final void clearCollectLifecycleEvents() {
            this._builder.clearCollectLifecycleEvents();
        }

        public final NativeConfigurationOuterClass.NativeStartMode getNativeStartMode() {
            NativeConfigurationOuterClass.NativeStartMode nativeStartMode = this._builder.getNativeStartMode();
            Intrinsics.checkNotNullExpressionValue(nativeStartMode, "getNativeStartMode(...)");
            return nativeStartMode;
        }

        public final void setNativeStartMode(NativeConfigurationOuterClass.NativeStartMode value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setNativeStartMode(value);
        }

        public final int getNativeStartModeValue() {
            return this._builder.getNativeStartModeValue();
        }

        public final void setNativeStartModeValue(int i) {
            this._builder.setNativeStartModeValue(i);
        }

        public final void clearNativeStartMode() {
            this._builder.clearNativeStartMode();
        }

        public final boolean getUseOptimisticWebviewCache() {
            return this._builder.getUseOptimisticWebviewCache();
        }

        public final void setUseOptimisticWebviewCache(boolean z) {
            this._builder.setUseOptimisticWebviewCache(z);
        }

        public final void clearUseOptimisticWebviewCache() {
            this._builder.clearUseOptimisticWebviewCache();
        }

        public final boolean getCollectGoogleAppId() {
            return this._builder.getCollectGoogleAppId();
        }

        public final void setCollectGoogleAppId(boolean z) {
            this._builder.setCollectGoogleAppId(z);
        }

        public final void clearCollectGoogleAppId() {
            this._builder.clearCollectGoogleAppId();
        }

        public final boolean getEnableCoherenceLibrary() {
            return this._builder.getEnableCoherenceLibrary();
        }

        public final void setEnableCoherenceLibrary(boolean z) {
            this._builder.setEnableCoherenceLibrary(z);
        }

        public final void clearEnableCoherenceLibrary() {
            this._builder.clearEnableCoherenceLibrary();
        }

        public final NativeConfigurationOuterClass.FullscreenNavBarMode getFullscreenNavBarMode() {
            NativeConfigurationOuterClass.FullscreenNavBarMode fullscreenNavBarMode = this._builder.getFullscreenNavBarMode();
            Intrinsics.checkNotNullExpressionValue(fullscreenNavBarMode, "getFullscreenNavBarMode(...)");
            return fullscreenNavBarMode;
        }

        public final void setFullscreenNavBarMode(NativeConfigurationOuterClass.FullscreenNavBarMode value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setFullscreenNavBarMode(value);
        }

        public final int getFullscreenNavBarModeValue() {
            return this._builder.getFullscreenNavBarModeValue();
        }

        public final void setFullscreenNavBarModeValue(int i) {
            this._builder.setFullscreenNavBarModeValue(i);
        }

        public final void clearFullscreenNavBarMode() {
            this._builder.clearFullscreenNavBarMode();
        }

        public final boolean getShouldInitAdqWithGameId() {
            return this._builder.getShouldInitAdqWithGameId();
        }

        public final void setShouldInitAdqWithGameId(boolean z) {
            this._builder.setShouldInitAdqWithGameId(z);
        }

        public final void clearShouldInitAdqWithGameId() {
            this._builder.clearShouldInitAdqWithGameId();
        }

        public final boolean getCollectAccelerometer() {
            return this._builder.getCollectAccelerometer();
        }

        public final void setCollectAccelerometer(boolean z) {
            this._builder.setCollectAccelerometer(z);
        }

        public final void clearCollectAccelerometer() {
            this._builder.clearCollectAccelerometer();
        }

        public final boolean getShouldAllowFetchToAccessCache() {
            return this._builder.getShouldAllowFetchToAccessCache();
        }

        public final void setShouldAllowFetchToAccessCache(boolean z) {
            this._builder.setShouldAllowFetchToAccessCache(z);
        }

        public final void clearShouldAllowFetchToAccessCache() {
            this._builder.clearShouldAllowFetchToAccessCache();
        }

        public final boolean getMeasureBridgePerformance() {
            return this._builder.getMeasureBridgePerformance();
        }

        public final void setMeasureBridgePerformance(boolean z) {
            this._builder.setMeasureBridgePerformance(z);
        }

        public final void clearMeasureBridgePerformance() {
            this._builder.clearMeasureBridgePerformance();
        }

        public final NativeConfigurationOuterClass.PreShowWebViewStrategy getPreShowWebviewStrategy() {
            NativeConfigurationOuterClass.PreShowWebViewStrategy preShowWebviewStrategy = this._builder.getPreShowWebviewStrategy();
            Intrinsics.checkNotNullExpressionValue(preShowWebviewStrategy, "getPreShowWebviewStrategy(...)");
            return preShowWebviewStrategy;
        }

        public final void setPreShowWebviewStrategy(NativeConfigurationOuterClass.PreShowWebViewStrategy value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPreShowWebviewStrategy(value);
        }

        public final int getPreShowWebviewStrategyValue() {
            return this._builder.getPreShowWebviewStrategyValue();
        }

        public final void setPreShowWebviewStrategyValue(int i) {
            this._builder.setPreShowWebviewStrategyValue(i);
        }

        public final void clearPreShowWebviewStrategy() {
            this._builder.clearPreShowWebviewStrategy();
        }

        public final int getWebviewPoolSize() {
            return this._builder.getWebviewPoolSize();
        }

        public final void setWebviewPoolSize(int i) {
            this._builder.setWebviewPoolSize(i);
        }

        public final void clearWebviewPoolSize() {
            this._builder.clearWebviewPoolSize();
        }

        public final boolean getUseCurrentActivityForShow() {
            return this._builder.getUseCurrentActivityForShow();
        }

        public final void setUseCurrentActivityForShow(boolean z) {
            this._builder.setUseCurrentActivityForShow(z);
        }

        public final void clearUseCurrentActivityForShow() {
            this._builder.clearUseCurrentActivityForShow();
        }

        public final boolean getRetryShowWithCurrentActivity() {
            return this._builder.getRetryShowWithCurrentActivity();
        }

        public final void setRetryShowWithCurrentActivity(boolean z) {
            this._builder.setRetryShowWithCurrentActivity(z);
        }

        public final void clearRetryShowWithCurrentActivity() {
            this._builder.clearRetryShowWithCurrentActivity();
        }
    }
}
