###### Class com.unity3d.ads.core.domain.offerwall.OfferwallEventData (com.unity3d.ads.core.domain.offerwall.OfferwallEventData)
.class public final Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;
.super Ljava/lang/Object;
.source "OfferwallEventData.kt"


# instance fields
.field private final errorCode:Ljava/lang/Integer;

.field private final errorMessage:Ljava/lang/String;

.field private final offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

.field private final placementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    const-string v0, "offerwallEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    .line 7
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    .line 5
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;-><init>(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->copy(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/services/ads/offerwall/OfferwallEvent;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;
    .registers 6

    .line 0
    const-string v0, "offerwallEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;-><init>(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getErrorCode()Ljava/lang/Integer;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfferwallEvent()Lcom/unity3d/services/ads/offerwall/OfferwallEvent;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    return-object v0
.end method

.method public final getPlacementName()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    if-nez v1, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfferwallEventData(offerwallEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->offerwallEvent:Lcom/unity3d/services/ads/offerwall/OfferwallEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placementName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
