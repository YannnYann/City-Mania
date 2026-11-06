###### Class com.unity3d.ads.LoadConfiguration (com.unity3d.ads.LoadConfiguration)
.class public final Lcom/unity3d/ads/LoadConfiguration;
.super Ljava/lang/Object;
.source "LoadConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/LoadConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final adMarkup:Ljava/lang/String;

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

.field private final mediationAdUnitId:Ljava/lang/String;

.field private final mediationInfo:Lcom/unity3d/ads/MediationInfo;

.field private final placementId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/MediationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unity3d/ads/LoadConfiguration;->placementId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/unity3d/ads/LoadConfiguration;->adMarkup:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/unity3d/ads/LoadConfiguration;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 21
    iput-object p4, p0, Lcom/unity3d/ads/LoadConfiguration;->mediationAdUnitId:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/unity3d/ads/LoadConfiguration;->extras:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/unity3d/ads/LoadConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getAdMarkup()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/LoadConfiguration;->adMarkup:Ljava/lang/String;

    return-object v0
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

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/LoadConfiguration;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getMediationAdUnitId()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/unity3d/ads/LoadConfiguration;->mediationAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationInfo()Lcom/unity3d/ads/MediationInfo;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/LoadConfiguration;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/LoadConfiguration;->placementId:Ljava/lang/String;

    return-object v0
.end method

###### Class com.unity3d.ads.LoadConfiguration.Builder (com.unity3d.ads.LoadConfiguration$Builder)
.class public final Lcom/unity3d/ads/LoadConfiguration$Builder;
.super Ljava/lang/Object;
.source "LoadConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/LoadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adMarkup:Ljava/lang/String;

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

.field private mediationAdUnitId:Ljava/lang/String;

.field private mediationInfo:Lcom/unity3d/ads/MediationInfo;

.field private final placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->placementId:Ljava/lang/String;

    .line 43
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ads/LoadConfiguration;
    .registers 8

    .line 96
    new-instance v0, Lcom/unity3d/ads/LoadConfiguration;

    iget-object v1, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->adMarkup:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    iget-object v4, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    iget-object v5, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->extras:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/LoadConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final withAdMarkup(Ljava/lang/String;)Lcom/unity3d/ads/LoadConfiguration$Builder;
    .registers 3

    const-string v0, "adMarkup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->adMarkup:Ljava/lang/String;

    return-object p0
.end method

.method public final withExtras(Ljava/util/Map;)Lcom/unity3d/ads/LoadConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unity3d/ads/LoadConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final withMediationAdUnitId(Ljava/lang/String;)Lcom/unity3d/ads/LoadConfiguration$Builder;
    .registers 3

    const-string v0, "mediationAdUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public final withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/LoadConfiguration$Builder;
    .registers 3

    const-string v0, "mediationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/unity3d/ads/LoadConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object p0
.end method
