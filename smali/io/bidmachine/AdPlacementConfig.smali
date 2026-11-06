###### Class io.bidmachine.AdPlacementConfig (io.bidmachine.AdPlacementConfig)
.class public final Lio/bidmachine/AdPlacementConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdPlacementConfig$Builder;,
        Lio/bidmachine/AdPlacementConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/AdPlacementConfig$Companion;


# instance fields
.field private final adFormat:Lio/bidmachine/AdFormat;

.field private final customParams:Lio/bidmachine/CustomParams;

.field private final placementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/AdPlacementConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)V
    .registers 5

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    .line 3
    iput-object p2, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 5
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdPlacementConfig;-><init>(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdsFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)V
    .registers 5

    const-string v0, "adsFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lio/bidmachine/AdsFormat;->toAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p1

    const-string v0, "adsFormat.toAdFormat()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdPlacementConfig;-><init>(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)V

    return-void
.end method

.method public static final bannerBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Companion;->bannerBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final bannerBuilder(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 2

    .line 2
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdPlacementConfig$Companion;->bannerBuilder(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/AdPlacementConfig;->copy(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final interstitialBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Companion;->interstitialBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final interstitialBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 2

    .line 2
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdPlacementConfig$Companion;->interstitialBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final nativeBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Companion;->nativeBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final nativeBuilder(Ljava/util/List;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/MediaAssetType;",
            ">;)",
            "Lio/bidmachine/AdPlacementConfig$Builder;"
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdPlacementConfig$Companion;->nativeBuilder(Ljava/util/List;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newBuilder$default(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/AdFormat;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 1
    iget-object p1, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdPlacementConfig;->newBuilder(Lio/bidmachine/AdFormat;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final rewardedBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Companion;->rewardedBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final rewardedBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 2

    .line 2
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/AdPlacementConfig$Companion;->rewardedBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/bidmachine/AdFormat;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lio/bidmachine/CustomParams;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    return-object v0
.end method

.method public final copy(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig;
    .registers 5

    .line 0
    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/AdPlacementConfig;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/AdPlacementConfig;-><init>(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/AdPlacementConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/AdPlacementConfig;

    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    iget-object v3, p1, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    iget-object p1, p1, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getAdFormat()Lio/bidmachine/AdFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    return-object v0
.end method

.method public final getCustomParams()Lio/bidmachine/CustomParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

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

    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    if-nez v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    return v0
.end method

.method public final newBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lio/bidmachine/AdPlacementConfig;->newBuilder$default(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/AdFormat;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilder(Lio/bidmachine/AdFormat;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 3

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;->withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    invoke-virtual {p1, v0}, Lio/bidmachine/AdPlacementConfig$Builder;->withCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlacementConfig(adFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->adFormat:Lio/bidmachine/AdFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig;->customParams:Lio/bidmachine/CustomParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.AdPlacementConfig.Builder (io.bidmachine.AdPlacementConfig$Builder)
.class public final Lio/bidmachine/AdPlacementConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdPlacementConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final adFormat:Lio/bidmachine/AdFormat;

.field private customParams:Lio/bidmachine/CustomParams;

.field private placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdFormat;)V
    .registers 3

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->adFormat:Lio/bidmachine/AdFormat;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdsFormat;)V
    .registers 3

    const-string v0, "adsFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/AdsFormat;->toAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p1

    const-string v0, "adsFormat.toAdFormat()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    return-void
.end method


# virtual methods
.method public final build()Lio/bidmachine/AdPlacementConfig;
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig;

    iget-object v1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->adFormat:Lio/bidmachine/AdFormat;

    iget-object v2, p0, Lio/bidmachine/AdPlacementConfig$Builder;->placementId:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/AdPlacementConfig$Builder;->customParams:Lio/bidmachine/CustomParams;

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/AdPlacementConfig;-><init>(Lio/bidmachine/AdFormat;Ljava/lang/String;Lio/bidmachine/CustomParams;)V

    return-object v0
.end method

.method public final withCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->customParams:Lio/bidmachine/CustomParams;

    return-object p0
.end method

.method public final withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdPlacementConfig$Builder;->placementId:Ljava/lang/String;

    return-object p0
.end method

###### Class io.bidmachine.AdPlacementConfig.Companion (io.bidmachine.AdPlacementConfig$Companion)
.class public final Lio/bidmachine/AdPlacementConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdPlacementConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdPlacementConfig$Companion;-><init>()V

    return-void
.end method

.method public static synthetic bannerBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Lio/bidmachine/BannerAdSize;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 1
    sget-object p1, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    .line 2
    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdPlacementConfig$Companion;->bannerBuilder(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic interstitialBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Lio/bidmachine/AdContentType;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 1
    sget-object p1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 2
    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdPlacementConfig$Companion;->interstitialBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic nativeBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_b

    .line 1
    sget-object p1, Lio/bidmachine/MediaAssetType;->DEFAULT:Ljava/util/List;

    const-string p2, "DEFAULT"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_b
    invoke-virtual {p0, p1}, Lio/bidmachine/AdPlacementConfig$Companion;->nativeBuilder(Ljava/util/List;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic rewardedBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Lio/bidmachine/AdContentType;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 1
    sget-object p1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 2
    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/AdPlacementConfig$Companion;->rewardedBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bannerBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lio/bidmachine/AdPlacementConfig$Companion;->bannerBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Lio/bidmachine/BannerAdSize;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bannerBuilder(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    const-string v0, "bannerAdSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    sget-object v1, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v1, p1}, Lio/bidmachine/AdFormat$Companion;->createBanner(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    return-object v0
.end method

.method public final interstitialBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lio/bidmachine/AdPlacementConfig$Companion;->interstitialBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Lio/bidmachine/AdContentType;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final interstitialBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    sget-object v1, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v1, p1}, Lio/bidmachine/AdFormat$Companion;->createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    return-object v0
.end method

.method public final nativeBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lio/bidmachine/AdPlacementConfig$Companion;->nativeBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final nativeBuilder(Ljava/util/List;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/MediaAssetType;",
            ">;)",
            "Lio/bidmachine/AdPlacementConfig$Builder;"
        }
    .end annotation

    const-string v0, "mediaAssetTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    sget-object v1, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v1, p1}, Lio/bidmachine/AdFormat$Companion;->createNative(Ljava/util/List;)Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    return-object v0
.end method

.method public final rewardedBuilder()Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lio/bidmachine/AdPlacementConfig$Companion;->rewardedBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Lio/bidmachine/AdContentType;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final rewardedBuilder(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdPlacementConfig$Builder;
    .registers 4

    const-string v0, "adContentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    sget-object v1, Lio/bidmachine/AdFormat;->Companion:Lio/bidmachine/AdFormat$Companion;

    invoke-virtual {v1, p1}, Lio/bidmachine/AdFormat$Companion;->createRewarded(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    return-object v0
.end method
