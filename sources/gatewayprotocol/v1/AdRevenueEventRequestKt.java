package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdRevenueEventRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdRevenueEventRequestKt {
    public static final AdRevenueEventRequestKt INSTANCE = new AdRevenueEventRequestKt();

    private AdRevenueEventRequestKt() {
    }

    /* JADX INFO: compiled from: AdRevenueEventRequestKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final AdRevenueEventRequestOuterClass.AdRevenueEventRequest.Builder _builder;

        public /* synthetic */ Dsl(AdRevenueEventRequestOuterClass.AdRevenueEventRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(AdRevenueEventRequestOuterClass.AdRevenueEventRequest.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: AdRevenueEventRequestKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(AdRevenueEventRequestOuterClass.AdRevenueEventRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ AdRevenueEventRequestOuterClass.AdRevenueEventRequest _build() {
            AdRevenueEventRequestOuterClass.AdRevenueEventRequest adRevenueEventRequestBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(adRevenueEventRequestBuild, "build(...)");
            return adRevenueEventRequestBuild;
        }

        public final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfo() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfo = this._builder.getStaticDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(staticDeviceInfo, "getStaticDeviceInfo(...)");
            return staticDeviceInfo;
        }

        public final void setStaticDeviceInfo(StaticDeviceInfoOuterClass.StaticDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStaticDeviceInfo(value);
        }

        public final void clearStaticDeviceInfo() {
            this._builder.clearStaticDeviceInfo();
        }

        public final boolean hasStaticDeviceInfo() {
            return this._builder.hasStaticDeviceInfo();
        }

        public final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo() {
            DynamicDeviceInfoOuterClass.DynamicDeviceInfo dynamicDeviceInfo = this._builder.getDynamicDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(dynamicDeviceInfo, "getDynamicDeviceInfo(...)");
            return dynamicDeviceInfo;
        }

        public final void setDynamicDeviceInfo(DynamicDeviceInfoOuterClass.DynamicDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDynamicDeviceInfo(value);
        }

        public final void clearDynamicDeviceInfo() {
            this._builder.clearDynamicDeviceInfo();
        }

        public final boolean hasDynamicDeviceInfo() {
            return this._builder.hasDynamicDeviceInfo();
        }

        public final AdRevenueEventRequestOuterClass.AdRevenueData getAdRevenueData() {
            AdRevenueEventRequestOuterClass.AdRevenueData adRevenueData = this._builder.getAdRevenueData();
            Intrinsics.checkNotNullExpressionValue(adRevenueData, "getAdRevenueData(...)");
            return adRevenueData;
        }

        public final void setAdRevenueData(AdRevenueEventRequestOuterClass.AdRevenueData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdRevenueData(value);
        }

        public final void clearAdRevenueData() {
            this._builder.clearAdRevenueData();
        }

        public final boolean hasAdRevenueData() {
            return this._builder.hasAdRevenueData();
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

        public final AdRevenueEventRequestOuterClass.AdRevenueOrigin getAdRevenueOrigin() {
            AdRevenueEventRequestOuterClass.AdRevenueOrigin adRevenueOrigin = this._builder.getAdRevenueOrigin();
            Intrinsics.checkNotNullExpressionValue(adRevenueOrigin, "getAdRevenueOrigin(...)");
            return adRevenueOrigin;
        }

        public final void setAdRevenueOrigin(AdRevenueEventRequestOuterClass.AdRevenueOrigin value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdRevenueOrigin(value);
        }

        public final int getAdRevenueOriginValue() {
            return this._builder.getAdRevenueOriginValue();
        }

        public final void setAdRevenueOriginValue(int i) {
            this._builder.setAdRevenueOriginValue(i);
        }

        public final void clearAdRevenueOrigin() {
            this._builder.clearAdRevenueOrigin();
        }
    }
}
