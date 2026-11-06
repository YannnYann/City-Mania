###### Class io.bidmachine.utils.ProtoUtils (io.bidmachine.utils.ProtoUtils)
.class public final Lio/bidmachine/utils/ProtoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/utils/ProtoUtils$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/utils/ProtoUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/utils/ProtoUtils;

    invoke-direct {v0}, Lio/bidmachine/utils/ProtoUtils;-><init>()V

    sput-object v0, Lio/bidmachine/utils/ProtoUtils;->INSTANCE:Lio/bidmachine/utils/ProtoUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "outMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_27

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_27

    .line 751
    :cond_13
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_22

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1502
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    :cond_22
    check-cast v0, Ljava/util/List;

    .line 1504
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_27
    return-void
.end method

.method public static final createAdFormatBuilder(Lio/bidmachine/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;
    .registers 7

    const-string v0, "adFormat"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v0

    .line 4
    instance-of v1, p0, Lio/bidmachine/AdFormat$Banner;

    if-eqz v1, :cond_38

    .line 5
    check-cast p0, Lio/bidmachine/AdFormat$Banner;

    invoke-virtual {p0}, Lio/bidmachine/AdFormat$Banner;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p0

    .line 6
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BannerAdSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setWidth(I)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/BannerAdSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setHeight(I)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/BannerAdSize;->isAdaptive()Z

    move-result p0

    invoke-virtual {v1, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->setIsAdaptive(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Banner$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Banner;

    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setBanner(Lio/bidmachine/protobuf/sdk/AdFormat$Banner;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    goto/16 :goto_f3

    .line 18
    :cond_38
    instance-of v1, p0, Lio/bidmachine/AdFormat$Interstitial;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_71

    .line 19
    check-cast p0, Lio/bidmachine/AdFormat$Interstitial;

    invoke-virtual {p0}, Lio/bidmachine/AdFormat$Interstitial;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p0

    .line 20
    sget-object v1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-ne p0, v1, :cond_4a

    move v1, v3

    goto :goto_4b

    :cond_4a
    move v1, v2

    .line 21
    :goto_4b
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v4

    if-nez v1, :cond_58

    .line 22
    sget-object v5, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    if-ne p0, v5, :cond_56

    goto :goto_58

    :cond_56
    move v5, v2

    goto :goto_59

    :cond_58
    :goto_58
    move v5, v3

    :goto_59
    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setHasBanner(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object v4

    if-nez v1, :cond_63

    .line 23
    sget-object v1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    if-ne p0, v1, :cond_64

    :cond_63
    move v2, v3

    :cond_64
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;

    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setInterstitial(Lio/bidmachine/protobuf/sdk/AdFormat$Interstitial;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    goto/16 :goto_f3

    .line 31
    :cond_71
    instance-of v1, p0, Lio/bidmachine/AdFormat$Rewarded;

    if-eqz v1, :cond_a7

    .line 32
    check-cast p0, Lio/bidmachine/AdFormat$Rewarded;

    invoke-virtual {p0}, Lio/bidmachine/AdFormat$Rewarded;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p0

    .line 33
    sget-object v1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-ne p0, v1, :cond_81

    move v1, v3

    goto :goto_82

    :cond_81
    move v1, v2

    .line 34
    :goto_82
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v4

    if-nez v1, :cond_8f

    .line 35
    sget-object v5, Lio/bidmachine/AdContentType;->Static:Lio/bidmachine/AdContentType;

    if-ne p0, v5, :cond_8d

    goto :goto_8f

    :cond_8d
    move v5, v2

    goto :goto_90

    :cond_8f
    :goto_8f
    move v5, v3

    :goto_90
    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setHasBanner(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object v4

    if-nez v1, :cond_9a

    .line 36
    sget-object v1, Lio/bidmachine/AdContentType;->Video:Lio/bidmachine/AdContentType;

    if-ne p0, v1, :cond_9b

    :cond_9a
    move v2, v3

    :cond_9b
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;

    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setRewarded(Lio/bidmachine/protobuf/sdk/AdFormat$Rewarded;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    goto :goto_f3

    .line 44
    :cond_a7
    instance-of v1, p0, Lio/bidmachine/AdFormat$Native;

    if-eqz v1, :cond_f3

    .line 45
    check-cast p0, Lio/bidmachine/AdFormat$Native;

    invoke-virtual {p0}, Lio/bidmachine/AdFormat$Native;->getMediaAssetTypes()Ljava/util/List;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lio/bidmachine/MediaAssetType;->isAll(Ljava/util/List;)Z

    move-result v1

    .line 47
    invoke-static {}, Lio/bidmachine/protobuf/sdk/AdFormat$Native;->newBuilder()Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v4

    if-nez v1, :cond_c6

    .line 48
    sget-object v5, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    goto :goto_c6

    :cond_c4
    move v5, v2

    goto :goto_c7

    :cond_c6
    :goto_c6
    move v5, v3

    :goto_c7
    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setHasVideo(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v4

    if-nez v1, :cond_d8

    .line 49
    sget-object v5, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    goto :goto_d8

    :cond_d6
    move v5, v2

    goto :goto_d9

    :cond_d8
    :goto_d8
    move v5, v3

    :goto_d9
    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setHasIcon(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object v4

    if-nez v1, :cond_e7

    .line 50
    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e8

    :cond_e7
    move v2, v3

    :cond_e8
    invoke-virtual {v4, v2}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->setHasImage(Z)Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Native$Builder;->build()Lio/bidmachine/protobuf/sdk/AdFormat$Native;

    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/AdFormat$Builder;->setNative(Lio/bidmachine/protobuf/sdk/AdFormat$Native;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    .line 60
    :cond_f3
    :goto_f3
    const-string p0, "builder"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final fillStructWithPrimitiveValues(Lcom/explorestack/protobuf/Struct$Builder;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "structBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3e

    .line 6
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    goto :goto_12

    .line 12
    :cond_3e
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_58

    .line 14
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    goto :goto_12

    .line 20
    :cond_58
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_12

    .line 22
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    goto :goto_12

    :cond_72
    return-void
.end method

.method public static final findFirstAdExtension(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;
    .registers 6

    const-class v0, Lio/bidmachine/protobuf/AdExtension;

    const-string v1, "ad"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_26

    .line 3
    :try_start_e
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProto(I)Lcom/explorestack/protobuf/Any;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v0}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 5
    invoke-virtual {v3, v0}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/AdExtension;
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1f

    return-object v3

    :catchall_1f
    move-exception v3

    .line 8
    invoke-static {v3}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isEmpty(Lcom/explorestack/protobuf/ListValue;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue;->getValuesCount()I

    move-result p0

    if-gtz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static final isEmpty(Lcom/explorestack/protobuf/Struct;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsCount()I

    move-result p0

    if-gtz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static final msToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;
    .registers 7

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->newBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    const/16 v1, 0x3e8

    int-to-long v1, v1

    .line 2
    div-long v3, p0, v1

    invoke-virtual {v0, v3, v4}, Lcom/explorestack/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 3
    rem-long/2addr p0, v1

    long-to-int p0, p0

    const p1, 0xf4240

    mul-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->setNanos(I)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    const-string p1, "newBuilder()\n           \u2026000)\n            .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final prepareEvents(Ljava/util/Map;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3c

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3c

    .line 769
    :cond_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 770
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getType()Lcom/explorestack/protobuf/adcom/EventType;

    move-result-object v1

    sget-object v2, Lcom/explorestack/protobuf/adcom/EventType;->EVENT_TYPE_IMPRESSION:Lcom/explorestack/protobuf/adcom/EventType;

    if-ne v1, v2, :cond_29

    .line 771
    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    goto :goto_31

    .line 773
    :cond_29
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getTypeValue()I

    move-result v1

    invoke-static {v1}, Lio/bidmachine/TrackEventType;->fromNumber(I)Lio/bidmachine/TrackEventType;

    move-result-object v1

    :goto_31
    if-nez v1, :cond_34

    goto :goto_12

    .line 776
    :cond_34
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/bidmachine/utils/ProtoUtils;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    goto :goto_12

    :cond_3c
    :goto_3c
    return-void
.end method

.method public static final secToTimestamp(J)Lcom/explorestack/protobuf/Timestamp;
    .registers 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->newBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->setNanos(I)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    const-string p1, "newBuilder()\n           \u2026s(0)\n            .build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final toListOrNull(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/ListValue;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtils;->isEmpty(Lcom/explorestack/protobuf/ListValue;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue;->getValuesList()Ljava/util/List;

    move-result-object p0

    const-string v1, "listValue!!.valuesList"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Value;

    .line 699
    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtils;->toObjectOrNull(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_33
    return-object v0
.end method

.method public static final toMapOrNull(Lcom/explorestack/protobuf/Struct;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Struct;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtils;->isEmpty(Lcom/explorestack/protobuf/Struct;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object p0

    const-string v1, "struct!!.fieldsMap"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 717
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Value;

    .line 718
    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_45

    goto :goto_21

    .line 721
    :cond_45
    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtils;->toObjectOrNull(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4c

    goto :goto_21

    .line 722
    :cond_4c
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_50
    return-object v0
.end method

.method public static final toObjectOrNull(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v1, -0x1

    goto :goto_14

    :cond_c
    sget-object v2, Lio/bidmachine/utils/ProtoUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_14
    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_36

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    return-object v0

    .line 6
    :cond_24
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtils;->toListOrNull(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/utils/ProtoUtils;->toMapOrNull(Lcom/explorestack/protobuf/Struct;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 8
    :cond_36
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_44
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.utils.ProtoUtils.WhenMappings (io.bidmachine.utils.ProtoUtils$WhenMappings)
.class public final synthetic Lio/bidmachine/utils/ProtoUtils$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/utils/ProtoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/explorestack/protobuf/Value$KindCase;->values()[Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->NUMBER_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->STRING_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->BOOL_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->STRUCT_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/explorestack/protobuf/Value$KindCase;->LIST_VALUE:Lcom/explorestack/protobuf/Value$KindCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lio/bidmachine/utils/ProtoUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
