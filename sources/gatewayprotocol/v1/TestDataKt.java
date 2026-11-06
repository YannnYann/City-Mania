package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.TestDataOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TestDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TestDataKt {
    public static final TestDataKt INSTANCE = new TestDataKt();

    private TestDataKt() {
    }

    /* JADX INFO: compiled from: TestDataKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final TestDataOuterClass.TestData.Builder _builder;

        public /* synthetic */ Dsl(TestDataOuterClass.TestData.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(TestDataOuterClass.TestData.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: TestDataKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(TestDataOuterClass.TestData.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ TestDataOuterClass.TestData _build() {
            TestDataOuterClass.TestData testDataBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(testDataBuild, "build(...)");
            return testDataBuild;
        }

        public final String getForceCampaignId() {
            String forceCampaignId = this._builder.getForceCampaignId();
            Intrinsics.checkNotNullExpressionValue(forceCampaignId, "getForceCampaignId(...)");
            return forceCampaignId;
        }

        public final void setForceCampaignId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setForceCampaignId(value);
        }

        public final void clearForceCampaignId() {
            this._builder.clearForceCampaignId();
        }

        public final boolean hasForceCampaignId() {
            return this._builder.hasForceCampaignId();
        }

        public final String getForceCountry() {
            String forceCountry = this._builder.getForceCountry();
            Intrinsics.checkNotNullExpressionValue(forceCountry, "getForceCountry(...)");
            return forceCountry;
        }

        public final void setForceCountry(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setForceCountry(value);
        }

        public final void clearForceCountry() {
            this._builder.clearForceCountry();
        }

        public final boolean hasForceCountry() {
            return this._builder.hasForceCountry();
        }

        public final String getForceCountrySubdivision() {
            String forceCountrySubdivision = this._builder.getForceCountrySubdivision();
            Intrinsics.checkNotNullExpressionValue(forceCountrySubdivision, "getForceCountrySubdivision(...)");
            return forceCountrySubdivision;
        }

        public final void setForceCountrySubdivision(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setForceCountrySubdivision(value);
        }

        public final void clearForceCountrySubdivision() {
            this._builder.clearForceCountrySubdivision();
        }

        public final boolean hasForceCountrySubdivision() {
            return this._builder.hasForceCountrySubdivision();
        }

        public final int getForceExchangeTestMode() {
            return this._builder.getForceExchangeTestMode();
        }

        public final void setForceExchangeTestMode(int i) {
            this._builder.setForceExchangeTestMode(i);
        }

        public final void clearForceExchangeTestMode() {
            this._builder.clearForceExchangeTestMode();
        }

        public final boolean hasForceExchangeTestMode() {
            return this._builder.hasForceExchangeTestMode();
        }

        public final String getForceGeoKey() {
            String forceGeoKey = this._builder.getForceGeoKey();
            Intrinsics.checkNotNullExpressionValue(forceGeoKey, "getForceGeoKey(...)");
            return forceGeoKey;
        }

        public final void setForceGeoKey(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setForceGeoKey(value);
        }

        public final void clearForceGeoKey() {
            this._builder.clearForceGeoKey();
        }

        public final boolean hasForceGeoKey() {
            return this._builder.hasForceGeoKey();
        }
    }
}
