###### Class io.bidmachine.rewarded.RewardedAdRequestParameters (io.bidmachine.rewarded.RewardedAdRequestParameters)
.class public final Lio/bidmachine/rewarded/RewardedAdRequestParameters;
.super Lio/bidmachine/FullScreenAdRequestParameters;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 3

    const-string v0, "adPlacementConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method


# virtual methods
.method public checkPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->checkRewardedPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method
