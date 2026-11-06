package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.AdFormatOuterClass;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdRevenueDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdRevenueDataKt {
    public static final AdRevenueDataKt INSTANCE = new AdRevenueDataKt();

    private AdRevenueDataKt() {
    }

    /* JADX INFO: compiled from: AdRevenueDataKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final AdRevenueEventRequestOuterClass.AdRevenueData.Builder _builder;

        public /* synthetic */ Dsl(AdRevenueEventRequestOuterClass.AdRevenueData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(AdRevenueEventRequestOuterClass.AdRevenueData.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: AdRevenueDataKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(AdRevenueEventRequestOuterClass.AdRevenueData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ AdRevenueEventRequestOuterClass.AdRevenueData _build() {
            AdRevenueEventRequestOuterClass.AdRevenueData adRevenueDataBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(adRevenueDataBuild, "build(...)");
            return adRevenueDataBuild;
        }

        public final ByteString getEventId() {
            ByteString eventId = this._builder.getEventId();
            Intrinsics.checkNotNullExpressionValue(eventId, "getEventId(...)");
            return eventId;
        }

        public final void setEventId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setEventId(value);
        }

        public final void clearEventId() {
            this._builder.clearEventId();
        }

        public final double getRevenue() {
            return this._builder.getRevenue();
        }

        public final void setRevenue(double d) {
            this._builder.setRevenue(d);
        }

        public final void clearRevenue() {
            this._builder.clearRevenue();
        }

        public final boolean hasRevenue() {
            return this._builder.hasRevenue();
        }

        public final String getCountryCode() {
            String countryCode = this._builder.getCountryCode();
            Intrinsics.checkNotNullExpressionValue(countryCode, "getCountryCode(...)");
            return countryCode;
        }

        public final void setCountryCode(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCountryCode(value);
        }

        public final void clearCountryCode() {
            this._builder.clearCountryCode();
        }

        public final boolean hasCountryCode() {
            return this._builder.hasCountryCode();
        }

        public final String getNetworkName() {
            String networkName = this._builder.getNetworkName();
            Intrinsics.checkNotNullExpressionValue(networkName, "getNetworkName(...)");
            return networkName;
        }

        public final void setNetworkName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setNetworkName(value);
        }

        public final void clearNetworkName() {
            this._builder.clearNetworkName();
        }

        public final boolean hasNetworkName() {
            return this._builder.hasNetworkName();
        }

        public final String getAdUnitId() {
            String adUnitId = this._builder.getAdUnitId();
            Intrinsics.checkNotNullExpressionValue(adUnitId, "getAdUnitId(...)");
            return adUnitId;
        }

        public final void setAdUnitId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdUnitId(value);
        }

        public final void clearAdUnitId() {
            this._builder.clearAdUnitId();
        }

        public final boolean hasAdUnitId() {
            return this._builder.hasAdUnitId();
        }

        public final String getThirdPartyAdPlacementId() {
            String thirdPartyAdPlacementId = this._builder.getThirdPartyAdPlacementId();
            Intrinsics.checkNotNullExpressionValue(thirdPartyAdPlacementId, "getThirdPartyAdPlacementId(...)");
            return thirdPartyAdPlacementId;
        }

        public final void setThirdPartyAdPlacementId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setThirdPartyAdPlacementId(value);
        }

        public final void clearThirdPartyAdPlacementId() {
            this._builder.clearThirdPartyAdPlacementId();
        }

        public final boolean hasThirdPartyAdPlacementId() {
            return this._builder.hasThirdPartyAdPlacementId();
        }

        public final AdFormatOuterClass.AdFormat getAdFormat() {
            AdFormatOuterClass.AdFormat adFormat = this._builder.getAdFormat();
            Intrinsics.checkNotNullExpressionValue(adFormat, "getAdFormat(...)");
            return adFormat;
        }

        public final void setAdFormat(AdFormatOuterClass.AdFormat value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAdFormat(value);
        }

        public final int getAdFormatValue() {
            return this._builder.getAdFormatValue();
        }

        public final void setAdFormatValue(int i) {
            this._builder.setAdFormatValue(i);
        }

        public final void clearAdFormat() {
            this._builder.clearAdFormat();
        }
    }
}
