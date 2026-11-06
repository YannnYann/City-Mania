###### Class io.bidmachine.nativead.NativeAdRequestParameters (io.bidmachine.nativead.NativeAdRequestParameters)
.class public final Lio/bidmachine/nativead/NativeAdRequestParameters;
.super Lio/bidmachine/AdRequestParameters;
.source "SourceFile"


# instance fields
.field public isValidateAssets:Z

.field public final mediaAssetTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 3

    const-string v0, "adPlacementConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets:Z

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p1

    .line 6
    instance-of v0, p1, Lio/bidmachine/AdFormat$Native;

    if-eqz v0, :cond_1c

    .line 7
    check-cast p1, Lio/bidmachine/AdFormat$Native;

    invoke-virtual {p1}, Lio/bidmachine/AdFormat$Native;->getMediaAssetTypes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    return-void

    .line 9
    :cond_1c
    sget-object p1, Lio/bidmachine/MediaAssetType;->DEFAULT:Ljava/util/List;

    const-string v0, "DEFAULT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

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
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->checkNativePlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public final containsAssetType(Lio/bidmachine/MediaAssetType;)Z
    .registers 3

    const-string v0, "mediaAssetType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 3
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    sget-object v0, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    return p1

    :cond_22
    :goto_22
    const/4 p1, 0x1

    return p1
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .registers 3

    const-string v0, "adRequestParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    instance-of v0, p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    if-eqz v0, :cond_19

    .line 3
    check-cast p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isParametersMatchedInternal(Lio/bidmachine/nativead/NativeAdRequestParameters;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final isParametersMatchedInternal(Lio/bidmachine/nativead/NativeAdRequestParameters;)Z
    .registers 3

    .line 1
    iget-object v0, p1, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    invoke-static {v0}, Lio/bidmachine/MediaAssetType;->isAll(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    iget-object p1, p1, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->mediaAssetTypes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public final isValidateAssets()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets:Z

    return v0
.end method

.method public final setValidateAssets(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets:Z

    return-void
.end method
