###### Class com.unity3d.ads.core.data.model.OmidOptions (com.unity3d.ads.core.data.model.OmidOptions)
.class public final Lcom/unity3d/ads/core/data/model/OmidOptions;
.super Ljava/lang/Object;
.source "OmidOptions.kt"


# instance fields
.field private final creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

.field private final customReferenceData:Ljava/lang/String;

.field private final impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

.field private final impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

.field private final isolateVerificationScripts:Z

.field private final mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

.field private final videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 0
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/ads/core/data/model/OmidOptions;-><init>(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;)V
    .registers 8

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    .line 9
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    .line 10
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    .line 11
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    .line 13
    iput-object p6, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    .line 14
    iput-object p7, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1f

    move-object p6, v0

    :cond_1f
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2c

    move-object p9, v0

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    goto :goto_34

    :cond_2c
    move-object p9, p7

    move-object p8, p6

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    .line 7
    :goto_34
    invoke-direct/range {p2 .. p9}, Lcom/unity3d/ads/core/data/model/OmidOptions;-><init>(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/OmidOptions;ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/OmidOptions;
    .registers 10

    .line 0
    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-boolean p1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/unity3d/ads/core/data/model/OmidOptions;->copy(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;)Lcom/unity3d/ads/core/data/model/OmidOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    return v0
.end method

.method public final component2()Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object v0
.end method

.method public final component3()Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/iab/omid/library/unity3d/adsession/ImpressionType;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object v0
.end method

.method public final component6()Lcom/iab/omid/library/unity3d/adsession/CreativeType;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    return-object v0
.end method

.method public final component7()Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object v0
.end method

.method public final copy(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;)Lcom/unity3d/ads/core/data/model/OmidOptions;
    .registers 16

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/model/OmidOptions;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/data/model/OmidOptions;-><init>(ZLcom/iab/omid/library/unity3d/adsession/Owner;Lcom/iab/omid/library/unity3d/adsession/Owner;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/ImpressionType;Lcom/iab/omid/library/unity3d/adsession/CreativeType;Lcom/iab/omid/library/unity3d/adsession/Owner;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/OmidOptions;

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    iget-boolean v3, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    if-eq v1, p1, :cond_41

    return v2

    :cond_41
    return v0
.end method

.method public final getCreativeType()Lcom/iab/omid/library/unity3d/adsession/CreativeType;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    return-object v0
.end method

.method public final getCustomReferenceData()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionOwner()Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object v0
.end method

.method public final getImpressionType()Lcom/iab/omid/library/unity3d/adsession/ImpressionType;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    return-object v0
.end method

.method public final getIsolateVerificationScripts()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    return v0
.end method

.method public final getMediaEventsOwner()Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object v0
.end method

.method public final getVideoEventsOwner()Lcom/iab/omid/library/unity3d/adsession/Owner;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

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

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    if-nez v1, :cond_29

    move v1, v2

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    if-nez v1, :cond_36

    move v1, v2

    goto :goto_3a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    if-nez v1, :cond_43

    move v1, v2

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

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

    const-string v1, "OmidOptions(isolateVerificationScripts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->isolateVerificationScripts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", impressionOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoEventsOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->videoEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customReferenceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->customReferenceData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impressionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->impressionType:Lcom/iab/omid/library/unity3d/adsession/ImpressionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creativeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->creativeType:Lcom/iab/omid/library/unity3d/adsession/CreativeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaEventsOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/OmidOptions;->mediaEventsOwner:Lcom/iab/omid/library/unity3d/adsession/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
