###### Class com.unity3d.ads.InitializationConfiguration (com.unity3d.ads.InitializationConfiguration)
.class public final Lcom/unity3d/ads/InitializationConfiguration;
.super Ljava/lang/Object;
.source "InitializationConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/InitializationConfiguration$Builder;
    }
.end annotation


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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/unity3d/ads/InitializationConfiguration;->gameId:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/unity3d/ads/InitializationConfiguration;->isTestModeEnabled:Z

    .line 17
    iput-object p3, p0, Lcom/unity3d/ads/InitializationConfiguration;->logLevel:Lcom/unity3d/ads/LogLevel;

    .line 18
    iput-object p4, p0, Lcom/unity3d/ads/InitializationConfiguration;->extras:Ljava/util/Map;

    .line 19
    iput-object p5, p0, Lcom/unity3d/ads/InitializationConfiguration;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    .line 17
    sget-object p3, Lcom/unity3d/ads/LogLevel;->INFO:Lcom/unity3d/ads/LogLevel;

    :cond_6
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_f

    .line 18
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

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/InitializationConfiguration;-><init>(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;)V

    return-void
.end method


# virtual methods
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

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/InitializationConfiguration;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/InitializationConfiguration;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogLevel()Lcom/unity3d/ads/LogLevel;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/InitializationConfiguration;->logLevel:Lcom/unity3d/ads/LogLevel;

    return-object v0
.end method

.method public final getMediationInfo()Lcom/unity3d/ads/MediationInfo;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/InitializationConfiguration;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object v0
.end method

.method public final isTestModeEnabled()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/unity3d/ads/InitializationConfiguration;->isTestModeEnabled:Z

    return v0
.end method

###### Class com.unity3d.ads.InitializationConfiguration.Builder (com.unity3d.ads.InitializationConfiguration$Builder)
.class public final Lcom/unity3d/ads/InitializationConfiguration$Builder;
.super Ljava/lang/Object;
.source "InitializationConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/InitializationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private extras:Ljava/util/Map;
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

.field private isTestModeEnabled:Z

.field private logLevel:Lcom/unity3d/ads/LogLevel;

.field private mediationInfo:Lcom/unity3d/ads/MediationInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "gameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->gameId:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/unity3d/ads/LogLevel;->INFO:Lcom/unity3d/ads/LogLevel;

    iput-object p1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->logLevel:Lcom/unity3d/ads/LogLevel;

    .line 40
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ads/InitializationConfiguration;
    .registers 7

    .line 94
    new-instance v0, Lcom/unity3d/ads/InitializationConfiguration;

    .line 95
    iget-object v1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->gameId:Ljava/lang/String;

    .line 96
    iget-boolean v2, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->isTestModeEnabled:Z

    .line 97
    iget-object v3, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->logLevel:Lcom/unity3d/ads/LogLevel;

    .line 98
    iget-object v4, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->extras:Ljava/util/Map;

    .line 99
    iget-object v5, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/InitializationConfiguration;-><init>(Ljava/lang/String;ZLcom/unity3d/ads/LogLevel;Ljava/util/Map;Lcom/unity3d/ads/MediationInfo;)V

    return-object v0
.end method

.method public final withExtras(Ljava/util/Map;)Lcom/unity3d/ads/InitializationConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unity3d/ads/InitializationConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final withLogLevel(Lcom/unity3d/ads/LogLevel;)Lcom/unity3d/ads/InitializationConfiguration$Builder;
    .registers 3

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->logLevel:Lcom/unity3d/ads/LogLevel;

    return-object p0
.end method

.method public final withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/InitializationConfiguration$Builder;
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object p0
.end method

.method public final withTestMode(Z)Lcom/unity3d/ads/InitializationConfiguration$Builder;
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/unity3d/ads/InitializationConfiguration$Builder;->isTestModeEnabled:Z

    return-object p0
.end method
