###### Class io.bidmachine.utils.ProtoUtilsKt (io.bidmachine.utils.ProtoUtilsKt)
.class public final Lio/bidmachine/utils/ProtoUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$EDlO8_zMDhIyRvIJQ9EzoY59TV4(Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityOverlapMetricOrNull$lambda$26(Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WpWtLZ8-DYqN5KGPJJzyPm4ABBM(Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityLifecycleMetricOrNull$lambda$25$lambda$24(Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gLAUvfHh6iVpwi7GSfGZMNI7cl8(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toMetricOrNull$lambda$22(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y8ZP_Cj8dum85bwFRw9zyoIP0V0(Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityVisibilityMetricOrNull$lambda$23(Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final checkBannerPlacement(Lcom/explorestack/protobuf/adcom/Placement;Lio/bidmachine/BannerAdSize;)Lio/bidmachine/utils/BMError;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p0

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    if-ne p0, v0, :cond_20

    .line 3
    const-string p0, "DisplayPlacement must not be a default instance"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    .line 5
    :cond_20
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->isInterstitialPlacement(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    const-string p0, "It\'s is not banner placement. \'Instl\' parameter in placement - true"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getW()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getH()I

    move-result p0

    .line 10
    invoke-virtual {p1, v0, p0}, Lio/bidmachine/BannerAdSize;->isSuitable(II)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect DisplayPlacement size. Current size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/BannerAdSize;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", placement size - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    :cond_6f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final checkInterstitialPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->isRewardedPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    const-string p0, "Rewarded placement used for interstitial placement"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    .line 4
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    const-string v1, "display"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->isInterstitialPlacement(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Z

    move-result v0

    if-eqz v0, :cond_29

    return-object v2

    .line 8
    :cond_29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object p0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    if-eq p0, v0, :cond_34

    return-object v2

    .line 11
    :cond_34
    const-string p0, "DisplayPlacement must have \'Instl\' parameter - true. Or VideoPlacement must not be a default instance"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method

.method public static final checkNativePlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->getAssetCount()I

    move-result p0

    if-gtz p0, :cond_1a

    .line 2
    const-string p0, "Native assets not found"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final checkRewardedPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->isRewardedPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_d
    const-string p0, "It\'s is not rewarded placement. \'Reward\' parameter in placement must be true"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    return-object p0
.end method

.method public static final findFirstAdExtension(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;
    .registers 6

    const-class v0, Lio/bidmachine/protobuf/AdExtension;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2b

    .line 3
    :try_start_e
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProto(I)Lcom/explorestack/protobuf/Any;

    move-result-object v3

    const-string v4, "getExtProto(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3, v0}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 5
    invoke-virtual {v3, v0}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/AdExtension;
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    return-object v3

    :catchall_24
    move-exception v3

    .line 8
    invoke-static {v3}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getString(Lcom/explorestack/protobuf/Struct;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/utils/ProtoUtilsKt;->getValue(Lcom/explorestack/protobuf/Struct;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->getStringWithCheck(Lcom/explorestack/protobuf/Value;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getStringWithCheck(Lcom/explorestack/protobuf/Value;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getValue(Lcom/explorestack/protobuf/Struct;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static final isInterstitialPlacement(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getInstl()Z

    move-result p0

    return p0
.end method

.method public static final isRewardedPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result p0

    return p0
.end method

.method public static final mapNotNullToProtoListValue(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/explorestack/protobuf/ListValue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lcom/explorestack/protobuf/Value;",
            ">;)",
            "Lcom/explorestack/protobuf/ListValue;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    const-string v1, "newBuilder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 267
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Value;

    if-eqz v1, :cond_17

    .line 268
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    goto :goto_17

    .line 271
    :cond_2d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ListValue$Builder;->build()Lcom/explorestack/protobuf/ListValue;

    move-result-object p0

    const-string p1, "listValueBuilder.build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final pack(Lcom/explorestack/protobuf/Message$Builder;)Lcom/explorestack/protobuf/Any;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p0

    const-string v0, "build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object p0

    return-object p0
.end method

.method public static final pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    move-result-object p0

    const-string v0, "pack(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Struct$Builder;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-object p0
.end method

.method public static final putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-object p0
.end method

.method public static final putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Ljava/lang/Number;)Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-object p0
.end method

.method public static final putField(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    return-object p0
.end method

.method public static final toIabElementStyle(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    new-instance v0, Lio/bidmachine/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/IabElementStyle;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setMargin(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setPadding(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setContent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/util/ColorUtils;->parseColorARGBSafely(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setFontStyle(Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setWidth(Ljava/lang/Number;)V

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHeight(Ljava/lang/Number;)V

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHideAfter(Ljava/lang/Float;)V

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Utils;->parseHorizontalPosition(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/core/Utils;->parseVerticalPosition(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setOpacity(Ljava/lang/Float;)V

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setOutlined(Ljava/lang/Boolean;)V

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/util/ColorUtils;->parseColorARGBSafely(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeColor(Ljava/lang/Integer;)V

    .line 15
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setStrokeWidth(Ljava/lang/Float;)V

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/IabElementStyle;->setStyle(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/iab/utils/IabElementStyle;->setVisible(Ljava/lang/Boolean;)V
    :try_end_ab
    .catchall {:try_start_5 .. :try_end_ab} :catchall_ac

    return-object v0

    :catchall_ac
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toListValueBuilderOrNull(Ljava/util/List;)Lcom/explorestack/protobuf/ListValue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/explorestack/protobuf/ListValue$Builder;"
        }
    .end annotation

    if-eqz p0, :cond_2c

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    .line 4
    :cond_9
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v0

    const-string v1, "newBuilder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toValueBuilderOrNull(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_16

    .line 7
    :cond_27
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value$Builder;)Lcom/explorestack/protobuf/ListValue$Builder;

    goto :goto_16

    :cond_2b
    return-object v0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toMetricOrNull(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/util/viewabilitytracker/metric/Metric;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->hasGeometry()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getGeometry()Lio/bidmachine/protobuf/sdk/GeometryMetric;

    move-result-object p0

    const-string v0, "geometry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityGeometryMetric(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    move-result-object p0

    return-object p0

    .line 5
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->hasVisibility()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getVisibility()Lio/bidmachine/protobuf/sdk/VisibilityMetric;

    move-result-object p0

    const-string v0, "visibility"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityVisibilityMetricOrNull(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->hasLifecycle()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getLifecycle()Lio/bidmachine/protobuf/sdk/LifecycleMetric;

    move-result-object p0

    const-string v0, "lifecycle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityLifecycleMetricOrNull(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;

    move-result-object p0

    return-object p0

    .line 13
    :cond_41
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->hasOverlap()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getOverlap()Lio/bidmachine/protobuf/sdk/OverlapMetric;

    move-result-object p0

    const-string v0, "overlap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityOverlapMetricOrNull(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    move-result-object p0

    return-object p0

    .line 18
    :cond_55
    new-instance v0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/protobuf/sdk/MetricRequirement;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toMetricOrNull$lambda$22(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Ljava/lang/String;
    .registers 3

    const-string v0, "$this_toMetricOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Metric - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMetricCase()Lio/bidmachine/protobuf/sdk/MetricRequirement$MetricCase;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", it must be GeometryMetric or VisibilityMetric or LifecycleMetric or OverlapMetric"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toProtoBooleanValue(Z)Lcom/explorestack/protobuf/BoolValue;
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoBooleanValueBuilder(Z)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/BoolValue$Builder;->build()Lcom/explorestack/protobuf/BoolValue;

    move-result-object p0

    const-string v0, "toProtoBooleanValueBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoBooleanValueBuilder(Z)Lcom/explorestack/protobuf/BoolValue$Builder;
    .registers 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/BoolValue;->newBuilder()Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/BoolValue$Builder;->setValue(Z)Lcom/explorestack/protobuf/BoolValue$Builder;

    move-result-object p0

    const-string v0, "newBuilder().setValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoStringValueBuilder(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/StringValue$Builder;->build()Lcom/explorestack/protobuf/StringValue;

    move-result-object p0

    const-string v0, "toProtoStringValueBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoStringValueBuilder(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/StringValue;->newBuilder()Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/StringValue$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue$Builder;

    move-result-object p0

    const-string v0, "newBuilder().setValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p0

    const-string v0, "toProtoValueBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p0

    const-string v0, "toProtoValueBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p0

    const-string v0, "toProtoValueBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValue(Ljava/lang/Number;)Lcom/explorestack/protobuf/Value;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Ljava/lang/Number;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p0

    const-string v0, "toProtoValueBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p0

    const-string v0, "toProtoValueBuilder().build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValueBuilder(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    const-string v0, "newBuilder()\n        .setListValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValueBuilder(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    const-string v0, "newBuilder()\n        .setListValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValueBuilder(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    const-string v0, "newBuilder()\n        .setStructValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValueBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    const-string v0, "newBuilder()\n        .setStructValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValueBuilder(Ljava/lang/Number;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6
    invoke-static {p0, v1, v2, v1}, Lio/bidmachine/util/UtilsKt;->toDoubleOrDefault$default(Ljava/lang/Object;Ljava/lang/Double;ILjava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    :goto_1a
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    const-string v0, "newBuilder()\n        .se\u2026rDefault() ?: toDouble())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValueBuilder(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    const-string v0, "newBuilder()\n        .setStringValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toProtoValueBuilder(Z)Lcom/explorestack/protobuf/Value$Builder;
    .registers 2

    .line 3
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    const-string v0, "newBuilder()\n        .setBoolValue(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toStructBuilderOrNull(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/explorestack/protobuf/Struct$Builder;"
        }
    .end annotation

    if-eqz p0, :cond_4c

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4c

    .line 5
    :cond_9
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    const-string v1, "newBuilder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_1a

    .line 8
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_38

    goto :goto_1a

    .line 12
    :cond_38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtilsKt;->toValueBuilderOrNull(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v1

    if-nez v1, :cond_43

    goto :goto_1a

    .line 13
    :cond_43
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    goto :goto_1a

    :cond_4b
    return-object v0

    :cond_4c
    :goto_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toValueBuilderOrNull(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    instance-of v1, p0, Lcom/explorestack/protobuf/Value;

    if-eqz v1, :cond_f

    .line 2
    check-cast p0, Lcom/explorestack/protobuf/Value;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0

    .line 5
    :cond_f
    instance-of v1, p0, Lcom/explorestack/protobuf/Value$Builder;

    if-eqz v1, :cond_16

    .line 6
    check-cast p0, Lcom/explorestack/protobuf/Value$Builder;

    return-object p0

    .line 9
    :cond_16
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 10
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0

    .line 13
    :cond_21
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2c

    .line 14
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Ljava/lang/Number;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2c
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3b

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Z)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0

    .line 21
    :cond_3b
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_4d

    .line 22
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toListValueBuilderOrNull(Ljava/util/List;)Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0

    :cond_4c
    return-object v0

    .line 25
    :cond_4d
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5e

    .line 26
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toStructBuilderOrNull(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toProtoValueBuilder(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0

    :cond_5e
    return-object v0
.end method

.method public static final toValueOrNull(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    instance-of v1, p0, Lcom/explorestack/protobuf/Value;

    if-eqz v1, :cond_b

    .line 2
    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0

    .line 5
    :cond_b
    instance-of v1, p0, Lcom/explorestack/protobuf/Value$Builder;

    if-eqz v1, :cond_16

    .line 6
    check-cast p0, Lcom/explorestack/protobuf/Value$Builder;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p0

    return-object p0

    .line 10
    :cond_16
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtilsKt;->toValueBuilderOrNull(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object p0

    return-object p0

    :cond_21
    return-object v0
.end method

.method public static final toViewabilityGeometryMetric(Lio/bidmachine/protobuf/sdk/GeometryMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getVisible()Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinAlpha()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinAlpha()D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, v3

    .line 8
    :goto_1d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinWidth()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_2e

    :cond_2d
    move-object v4, v3

    .line 13
    :goto_2e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->hasMinHeight()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/GeometryMetric;->getMinHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 15
    :cond_3d
    invoke-direct {v0, v1, v2, v4, v3}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityGeometryMetric;-><init>(ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static final toViewabilityLifecycleMetricOrNull(Lio/bidmachine/protobuf/sdk/LifecycleMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/LifecycleMetric;->getRequiredStatesList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_42

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 162
    check-cast v3, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    if-nez v3, :cond_26

    const/4 v4, -0x1

    goto :goto_2e

    .line 163
    :cond_26
    sget-object v4, Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    :goto_2e
    if-ne v4, v0, :cond_33

    .line 165
    sget-object v3, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;->HAS_WINDOW_FOCUS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric$State;

    goto :goto_3c

    .line 169
    :cond_33
    new-instance v4, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)V

    invoke-static {v4}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    move-object v3, v1

    :goto_3c
    if-eqz v3, :cond_16

    .line 321
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_42
    move-object v2, v1

    :cond_43
    if-eqz v2, :cond_4d

    .line 322
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :cond_4d
    :goto_4d
    if-eqz v0, :cond_50

    return-object v1

    .line 325
    :cond_50
    new-instance p0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;

    invoke-direct {p0, v2}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityLifecycleMetric;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static final toViewabilityLifecycleMetricOrNull$lambda$25$lambda$24(Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported LifecycleState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toViewabilityMeasurement(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getCount()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getIntervalMs()I

    move-result v2

    int-to-long v2, v2

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->hasFailureTimeoutMs()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Measurement;->getFailureTimeoutMs()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    .line 6
    :goto_21
    invoke-direct {v0, v1, v2, v3, p0}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;-><init>(IJLjava/lang/Long;)V

    return-object v0
.end method

.method public static final toViewabilityOverlapMetricOrNull(Lio/bidmachine/protobuf/sdk/OverlapMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getScope()Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object v0

    const-string v1, "scope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    .line 15
    new-instance p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;)V

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_29
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->WINDOWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    goto :goto_31

    .line 17
    :cond_2c
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->ALL_VIEWS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    goto :goto_31

    .line 18
    :cond_2f
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;->VIEW_SIBLINGS:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;

    .line 36
    :goto_31
    new-instance v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;

    .line 38
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/OverlapMetric;->getMaxOverlapPercentage()D

    move-result-wide v2

    double-to-float p0, v2

    .line 39
    invoke-direct {v1, v0, p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityOverlapMetric$Scope;F)V

    return-object v1
.end method

.method public static final toViewabilityOverlapMetricOrNull$lambda$26(Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;)Ljava/lang/String;
    .registers 3

    const-string v0, "$overlapScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported OverlapScope - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toViewabilityTrackerParams(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getDefaultInstance()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    if-ne p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;->getRulesList()Ljava/util/List;

    move-result-object p0

    const-string v0, "rulesList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 246
    check-cast v1, Lio/bidmachine/protobuf/sdk/ViewabilityRule;

    .line 247
    new-instance v2, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;

    .line 248
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getEvent()I

    move-result v3

    .line 249
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getBillable()Z

    move-result v4

    .line 250
    invoke-direct {v2, v3, v4}, Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;-><init>(IZ)V

    .line 254
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getMeasurement()Lio/bidmachine/protobuf/sdk/Measurement;

    move-result-object v3

    const-string v4, "rule.measurement"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityMeasurement(Lio/bidmachine/protobuf/sdk/Measurement;)Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;

    move-result-object v3

    .line 255
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/ViewabilityRule;->getRequiredMetricsList()Ljava/util/List;

    move-result-object v1

    const-string v4, "rule.requiredMetricsList"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    new-instance v4, Lio/bidmachine/utils/ProtoUtilsKt$toViewabilityTrackerParams$lambda$20$$inlined$sortedBy$1;

    invoke-direct {v4}, Lio/bidmachine/utils/ProtoUtilsKt$toViewabilityTrackerParams$lambda$20$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 492
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 501
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 502
    check-cast v5, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    .line 503
    const-string v6, "metricRequirement"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lio/bidmachine/utils/ProtoUtilsKt;->toMetricOrNull(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Lio/bidmachine/util/viewabilitytracker/metric/Metric;

    move-result-object v5

    if-eqz v5, :cond_66

    .line 744
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 745
    :cond_81
    new-instance v1, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;

    invoke-direct {v1, v2, v3, v4}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityRule;-><init>(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/viewabilitytracker/model/ViewabilityMeasurement;Ljava/util/Collection;)V

    .line 986
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 987
    :cond_8a
    new-instance p0, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    invoke-direct {p0, v0}, Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static final toViewabilityVisibilityMetricOrNull(Lio/bidmachine/protobuf/sdk/VisibilityMetric;)Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getScope()Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object v0

    const-string v1, "scope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    .line 15
    new-instance p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;)V

    invoke-static {p0}, Lio/bidmachine/core/Logger;->e(Lio/bidmachine/utils/lazy/LazyValue;)V

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_29
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SAFE_AREA:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    goto :goto_31

    .line 17
    :cond_2c
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->SCREEN:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    goto :goto_31

    .line 18
    :cond_2f
    sget-object v0, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;->PARENT_VIEW:Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;

    .line 36
    :goto_31
    new-instance v1, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;

    .line 38
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/VisibilityMetric;->getMinVisiblePercentage()D

    move-result-wide v2

    double-to-float p0, v2

    .line 39
    invoke-direct {v1, v0, p0}, Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric;-><init>(Lio/bidmachine/util/viewabilitytracker/metric/ViewabilityVisibilityMetric$Scope;F)V

    return-object v1
.end method

.method public static final toViewabilityVisibilityMetricOrNull$lambda$23(Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;)Ljava/lang/String;
    .registers 3

    const-string v0, "$visibilityScope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported VisibilityScope - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.utils.ProtoUtilsKt.WhenMappings (io.bidmachine.utils.ProtoUtilsKt$WhenMappings)
.class public final synthetic Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/utils/ProtoUtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->values()[Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->PARENT_VIEW:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->SCREEN:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;->SAFE_AREA:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->values()[Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2b
    sget-object v4, Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;->HAS_WINDOW_FOCUS:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_33} :catch_33

    :catch_33
    sput-object v0, Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->values()[Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3c
    sget-object v4, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->VIEW_SIBLINGS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->ALL_VIEWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4c
    sget-object v1, Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;->WINDOWS:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    sput-object v0, Lio/bidmachine/utils/ProtoUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method

###### Class io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda0 (io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/MetricRequirement;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/MetricRequirement;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/protobuf/sdk/MetricRequirement;

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->$r8$lambda$gLAUvfHh6iVpwi7GSfGZMNI7cl8(Lio/bidmachine/protobuf/sdk/MetricRequirement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda1 (io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->$r8$lambda$y8ZP_Cj8dum85bwFRw9zyoIP0V0(Lio/bidmachine/protobuf/sdk/VisibilityMetric$VisibilityScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda2 (io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->$r8$lambda$EDlO8_zMDhIyRvIJQ9EzoY59TV4(Lio/bidmachine/protobuf/sdk/OverlapMetric$OverlapScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda3 (io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/utils/ProtoUtilsKt$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->$r8$lambda$WpWtLZ8-DYqN5KGPJJzyPm4ABBM(Lio/bidmachine/protobuf/sdk/LifecycleMetric$LifecycleState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.utils.ProtoUtilsKt$toViewabilityTrackerParams$lambda$20$$inlined$sortedBy$1 (io.bidmachine.utils.ProtoUtilsKt$toViewabilityTrackerParams$lambda$20$$inlined$sortedBy$1)
.class public final Lio/bidmachine/utils/ProtoUtilsKt$toViewabilityTrackerParams$lambda$20$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityTrackerParams(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    .line 220
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMeasurementIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 221
    check-cast p2, Lio/bidmachine/protobuf/sdk/MetricRequirement;

    .line 440
    invoke-virtual {p2}, Lio/bidmachine/protobuf/sdk/MetricRequirement;->getMeasurementIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 441
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
