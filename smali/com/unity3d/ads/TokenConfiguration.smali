###### Class com.unity3d.ads.TokenConfiguration (com.unity3d.ads.TokenConfiguration)
.class public final Lcom/unity3d/ads/TokenConfiguration;
.super Ljava/lang/Object;
.source "TokenConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/TokenConfiguration$Builder;
    }
.end annotation


# instance fields
.field private _bannerSize:Lcom/unity3d/ads/BannerSize;

.field private _isNewApi:Z

.field private _mediationAdUnitId:Ljava/lang/String;

.field private _mediationInfo:Lcom/unity3d/ads/MediationInfo;

.field private _placementId:Ljava/lang/String;

.field private final adFormat:Lcom/unity3d/ads/AdFormat;

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


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/AdFormat;)V
    .registers 4

    .line 0
    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/unity3d/ads/TokenConfiguration;-><init>(Lcom/unity3d/ads/AdFormat;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/AdFormat;",
            "Lcom/unity3d/ads/MediationInfo;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/BannerSize;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p6}, Lcom/unity3d/ads/TokenConfiguration;-><init>(Lcom/unity3d/ads/AdFormat;Ljava/util/Map;)V

    .line 55
    iput-object p2, p0, Lcom/unity3d/ads/TokenConfiguration;->_mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 56
    iput-object p3, p0, Lcom/unity3d/ads/TokenConfiguration;->_placementId:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/unity3d/ads/TokenConfiguration;->_bannerSize:Lcom/unity3d/ads/BannerSize;

    .line 58
    iput-object p5, p0, Lcom/unity3d/ads/TokenConfiguration;->_mediationAdUnitId:Ljava/lang/String;

    .line 59
    iput-boolean p7, p0, Lcom/unity3d/ads/TokenConfiguration;->_isNewApi:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_10

    move-object p4, v0

    :cond_10
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_15

    move-object p5, v0

    :cond_15
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1d

    .line 52
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p6

    :cond_1d
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_22

    const/4 p7, 0x0

    :cond_22
    move p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 46
    invoke-direct/range {p1 .. p8}, Lcom/unity3d/ads/TokenConfiguration;-><init>(Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Ljava/lang/String;Ljava/util/Map;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/unity3d/ads/TokenConfiguration;-><init>(Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/AdFormat;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/AdFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration;->adFormat:Lcom/unity3d/ads/AdFormat;

    .line 18
    iput-object p2, p0, Lcom/unity3d/ads/TokenConfiguration;->extras:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ads/AdFormat;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 18
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 16
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/TokenConfiguration;-><init>(Lcom/unity3d/ads/AdFormat;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getAdFormat()Lcom/unity3d/ads/AdFormat;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/TokenConfiguration;->adFormat:Lcom/unity3d/ads/AdFormat;

    return-object v0
.end method

.method public final getBannerSize()Lcom/unity3d/ads/BannerSize;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/TokenConfiguration;->_bannerSize:Lcom/unity3d/ads/BannerSize;

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

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/TokenConfiguration;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getMediationAdUnitId()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/TokenConfiguration;->_mediationAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationInfo()Lcom/unity3d/ads/MediationInfo;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/unity3d/ads/TokenConfiguration;->_mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/TokenConfiguration;->_placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final isNewApi()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/unity3d/ads/TokenConfiguration;->_isNewApi:Z

    return v0
.end method

###### Class com.unity3d.ads.TokenConfiguration.Builder (com.unity3d.ads.TokenConfiguration$Builder)
.class public final Lcom/unity3d/ads/TokenConfiguration$Builder;
.super Ljava/lang/Object;
.source "TokenConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/TokenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final adFormat:Lcom/unity3d/ads/AdFormat;

.field private bannerSize:Lcom/unity3d/ads/BannerSize;

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

.field private placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/AdFormat;)V
    .registers 3

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->adFormat:Lcom/unity3d/ads/AdFormat;

    .line 83
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ads/TokenConfiguration;
    .registers 10

    .line 146
    new-instance v0, Lcom/unity3d/ads/TokenConfiguration;

    .line 147
    iget-object v1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->adFormat:Lcom/unity3d/ads/AdFormat;

    .line 148
    iget-object v2, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    .line 149
    iget-object v3, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->placementId:Ljava/lang/String;

    .line 150
    iget-object v4, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->bannerSize:Lcom/unity3d/ads/BannerSize;

    .line 151
    iget-object v5, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    .line 152
    iget-object v6, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->extras:Ljava/util/Map;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 146
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/TokenConfiguration;-><init>(Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/MediationInfo;Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Ljava/lang/String;Ljava/util/Map;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final withBannerSize(Lcom/unity3d/ads/BannerSize;)Lcom/unity3d/ads/TokenConfiguration$Builder;
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->bannerSize:Lcom/unity3d/ads/BannerSize;

    return-object p0
.end method

.method public final withExtras(Ljava/util/Map;)Lcom/unity3d/ads/TokenConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unity3d/ads/TokenConfiguration$Builder;"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final withMediationAdUnitId(Ljava/lang/String;)Lcom/unity3d/ads/TokenConfiguration$Builder;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->mediationAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public final withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/TokenConfiguration$Builder;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->mediationInfo:Lcom/unity3d/ads/MediationInfo;

    return-object p0
.end method

.method public final withPlacementId(Ljava/lang/String;)Lcom/unity3d/ads/TokenConfiguration$Builder;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/unity3d/ads/TokenConfiguration$Builder;->placementId:Ljava/lang/String;

    return-object p0
.end method
