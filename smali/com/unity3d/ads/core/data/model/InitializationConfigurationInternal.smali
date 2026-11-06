###### Class com.unity3d.ads.core.data.model.InitializationConfigurationInternal (com.unity3d.ads.core.data.model.InitializationConfigurationInternal)
.class public final Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;
.super Ljava/lang/Object;
.source "InitializationConfigurationInternal.kt"


# instance fields
.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gameId:Ljava/lang/String;

.field private final isTestModeEnabled:Z

.field private final logLevel:Lcom/unity3d/ads/LogLevel;

.field private final mediationInfo:Lcom/unity3d/ads/MediationInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/unity3d/ads/LogLevel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unity3d/ads/MediationInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "gameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    .line 8
    iput-boolean p2, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    .line 9
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    .line 10
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    .line 11
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    .line 9
    sget-object p3, Lcom/unity3d/ads/LogLevel;->INFO:Lcom/unity3d/ads/LogLevel;

    :cond_6
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_f

    .line 10
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_f
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_15

    const/4 p5, 0x0

    :cond_15
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;-><init>(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;
    .registers 8

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-boolean p2, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    :cond_c
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    :cond_12
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    :cond_18
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    iget-object p5, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    :cond_1e
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->copy(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    return v0
.end method

.method public final component3()Lcom/unity3d/ads/LogLevel;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()Lcom/unity3d/ads/MediationInfo;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/unity3d/ads/LogLevel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unity3d/ads/MediationInfo;",
            ")",
            "Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;"
        }
    .end annotation

    .line 0
    const-string v0, "gameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;-><init>(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    iget-boolean v3, p1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method public final getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogLevel()Lcom/unity3d/ads/LogLevel;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    return-object v0
.end method

.method public final getMediationInfo()Lcom/unity3d/ads/MediationInfo;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    if-nez v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    return v0
.end method

.method public final isTestModeEnabled()Z
    .registers 2

    .line 8
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitializationConfigurationInternal(gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTestModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->isTestModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->logLevel:Lcom/unity3d/ads/LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->extras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/InitializationConfigurationInternal;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
