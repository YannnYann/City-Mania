package gatewayprotocol.v1;

import gatewayprotocol.v1.CampaignAssetKt;
import gatewayprotocol.v1.CampaignMetadataOuterClass;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CampaignAssetKt.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CampaignAssetKtKt {
    /* JADX INFO: renamed from: -initializecampaignAsset, reason: not valid java name */
    public static final CampaignMetadataOuterClass.CampaignAsset m2042initializecampaignAsset(Function1<? super CampaignAssetKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        CampaignAssetKt.Dsl.Companion companion = CampaignAssetKt.Dsl.Companion;
        CampaignMetadataOuterClass.CampaignAsset.Builder builderNewBuilder = CampaignMetadataOuterClass.CampaignAsset.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        CampaignAssetKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    public static final CampaignMetadataOuterClass.CampaignAsset copy(CampaignMetadataOuterClass.CampaignAsset campaignAsset, Function1<? super CampaignAssetKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(campaignAsset, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        CampaignAssetKt.Dsl.Companion companion = CampaignAssetKt.Dsl.Companion;
        CampaignMetadataOuterClass.CampaignAsset.Builder builder = campaignAsset.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "toBuilder(...)");
        CampaignAssetKt.Dsl dsl_create = companion._create(builder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
