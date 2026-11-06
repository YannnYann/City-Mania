###### Class com.unity3d.ads.BannerConfiguration (com.unity3d.ads.BannerConfiguration)
.class public final Lcom/unity3d/ads/BannerConfiguration;
.super Ljava/lang/Object;
.source "BannerConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/BannerConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final adMarkup:Ljava/lang/String;

.field private final bannerSize:Lcom/unity3d/ads/BannerSize;

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

.field private final listener:Lcom/unity3d/ads/BannerShowListener;

.field private final mediationAdUnitId:Ljava/lang/String;

.field private final mediationInfo:Lcom/unity3d/ads/MediationInfo;

.field private final placementId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/BannerSize;",
            "Lcom/unity3d/ads/BannerShowListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/MediationInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration;->placementId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/unity3d/ads/BannerConfiguration;->bannerSize:Lcom/unity3d/ads/BannerSize;

    .line 19
    iput-object p3, p0, Lcom/unity3d/ads/BannerConfiguration;->listener:Lcom/unity3d/ads/BannerShowListener;

    .line 20
    iput-object p4, p0, Lcom/unity3d/ads/BannerConfiguration;->extras:Ljava/util/Map;

    .line 21
    iput-object p5, p0, Lcom/unity3d/ads/BannerConfiguration;->adMarkup:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/unity3d/ads/BannerConfiguration;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 23
    iput-object p7, p0, Lcom/unity3d/ads/BannerConfiguration;->mediationAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_8

    .line 20
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_8
    move-object v4, p4

    and-int/lit8 p4, p8, 0x10

    const/4 v0, 0x0

    if-eqz p4, :cond_10

    move-object v5, v0

    goto :goto_11

    :cond_10
    move-object v5, p5

    :goto_11
    and-int/lit8 p4, p8, 0x20

    if-eqz p4, :cond_17

    move-object v6, v0

    goto :goto_18

    :cond_17
    move-object v6, p6

    :goto_18
    and-int/lit8 p4, p8, 0x40

    if-eqz p4, :cond_22

    move-object v7, v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v0, p0

    goto :goto_27

    :cond_22
    move-object v7, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 16
    :goto_27
    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/BannerConfiguration;-><init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/unity3d/ads/BannerConfiguration;-><init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAdMarkup()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/unity3d/ads/BannerConfiguration;->adMarkup:Ljava/lang/String;

    return-object v0
.end method

.method public final getBannerSize()Lcom/unity3d/ads/BannerSize;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/BannerConfiguration;->bannerSize:Lcom/unity3d/ads/BannerSize;

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

    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/BannerConfiguration;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getListener()Lcom/unity3d/ads/BannerShowListener;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/BannerConfiguration;->listener:Lcom/unity3d/ads/BannerShowListener;

    return-object v0
.end method

.method public final getMediationAdUnitId()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/unity3d/ads/BannerConfiguration;->mediationAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationInfo()Lcom/unity3d/ads/MediationInfo;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/BannerConfiguration;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/BannerConfiguration;->placementId:Ljava/lang/String;

    return-object v0
.end method

###### Class com.unity3d.ads.BannerConfiguration.Builder (com.unity3d.ads.BannerConfiguration$Builder)
.class public final Lcom/unity3d/ads/BannerConfiguration$Builder;
.super Ljava/lang/Object;
.source "BannerConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/BannerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adMarkup:Ljava/lang/String;

.field private final bannerSize:Lcom/unity3d/ads/BannerSize;

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

.field private final listener:Lcom/unity3d/ads/BannerShowListener;

.field private mediationAdUnitId:Ljava/lang/String;

.field private mediationInfo:Lcom/unity3d/ads/MediationInfo;

.field private final placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;)V
    .registers 5

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->bannerSize:Lcom/unity3d/ads/BannerSize;

    iput-object p3, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->listener:Lcom/unity3d/ads/BannerShowListener;

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ads/BannerConfiguration;
    .registers 10

    .line 101
    new-instance v0, Lcom/unity3d/ads/BannerConfiguration;

    .line 102
    iget-object v1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->placementId:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->bannerSize:Lcom/unity3d/ads/BannerSize;

    .line 104
    iget-object v3, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->listener:Lcom/unity3d/ads/BannerShowListener;

    .line 105
    iget-object v4, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->extras:Ljava/util/Map;

    .line 106
    iget-object v5, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->adMarkup:Ljava/lang/String;

    .line 107
    iget-object v6, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 108
    iget-object v7, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    const/4 v8, 0x0

    .line 101
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/BannerConfiguration;-><init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;Ljava/util/Map;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final withAdMarkup(Ljava/lang/String;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .registers 3

    const-string v0, "adMarkup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->adMarkup:Ljava/lang/String;

    return-object p0
.end method

.method public final withExtras(Ljava/util/Map;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unity3d/ads/BannerConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final withMediationAdUnitId(Ljava/lang/String;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .registers 3

    const-string v0, "mediationAdUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public final withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/BannerConfiguration$Builder;
    .registers 3

    const-string v0, "mediationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/unity3d/ads/BannerConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object p0
.end method
