package gatewayprotocol.v1;

import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.NetworkCapabilityTransportsOuterClass;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DynamicDeviceInfoKt {
    public static final DynamicDeviceInfoKt INSTANCE = new DynamicDeviceInfoKt();

    private DynamicDeviceInfoKt() {
    }

    /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder _builder;

        public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo _build() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfoBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(dynamicDeviceInfoBuild, "build(...)");
            return dynamicDeviceInfoBuild;
        }

        public final String getLanguage() {
            String language = this._builder.getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
            return language;
        }

        public final void setLanguage(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setLanguage(value);
        }

        public final void clearLanguage() {
            this._builder.clearLanguage();
        }

        public final boolean hasLanguage() {
            return this._builder.hasLanguage();
        }

        public final String getNetworkOperator() {
            String networkOperator = this._builder.getNetworkOperator();
            Intrinsics.checkNotNullExpressionValue(networkOperator, "getNetworkOperator(...)");
            return networkOperator;
        }

        public final void setNetworkOperator(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setNetworkOperator(value);
        }

        public final void clearNetworkOperator() {
            this._builder.clearNetworkOperator();
        }

        public final boolean hasNetworkOperator() {
            return this._builder.hasNetworkOperator();
        }

        public final String getNetworkOperatorName() {
            String networkOperatorName = this._builder.getNetworkOperatorName();
            Intrinsics.checkNotNullExpressionValue(networkOperatorName, "getNetworkOperatorName(...)");
            return networkOperatorName;
        }

        public final void setNetworkOperatorName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setNetworkOperatorName(value);
        }

        public final void clearNetworkOperatorName() {
            this._builder.clearNetworkOperatorName();
        }

        public final boolean hasNetworkOperatorName() {
            return this._builder.hasNetworkOperatorName();
        }

        public final long getFreeDiskSpace() {
            return this._builder.getFreeDiskSpace();
        }

        public final void setFreeDiskSpace(long j) {
            this._builder.setFreeDiskSpace(j);
        }

        public final void clearFreeDiskSpace() {
            this._builder.clearFreeDiskSpace();
        }

        public final boolean hasFreeDiskSpace() {
            return this._builder.hasFreeDiskSpace();
        }

        public final long getFreeRamMemory() {
            return this._builder.getFreeRamMemory();
        }

        public final void setFreeRamMemory(long j) {
            this._builder.setFreeRamMemory(j);
        }

        public final void clearFreeRamMemory() {
            this._builder.clearFreeRamMemory();
        }

        public final boolean hasFreeRamMemory() {
            return this._builder.hasFreeRamMemory();
        }

        public final boolean getWiredHeadset() {
            return this._builder.getWiredHeadset();
        }

        public final void setWiredHeadset(boolean z) {
            this._builder.setWiredHeadset(z);
        }

        public final void clearWiredHeadset() {
            this._builder.clearWiredHeadset();
        }

        public final boolean hasWiredHeadset() {
            return this._builder.hasWiredHeadset();
        }

        public final String getTimeZone() {
            String timeZone = this._builder.getTimeZone();
            Intrinsics.checkNotNullExpressionValue(timeZone, "getTimeZone(...)");
            return timeZone;
        }

        public final void setTimeZone(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTimeZone(value);
        }

        public final void clearTimeZone() {
            this._builder.clearTimeZone();
        }

        public final boolean hasTimeZone() {
            return this._builder.hasTimeZone();
        }

        public final long getTimeZoneOffset() {
            return this._builder.getTimeZoneOffset();
        }

        public final void setTimeZoneOffset(long j) {
            this._builder.setTimeZoneOffset(j);
        }

        public final void clearTimeZoneOffset() {
            this._builder.clearTimeZoneOffset();
        }

        public final boolean hasTimeZoneOffset() {
            return this._builder.hasTimeZoneOffset();
        }

        public final boolean getLimitedTracking() {
            return this._builder.getLimitedTracking();
        }

        public final void setLimitedTracking(boolean z) {
            this._builder.setLimitedTracking(z);
        }

        public final void clearLimitedTracking() {
            this._builder.clearLimitedTracking();
        }

        public final boolean hasLimitedTracking() {
            return this._builder.hasLimitedTracking();
        }

        public final boolean getLimitedOpenAdTracking() {
            return this._builder.getLimitedOpenAdTracking();
        }

        public final void setLimitedOpenAdTracking(boolean z) {
            this._builder.setLimitedOpenAdTracking(z);
        }

        public final void clearLimitedOpenAdTracking() {
            this._builder.clearLimitedOpenAdTracking();
        }

        public final boolean hasLimitedOpenAdTracking() {
            return this._builder.hasLimitedOpenAdTracking();
        }

        public final double getBatteryLevel() {
            return this._builder.getBatteryLevel();
        }

        public final void setBatteryLevel(double d) {
            this._builder.setBatteryLevel(d);
        }

        public final void clearBatteryLevel() {
            this._builder.clearBatteryLevel();
        }

        public final boolean hasBatteryLevel() {
            return this._builder.hasBatteryLevel();
        }

        public final int getBatteryStatus() {
            return this._builder.getBatteryStatus();
        }

        public final void setBatteryStatus(int i) {
            this._builder.setBatteryStatus(i);
        }

        public final void clearBatteryStatus() {
            this._builder.clearBatteryStatus();
        }

        public final boolean hasBatteryStatus() {
            return this._builder.hasBatteryStatus();
        }

        public final DynamicDeviceInfoOuterClass.ConnectionType getConnectionType() {
            DynamicDeviceInfoOuterClass.ConnectionType connectionType = this._builder.getConnectionType();
            Intrinsics.checkNotNullExpressionValue(connectionType, "getConnectionType(...)");
            return connectionType;
        }

        public final void setConnectionType(DynamicDeviceInfoOuterClass.ConnectionType value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setConnectionType(value);
        }

        public final int getConnectionTypeValue() {
            return this._builder.getConnectionTypeValue();
        }

        public final void setConnectionTypeValue(int i) {
            this._builder.setConnectionTypeValue(i);
        }

        public final void clearConnectionType() {
            this._builder.clearConnectionType();
        }

        public final boolean hasConnectionType() {
            return this._builder.hasConnectionType();
        }

        public final boolean getAppActive() {
            return this._builder.getAppActive();
        }

        public final void setAppActive(boolean z) {
            this._builder.setAppActive(z);
        }

        public final void clearAppActive() {
            this._builder.clearAppActive();
        }

        public final boolean hasAppActive() {
            return this._builder.hasAppActive();
        }

        public final boolean getLowPowerMode() {
            return this._builder.getLowPowerMode();
        }

        public final void setLowPowerMode(boolean z) {
            this._builder.setLowPowerMode(z);
        }

        public final void clearLowPowerMode() {
            this._builder.clearLowPowerMode();
        }

        public final boolean hasLowPowerMode() {
            return this._builder.hasLowPowerMode();
        }

        public final String getUserId() {
            String userId = this._builder.getUserId();
            Intrinsics.checkNotNullExpressionValue(userId, "getUserId(...)");
            return userId;
        }

        public final void setUserId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUserId(value);
        }

        public final void clearUserId() {
            this._builder.clearUserId();
        }

        public final boolean hasUserId() {
            return this._builder.hasUserId();
        }

        public final int getScreenWidth() {
            return this._builder.getScreenWidth();
        }

        public final void setScreenWidth(int i) {
            this._builder.setScreenWidth(i);
        }

        public final void clearScreenWidth() {
            this._builder.clearScreenWidth();
        }

        public final boolean hasScreenWidth() {
            return this._builder.hasScreenWidth();
        }

        public final int getScreenHeight() {
            return this._builder.getScreenHeight();
        }

        public final void setScreenHeight(int i) {
            this._builder.setScreenHeight(i);
        }

        public final void clearScreenHeight() {
            this._builder.clearScreenHeight();
        }

        public final boolean hasScreenHeight() {
            return this._builder.hasScreenHeight();
        }

        /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
        public static final class AccelerometerSamplesProxy extends DslProxy {
            private AccelerometerSamplesProxy() {
            }
        }

        public final /* synthetic */ DslList getAccelerometerSamples() {
            List<DynamicDeviceInfoOuterClass.AccelerometerSample> accelerometerSamplesList = this._builder.getAccelerometerSamplesList();
            Intrinsics.checkNotNullExpressionValue(accelerometerSamplesList, "getAccelerometerSamplesList(...)");
            return new DslList(accelerometerSamplesList);
        }

        public final /* synthetic */ void addAccelerometerSamples(DslList dslList, DynamicDeviceInfoOuterClass.AccelerometerSample value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addAccelerometerSamples(value);
        }

        public final /* synthetic */ void plusAssignAccelerometerSamples(DslList<DynamicDeviceInfoOuterClass.AccelerometerSample, AccelerometerSamplesProxy> dslList, DynamicDeviceInfoOuterClass.AccelerometerSample value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addAccelerometerSamples(dslList, value);
        }

        public final /* synthetic */ void addAllAccelerometerSamples(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllAccelerometerSamples(values);
        }

        public final /* synthetic */ void plusAssignAllAccelerometerSamples(DslList<DynamicDeviceInfoOuterClass.AccelerometerSample, AccelerometerSamplesProxy> dslList, Iterable<DynamicDeviceInfoOuterClass.AccelerometerSample> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllAccelerometerSamples(dslList, values);
        }

        public final /* synthetic */ void setAccelerometerSamples(DslList dslList, int i, DynamicDeviceInfoOuterClass.AccelerometerSample value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAccelerometerSamples(i, value);
        }

        public final /* synthetic */ void clearAccelerometerSamples(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearAccelerometerSamples();
        }

        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android getAndroid() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android android2 = this._builder.getAndroid();
            Intrinsics.checkNotNullExpressionValue(android2, "getAndroid(...)");
            return android2;
        }

        public final void setAndroid(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAndroid(value);
        }

        public final void clearAndroid() {
            this._builder.clearAndroid();
        }

        public final boolean hasAndroid() {
            return this._builder.hasAndroid();
        }

        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios getIos() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios ios = this._builder.getIos();
            Intrinsics.checkNotNullExpressionValue(ios, "getIos(...)");
            return ios;
        }

        public final void setIos(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setIos(value);
        }

        public final void clearIos() {
            this._builder.clearIos();
        }

        public final boolean hasIos() {
            return this._builder.hasIos();
        }

        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web getWeb() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web web = this._builder.getWeb();
            Intrinsics.checkNotNullExpressionValue(web, "getWeb(...)");
            return web;
        }

        public final void setWeb(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setWeb(value);
        }

        public final void clearWeb() {
            this._builder.clearWeb();
        }

        public final boolean hasWeb() {
            return this._builder.hasWeb();
        }

        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.PlatformSpecificCase getPlatformSpecificCase() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo.PlatformSpecificCase platformSpecificCase = this._builder.getPlatformSpecificCase();
            Intrinsics.checkNotNullExpressionValue(platformSpecificCase, "getPlatformSpecificCase(...)");
            return platformSpecificCase;
        }

        public final void clearPlatformSpecific() {
            this._builder.clearPlatformSpecific();
        }
    }

    /* JADX INFO: renamed from: -initializeandroid, reason: not valid java name */
    public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android m2054initializeandroid(Function1<? super AndroidKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AndroidKt.Dsl.Companion companion = AndroidKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builderNewBuilder = DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AndroidKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
    public static final class AndroidKt {
        public static final AndroidKt INSTANCE = new AndroidKt();

        private AndroidKt() {
        }

        /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
        @ProtoDslMarker
        public static final class Dsl {
            public static final Companion Companion = new Companion(null);
            private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder _builder;

            public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            private Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builder) {
                this._builder = builder;
            }

            /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android _build() {
                DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Android androidBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(androidBuild, "build(...)");
                return androidBuild;
            }

            public final boolean getNetworkConnected() {
                return this._builder.getNetworkConnected();
            }

            public final void setNetworkConnected(boolean z) {
                this._builder.setNetworkConnected(z);
            }

            public final void clearNetworkConnected() {
                this._builder.clearNetworkConnected();
            }

            public final boolean hasNetworkConnected() {
                return this._builder.hasNetworkConnected();
            }

            public final int getNetworkType() {
                return this._builder.getNetworkType();
            }

            public final void setNetworkType(int i) {
                this._builder.setNetworkType(i);
            }

            public final void clearNetworkType() {
                this._builder.clearNetworkType();
            }

            public final boolean hasNetworkType() {
                return this._builder.hasNetworkType();
            }

            public final boolean getNetworkMetered() {
                return this._builder.getNetworkMetered();
            }

            public final void setNetworkMetered(boolean z) {
                this._builder.setNetworkMetered(z);
            }

            public final void clearNetworkMetered() {
                this._builder.clearNetworkMetered();
            }

            public final boolean hasNetworkMetered() {
                return this._builder.hasNetworkMetered();
            }

            public final int getTelephonyManagerNetworkType() {
                return this._builder.getTelephonyManagerNetworkType();
            }

            public final void setTelephonyManagerNetworkType(int i) {
                this._builder.setTelephonyManagerNetworkType(i);
            }

            public final void clearTelephonyManagerNetworkType() {
                this._builder.clearTelephonyManagerNetworkType();
            }

            public final boolean hasTelephonyManagerNetworkType() {
                return this._builder.hasTelephonyManagerNetworkType();
            }

            public final boolean getAdbEnabled() {
                return this._builder.getAdbEnabled();
            }

            public final void setAdbEnabled(boolean z) {
                this._builder.setAdbEnabled(z);
            }

            public final void clearAdbEnabled() {
                this._builder.clearAdbEnabled();
            }

            public final boolean hasAdbEnabled() {
                return this._builder.hasAdbEnabled();
            }

            public final boolean getUsbConnected() {
                return this._builder.getUsbConnected();
            }

            public final void setUsbConnected(boolean z) {
                this._builder.setUsbConnected(z);
            }

            public final void clearUsbConnected() {
                this._builder.clearUsbConnected();
            }

            public final boolean hasUsbConnected() {
                return this._builder.hasUsbConnected();
            }

            public final double getVolume() {
                return this._builder.getVolume();
            }

            public final void setVolume(double d) {
                this._builder.setVolume(d);
            }

            public final void clearVolume() {
                this._builder.clearVolume();
            }

            public final boolean hasVolume() {
                return this._builder.hasVolume();
            }

            public final double getMaxVolume() {
                return this._builder.getMaxVolume();
            }

            public final void setMaxVolume(double d) {
                this._builder.setMaxVolume(d);
            }

            public final void clearMaxVolume() {
                this._builder.clearMaxVolume();
            }

            public final boolean hasMaxVolume() {
                return this._builder.hasMaxVolume();
            }

            public final long getDeviceUpTime() {
                return this._builder.getDeviceUpTime();
            }

            public final void setDeviceUpTime(long j) {
                this._builder.setDeviceUpTime(j);
            }

            public final void clearDeviceUpTime() {
                this._builder.clearDeviceUpTime();
            }

            public final boolean hasDeviceUpTime() {
                return this._builder.hasDeviceUpTime();
            }

            public final long getDeviceElapsedRealtime() {
                return this._builder.getDeviceElapsedRealtime();
            }

            public final void setDeviceElapsedRealtime(long j) {
                this._builder.setDeviceElapsedRealtime(j);
            }

            public final void clearDeviceElapsedRealtime() {
                this._builder.clearDeviceElapsedRealtime();
            }

            public final boolean hasDeviceElapsedRealtime() {
                return this._builder.hasDeviceElapsedRealtime();
            }

            public final boolean getAirplaneMode() {
                return this._builder.getAirplaneMode();
            }

            public final void setAirplaneMode(boolean z) {
                this._builder.setAirplaneMode(z);
            }

            public final void clearAirplaneMode() {
                this._builder.clearAirplaneMode();
            }

            public final boolean hasAirplaneMode() {
                return this._builder.hasAirplaneMode();
            }

            public final boolean getStayOnWhilePluggedIn() {
                return this._builder.getStayOnWhilePluggedIn();
            }

            public final void setStayOnWhilePluggedIn(boolean z) {
                this._builder.setStayOnWhilePluggedIn(z);
            }

            public final void clearStayOnWhilePluggedIn() {
                this._builder.clearStayOnWhilePluggedIn();
            }

            public final boolean hasStayOnWhilePluggedIn() {
                return this._builder.hasStayOnWhilePluggedIn();
            }

            public final boolean getSdCardPresent() {
                return this._builder.getSdCardPresent();
            }

            public final void setSdCardPresent(boolean z) {
                this._builder.setSdCardPresent(z);
            }

            public final void clearSdCardPresent() {
                this._builder.clearSdCardPresent();
            }

            public final boolean hasSdCardPresent() {
                return this._builder.hasSdCardPresent();
            }

            public final NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports getNetworkCapabilityTransports() {
                NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports networkCapabilityTransports = this._builder.getNetworkCapabilityTransports();
                Intrinsics.checkNotNullExpressionValue(networkCapabilityTransports, "getNetworkCapabilityTransports(...)");
                return networkCapabilityTransports;
            }

            public final void setNetworkCapabilityTransports(NetworkCapabilityTransportsOuterClass.NetworkCapabilityTransports value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setNetworkCapabilityTransports(value);
            }

            public final void clearNetworkCapabilityTransports() {
                this._builder.clearNetworkCapabilityTransports();
            }

            public final boolean hasNetworkCapabilityTransports() {
                return this._builder.hasNetworkCapabilityTransports();
            }

            public final int getChargingType() {
                return this._builder.getChargingType();
            }

            public final void setChargingType(int i) {
                this._builder.setChargingType(i);
            }

            public final void clearChargingType() {
                this._builder.clearChargingType();
            }

            public final boolean hasChargingType() {
                return this._builder.hasChargingType();
            }

            public final long getFreeDiskSpaceInternal() {
                return this._builder.getFreeDiskSpaceInternal();
            }

            public final void setFreeDiskSpaceInternal(long j) {
                this._builder.setFreeDiskSpaceInternal(j);
            }

            public final void clearFreeDiskSpaceInternal() {
                this._builder.clearFreeDiskSpaceInternal();
            }

            public final boolean hasFreeDiskSpaceInternal() {
                return this._builder.hasFreeDiskSpaceInternal();
            }

            public final double getScreenBrightness() {
                return this._builder.getScreenBrightness();
            }

            public final void setScreenBrightness(double d) {
                this._builder.setScreenBrightness(d);
            }

            public final void clearScreenBrightness() {
                this._builder.clearScreenBrightness();
            }

            public final boolean hasScreenBrightness() {
                return this._builder.hasScreenBrightness();
            }

            public final long getJvmFreeMemory() {
                return this._builder.getJvmFreeMemory();
            }

            public final void setJvmFreeMemory(long j) {
                this._builder.setJvmFreeMemory(j);
            }

            public final void clearJvmFreeMemory() {
                this._builder.clearJvmFreeMemory();
            }

            public final boolean hasJvmFreeMemory() {
                return this._builder.hasJvmFreeMemory();
            }

            public final long getJvmTotalMemory() {
                return this._builder.getJvmTotalMemory();
            }

            public final void setJvmTotalMemory(long j) {
                this._builder.setJvmTotalMemory(j);
            }

            public final void clearJvmTotalMemory() {
                this._builder.clearJvmTotalMemory();
            }

            public final boolean hasJvmTotalMemory() {
                return this._builder.hasJvmTotalMemory();
            }

            public final float getFontScale() {
                return this._builder.getFontScale();
            }

            public final void setFontScale(float f) {
                this._builder.setFontScale(f);
            }

            public final void clearFontScale() {
                this._builder.clearFontScale();
            }

            public final boolean hasFontScale() {
                return this._builder.hasFontScale();
            }

            public final float getAnimatorScale() {
                return this._builder.getAnimatorScale();
            }

            public final void setAnimatorScale(float f) {
                this._builder.setAnimatorScale(f);
            }

            public final void clearAnimatorScale() {
                this._builder.clearAnimatorScale();
            }

            public final boolean hasAnimatorScale() {
                return this._builder.hasAnimatorScale();
            }

            public final int getAccessibilityDisplayDaltonizer() {
                return this._builder.getAccessibilityDisplayDaltonizer();
            }

            public final void setAccessibilityDisplayDaltonizer(int i) {
                this._builder.setAccessibilityDisplayDaltonizer(i);
            }

            public final void clearAccessibilityDisplayDaltonizer() {
                this._builder.clearAccessibilityDisplayDaltonizer();
            }

            public final boolean hasAccessibilityDisplayDaltonizer() {
                return this._builder.hasAccessibilityDisplayDaltonizer();
            }

            public final boolean getDisplayInversionEnabled() {
                return this._builder.getDisplayInversionEnabled();
            }

            public final void setDisplayInversionEnabled(boolean z) {
                this._builder.setDisplayInversionEnabled(z);
            }

            public final void clearDisplayInversionEnabled() {
                this._builder.clearDisplayInversionEnabled();
            }

            public final boolean hasDisplayInversionEnabled() {
                return this._builder.hasDisplayInversionEnabled();
            }
        }
    }

    /* JADX INFO: renamed from: -initializeios, reason: not valid java name */
    public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios m2055initializeios(Function1<? super IosKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        IosKt.Dsl.Companion companion = IosKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builderNewBuilder = DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        IosKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
    public static final class IosKt {
        public static final IosKt INSTANCE = new IosKt();

        private IosKt() {
        }

        /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
        @ProtoDslMarker
        public static final class Dsl {
            public static final Companion Companion = new Companion(null);
            private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder _builder;

            public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            private Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builder) {
                this._builder = builder;
            }

            /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios _build() {
                DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Ios iosBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(iosBuild, "build(...)");
                return iosBuild;
            }

            public final String getCurrentRadioAccessTechnology() {
                String currentRadioAccessTechnology = this._builder.getCurrentRadioAccessTechnology();
                Intrinsics.checkNotNullExpressionValue(currentRadioAccessTechnology, "getCurrentRadioAccessTechnology(...)");
                return currentRadioAccessTechnology;
            }

            public final void setCurrentRadioAccessTechnology(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setCurrentRadioAccessTechnology(value);
            }

            public final void clearCurrentRadioAccessTechnology() {
                this._builder.clearCurrentRadioAccessTechnology();
            }

            public final boolean hasCurrentRadioAccessTechnology() {
                return this._builder.hasCurrentRadioAccessTechnology();
            }

            public final int getNetworkReachabilityFlags() {
                return this._builder.getNetworkReachabilityFlags();
            }

            public final void setNetworkReachabilityFlags(int i) {
                this._builder.setNetworkReachabilityFlags(i);
            }

            public final void clearNetworkReachabilityFlags() {
                this._builder.clearNetworkReachabilityFlags();
            }

            public final boolean hasNetworkReachabilityFlags() {
                return this._builder.hasNetworkReachabilityFlags();
            }

            /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
            public static final class NwPathInterfacesProxy extends DslProxy {
                private NwPathInterfacesProxy() {
                }
            }

            public final DslList<String, NwPathInterfacesProxy> getNwPathInterfaces() {
                List<String> nwPathInterfacesList = this._builder.getNwPathInterfacesList();
                Intrinsics.checkNotNullExpressionValue(nwPathInterfacesList, "getNwPathInterfacesList(...)");
                return new DslList<>(nwPathInterfacesList);
            }

            public final /* synthetic */ void addNwPathInterfaces(DslList dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.addNwPathInterfaces(value);
            }

            public final /* synthetic */ void plusAssignNwPathInterfaces(DslList<String, NwPathInterfacesProxy> dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                addNwPathInterfaces(dslList, value);
            }

            public final /* synthetic */ void addAllNwPathInterfaces(DslList dslList, Iterable values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                this._builder.addAllNwPathInterfaces(values);
            }

            public final /* synthetic */ void plusAssignAllNwPathInterfaces(DslList<String, NwPathInterfacesProxy> dslList, Iterable<String> values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                addAllNwPathInterfaces(dslList, values);
            }

            public final /* synthetic */ void setNwPathInterfaces(DslList dslList, int i, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setNwPathInterfaces(i, value);
            }

            public final /* synthetic */ void clearNwPathInterfaces(DslList dslList) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                this._builder.clearNwPathInterfaces();
            }

            /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
            public static final class LocaleListProxy extends DslProxy {
                private LocaleListProxy() {
                }
            }

            public final DslList<String, LocaleListProxy> getLocaleList() {
                List<String> localeListList = this._builder.getLocaleListList();
                Intrinsics.checkNotNullExpressionValue(localeListList, "getLocaleListList(...)");
                return new DslList<>(localeListList);
            }

            public final /* synthetic */ void addLocaleList(DslList dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.addLocaleList(value);
            }

            public final /* synthetic */ void plusAssignLocaleList(DslList<String, LocaleListProxy> dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                addLocaleList(dslList, value);
            }

            public final /* synthetic */ void addAllLocaleList(DslList dslList, Iterable values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                this._builder.addAllLocaleList(values);
            }

            public final /* synthetic */ void plusAssignAllLocaleList(DslList<String, LocaleListProxy> dslList, Iterable<String> values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                addAllLocaleList(dslList, values);
            }

            public final /* synthetic */ void setLocaleList(DslList dslList, int i, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setLocaleList(i, value);
            }

            public final /* synthetic */ void clearLocaleList(DslList dslList) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                this._builder.clearLocaleList();
            }

            public final int getCurrentUiTheme() {
                return this._builder.getCurrentUiTheme();
            }

            public final void setCurrentUiTheme(int i) {
                this._builder.setCurrentUiTheme(i);
            }

            public final void clearCurrentUiTheme() {
                this._builder.clearCurrentUiTheme();
            }

            public final boolean hasCurrentUiTheme() {
                return this._builder.hasCurrentUiTheme();
            }

            public final String getDeviceName() {
                String deviceName = this._builder.getDeviceName();
                Intrinsics.checkNotNullExpressionValue(deviceName, "getDeviceName(...)");
                return deviceName;
            }

            public final void setDeviceName(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setDeviceName(value);
            }

            public final void clearDeviceName() {
                this._builder.clearDeviceName();
            }

            public final boolean hasDeviceName() {
                return this._builder.hasDeviceName();
            }

            public final double getVolume() {
                return this._builder.getVolume();
            }

            public final void setVolume(double d) {
                this._builder.setVolume(d);
            }

            public final void clearVolume() {
                this._builder.clearVolume();
            }

            public final boolean hasVolume() {
                return this._builder.hasVolume();
            }

            public final int getTrackingAuthStatus() {
                return this._builder.getTrackingAuthStatus();
            }

            public final void setTrackingAuthStatus(int i) {
                this._builder.setTrackingAuthStatus(i);
            }

            public final void clearTrackingAuthStatus() {
                this._builder.clearTrackingAuthStatus();
            }

            public final boolean hasTrackingAuthStatus() {
                return this._builder.hasTrackingAuthStatus();
            }

            public final long getDeviceUpTimeWithSleep() {
                return this._builder.getDeviceUpTimeWithSleep();
            }

            public final void setDeviceUpTimeWithSleep(long j) {
                this._builder.setDeviceUpTimeWithSleep(j);
            }

            public final void clearDeviceUpTimeWithSleep() {
                this._builder.clearDeviceUpTimeWithSleep();
            }

            public final boolean hasDeviceUpTimeWithSleep() {
                return this._builder.hasDeviceUpTimeWithSleep();
            }

            public final long getDeviceUpTimeWithoutSleep() {
                return this._builder.getDeviceUpTimeWithoutSleep();
            }

            public final void setDeviceUpTimeWithoutSleep(long j) {
                this._builder.setDeviceUpTimeWithoutSleep(j);
            }

            public final void clearDeviceUpTimeWithoutSleep() {
                this._builder.clearDeviceUpTimeWithoutSleep();
            }

            public final boolean hasDeviceUpTimeWithoutSleep() {
                return this._builder.hasDeviceUpTimeWithoutSleep();
            }

            public final double getScreenBrightness() {
                return this._builder.getScreenBrightness();
            }

            public final void setScreenBrightness(double d) {
                this._builder.setScreenBrightness(d);
            }

            public final void clearScreenBrightness() {
                this._builder.clearScreenBrightness();
            }

            public final boolean hasScreenBrightness() {
                return this._builder.hasScreenBrightness();
            }

            public final boolean getReduceMotionEnabled() {
                return this._builder.getReduceMotionEnabled();
            }

            public final void setReduceMotionEnabled(boolean z) {
                this._builder.setReduceMotionEnabled(z);
            }

            public final void clearReduceMotionEnabled() {
                this._builder.clearReduceMotionEnabled();
            }

            public final boolean hasReduceMotionEnabled() {
                return this._builder.hasReduceMotionEnabled();
            }

            public final boolean getGrayscaleEnabled() {
                return this._builder.getGrayscaleEnabled();
            }

            public final void setGrayscaleEnabled(boolean z) {
                this._builder.setGrayscaleEnabled(z);
            }

            public final void clearGrayscaleEnabled() {
                this._builder.clearGrayscaleEnabled();
            }

            public final boolean hasGrayscaleEnabled() {
                return this._builder.hasGrayscaleEnabled();
            }

            public final boolean getInvertColorsEnabled() {
                return this._builder.getInvertColorsEnabled();
            }

            public final void setInvertColorsEnabled(boolean z) {
                this._builder.setInvertColorsEnabled(z);
            }

            public final void clearInvertColorsEnabled() {
                this._builder.clearInvertColorsEnabled();
            }

            public final boolean hasInvertColorsEnabled() {
                return this._builder.hasInvertColorsEnabled();
            }

            public final String getPreferredContentSizeCategory() {
                String preferredContentSizeCategory = this._builder.getPreferredContentSizeCategory();
                Intrinsics.checkNotNullExpressionValue(preferredContentSizeCategory, "getPreferredContentSizeCategory(...)");
                return preferredContentSizeCategory;
            }

            public final void setPreferredContentSizeCategory(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPreferredContentSizeCategory(value);
            }

            public final void clearPreferredContentSizeCategory() {
                this._builder.clearPreferredContentSizeCategory();
            }

            public final boolean hasPreferredContentSizeCategory() {
                return this._builder.hasPreferredContentSizeCategory();
            }
        }
    }

    /* JADX INFO: renamed from: -initializeweb, reason: not valid java name */
    public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web m2056initializeweb(Function1<? super WebKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        WebKt.Dsl.Companion companion = WebKt.Dsl.Companion;
        DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web.Builder builderNewBuilder = DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        WebKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
    public static final class WebKt {
        public static final WebKt INSTANCE = new WebKt();

        private WebKt() {
        }

        /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
        @ProtoDslMarker
        public static final class Dsl {
            public static final Companion Companion = new Companion(null);
            private final DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web.Builder _builder;

            public /* synthetic */ Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            private Dsl(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web.Builder builder) {
                this._builder = builder;
            }

            /* JADX INFO: compiled from: DynamicDeviceInfoKt.kt */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Dsl _create(DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            public final /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web _build() {
                DynamicDeviceInfoOuterClass.DynamicDeviceInfo.Web webBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(webBuild, "build(...)");
                return webBuild;
            }

            public final double getNetworkDownlink() {
                return this._builder.getNetworkDownlink();
            }

            public final void setNetworkDownlink(double d) {
                this._builder.setNetworkDownlink(d);
            }

            public final void clearNetworkDownlink() {
                this._builder.clearNetworkDownlink();
            }

            public final boolean hasNetworkDownlink() {
                return this._builder.hasNetworkDownlink();
            }

            public final String getNetworkEffectiveType() {
                String networkEffectiveType = this._builder.getNetworkEffectiveType();
                Intrinsics.checkNotNullExpressionValue(networkEffectiveType, "getNetworkEffectiveType(...)");
                return networkEffectiveType;
            }

            public final void setNetworkEffectiveType(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setNetworkEffectiveType(value);
            }

            public final void clearNetworkEffectiveType() {
                this._builder.clearNetworkEffectiveType();
            }

            public final boolean hasNetworkEffectiveType() {
                return this._builder.hasNetworkEffectiveType();
            }

            public final int getNetworkRtt() {
                return this._builder.getNetworkRtt();
            }

            public final void setNetworkRtt(int i) {
                this._builder.setNetworkRtt(i);
            }

            public final void clearNetworkRtt() {
                this._builder.clearNetworkRtt();
            }

            public final boolean hasNetworkRtt() {
                return this._builder.hasNetworkRtt();
            }

            public final boolean getNetworkSaveData() {
                return this._builder.getNetworkSaveData();
            }

            public final void setNetworkSaveData(boolean z) {
                this._builder.setNetworkSaveData(z);
            }

            public final void clearNetworkSaveData() {
                this._builder.clearNetworkSaveData();
            }

            public final boolean hasNetworkSaveData() {
                return this._builder.hasNetworkSaveData();
            }

            public final String getPrefersColorScheme() {
                String prefersColorScheme = this._builder.getPrefersColorScheme();
                Intrinsics.checkNotNullExpressionValue(prefersColorScheme, "getPrefersColorScheme(...)");
                return prefersColorScheme;
            }

            public final void setPrefersColorScheme(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setPrefersColorScheme(value);
            }

            public final void clearPrefersColorScheme() {
                this._builder.clearPrefersColorScheme();
            }

            public final boolean hasPrefersColorScheme() {
                return this._builder.hasPrefersColorScheme();
            }

            public final boolean getPrefersReducedMotion() {
                return this._builder.getPrefersReducedMotion();
            }

            public final void setPrefersReducedMotion(boolean z) {
                this._builder.setPrefersReducedMotion(z);
            }

            public final void clearPrefersReducedMotion() {
                this._builder.clearPrefersReducedMotion();
            }

            public final boolean hasPrefersReducedMotion() {
                return this._builder.hasPrefersReducedMotion();
            }
        }
    }
}
