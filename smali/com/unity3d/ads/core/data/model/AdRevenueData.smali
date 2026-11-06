###### Class com.unity3d.ads.core.data.model.AdRevenueData (com.unity3d.ads.core.data.model.AdRevenueData)
.class public final Lcom/unity3d/ads/core/data/model/AdRevenueData;
.super Ljava/lang/Object;
.source "AdRevenueData.kt"


# instance fields
.field private final adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

.field private final adUnitId:Ljava/lang/String;

.field private final countryCode:Ljava/lang/String;

.field private final eventId:Ljava/util/UUID;

.field private final networkName:Ljava/lang/String;

.field private final revenue:Ljava/lang/Double;

.field private final thirdPartyAdPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)V
    .registers 9

    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    .line 10
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    .line 11
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    .line 15
    iput-object p7, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p8, 0x1

    if-eqz p8, :cond_8

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    :cond_8
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 8
    invoke-direct/range {p2 .. p9}, Lcom/unity3d/ads/core/data/model/AdRevenueData;-><init>(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/AdRevenueData;Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/AdRevenueData;
    .registers 10

    .line 0
    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->copy(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lcom/unity3d/ads/core/data/model/AdRevenueData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/UUID;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    return-object v0
.end method

.method public final component2()Ljava/lang/Double;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object v0
.end method

.method public final copy(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lcom/unity3d/ads/core/data/model/AdRevenueData;
    .registers 17

    .line 0
    const-string v0, "eventId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/ads/core/data/model/AdRevenueData;-><init>(Ljava/util/UUID;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    if-eq v1, p1, :cond_55

    return v2

    :cond_55
    return v0
.end method

.method public final getAdFormat()Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventId()Ljava/util/UUID;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getNetworkName()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRevenue()Ljava/lang/Double;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    return-object v0
.end method

.method public final getThirdPartyAdPlacementId()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    if-nez v1, :cond_29

    move v1, v2

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    if-nez v1, :cond_36

    move v1, v2

    goto :goto_3a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    if-nez v1, :cond_43

    move v1, v2

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    if-nez v1, :cond_4f

    goto :goto_53

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRevenueData(eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->eventId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", revenue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->revenue:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thirdPartyAdPlacementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->thirdPartyAdPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdRevenueData;->adFormat:Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
