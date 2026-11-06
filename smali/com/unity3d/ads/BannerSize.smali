###### Class com.unity3d.ads.BannerSize (com.unity3d.ads.BannerSize)
.class public final Lcom/unity3d/ads/BannerSize;
.super Ljava/lang/Object;
.source "BannerSize.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/BannerSize$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/BannerSize$Companion;

.field private static final iabStandard:Lcom/unity3d/ads/BannerSize;

.field private static final leaderboard:Lcom/unity3d/ads/BannerSize;

.field private static final standard:Lcom/unity3d/ads/BannerSize;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/unity3d/ads/BannerSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/BannerSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/BannerSize;->Companion:Lcom/unity3d/ads/BannerSize$Companion;

    .line 12
    new-instance v0, Lcom/unity3d/ads/BannerSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/BannerSize;-><init>(II)V

    sput-object v0, Lcom/unity3d/ads/BannerSize;->leaderboard:Lcom/unity3d/ads/BannerSize;

    .line 15
    new-instance v0, Lcom/unity3d/ads/BannerSize;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/BannerSize;-><init>(II)V

    sput-object v0, Lcom/unity3d/ads/BannerSize;->iabStandard:Lcom/unity3d/ads/BannerSize;

    .line 18
    new-instance v0, Lcom/unity3d/ads/BannerSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/BannerSize;-><init>(II)V

    sput-object v0, Lcom/unity3d/ads/BannerSize;->standard:Lcom/unity3d/ads/BannerSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unity3d/ads/BannerSize;->width:I

    iput p2, p0, Lcom/unity3d/ads/BannerSize;->height:I

    return-void
.end method

.method public static final synthetic access$getIabStandard$cp()Lcom/unity3d/ads/BannerSize;
    .registers 1

    .line 9
    sget-object v0, Lcom/unity3d/ads/BannerSize;->iabStandard:Lcom/unity3d/ads/BannerSize;

    return-object v0
.end method

.method public static final synthetic access$getLeaderboard$cp()Lcom/unity3d/ads/BannerSize;
    .registers 1

    .line 9
    sget-object v0, Lcom/unity3d/ads/BannerSize;->leaderboard:Lcom/unity3d/ads/BannerSize;

    return-object v0
.end method

.method public static final synthetic access$getStandard$cp()Lcom/unity3d/ads/BannerSize;
    .registers 1

    .line 9
    sget-object v0, Lcom/unity3d/ads/BannerSize;->standard:Lcom/unity3d/ads/BannerSize;

    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/unity3d/ads/BannerSize;->height:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/unity3d/ads/BannerSize;->width:I

    return v0
.end method

###### Class com.unity3d.ads.BannerSize.Companion (com.unity3d.ads.BannerSize$Companion)
.class public final Lcom/unity3d/ads/BannerSize$Companion;
.super Ljava/lang/Object;
.source "BannerSize.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/BannerSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/BannerSize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIabStandard()Lcom/unity3d/ads/BannerSize;
    .registers 2

    .line 15
    invoke-static {}, Lcom/unity3d/ads/BannerSize;->access$getIabStandard$cp()Lcom/unity3d/ads/BannerSize;

    move-result-object v0

    return-object v0
.end method

.method public final getLeaderboard()Lcom/unity3d/ads/BannerSize;
    .registers 2

    .line 12
    invoke-static {}, Lcom/unity3d/ads/BannerSize;->access$getLeaderboard$cp()Lcom/unity3d/ads/BannerSize;

    move-result-object v0

    return-object v0
.end method

.method public final getStandard()Lcom/unity3d/ads/BannerSize;
    .registers 2

    .line 18
    invoke-static {}, Lcom/unity3d/ads/BannerSize;->access$getStandard$cp()Lcom/unity3d/ads/BannerSize;

    move-result-object v0

    return-object v0
.end method
