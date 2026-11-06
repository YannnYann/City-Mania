package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.CampaignMetadataOuterClass;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CampaignAssetKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CampaignAssetKt {
    public static final CampaignAssetKt INSTANCE = new CampaignAssetKt();

    private CampaignAssetKt() {
    }

    /* JADX INFO: compiled from: CampaignAssetKt.kt */
    @ProtoDslMarker
    public static final class Dsl {
        public static final Companion Companion = new Companion(null);
        private final CampaignMetadataOuterClass.CampaignAsset.Builder _builder;

        public /* synthetic */ Dsl(CampaignMetadataOuterClass.CampaignAsset.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        private Dsl(CampaignMetadataOuterClass.CampaignAsset.Builder builder) {
            this._builder = builder;
        }

        /* JADX INFO: compiled from: CampaignAssetKt.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Dsl _create(CampaignMetadataOuterClass.CampaignAsset.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        public final /* synthetic */ CampaignMetadataOuterClass.CampaignAsset _build() {
            CampaignMetadataOuterClass.CampaignAsset campaignAssetBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(campaignAssetBuild, "build(...)");
            return campaignAssetBuild;
        }

        public final String getUrl() {
            String url = this._builder.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
            return url;
        }

        public final void setUrl(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUrl(value);
        }

        public final void clearUrl() {
            this._builder.clearUrl();
        }

        public final int getPriority() {
            return this._builder.getPriority();
        }

        public final void setPriority(int i) {
            this._builder.setPriority(i);
        }

        public final void clearPriority() {
            this._builder.clearPriority();
        }

        public final boolean getRequired() {
            return this._builder.getRequired();
        }

        public final void setRequired(boolean z) {
            this._builder.setRequired(z);
        }

        public final void clearRequired() {
            this._builder.clearRequired();
        }
    }
}
