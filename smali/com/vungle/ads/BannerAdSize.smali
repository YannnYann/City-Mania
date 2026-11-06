###### Class com.vungle.ads.BannerAdSize (com.vungle.ads.BannerAdSize)
.class public final enum Lcom/vungle/ads/BannerAdSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/BannerAdSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANNER:Lcom/vungle/ads/BannerAdSize;

.field public static final enum BANNER_LEADERBOARD:Lcom/vungle/ads/BannerAdSize;

.field public static final enum BANNER_SHORT:Lcom/vungle/ads/BannerAdSize;

.field public static final enum VUNGLE_MREC:Lcom/vungle/ads/BannerAdSize;

.field public static final synthetic d:[Lcom/vungle/ads/BannerAdSize;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/vungle/ads/BannerAdSize;

    const/16 v4, 0x12c

    const/16 v5, 0xfa

    const-string v1, "VUNGLE_MREC"

    const/4 v2, 0x0

    const-string v3, "mrec"

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/vungle/ads/BannerAdSize;->VUNGLE_MREC:Lcom/vungle/ads/BannerAdSize;

    .line 2
    new-instance v1, Lcom/vungle/ads/BannerAdSize;

    const/16 v5, 0x140

    const/16 v6, 0x32

    const-string v2, "BANNER"

    const/4 v3, 0x1

    const-string v4, "banner"

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v1, Lcom/vungle/ads/BannerAdSize;->BANNER:Lcom/vungle/ads/BannerAdSize;

    .line 3
    new-instance v2, Lcom/vungle/ads/BannerAdSize;

    const/16 v6, 0x12c

    const/16 v7, 0x32

    const-string v3, "BANNER_SHORT"

    const/4 v4, 0x2

    const-string v5, "banner_short"

    invoke-direct/range {v2 .. v7}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v2, Lcom/vungle/ads/BannerAdSize;->BANNER_SHORT:Lcom/vungle/ads/BannerAdSize;

    .line 4
    new-instance v3, Lcom/vungle/ads/BannerAdSize;

    const/16 v7, 0x2d8

    const/16 v8, 0x5a

    const-string v4, "BANNER_LEADERBOARD"

    const/4 v5, 0x3

    const-string v6, "banner_leaderboard"

    invoke-direct/range {v3 .. v8}, Lcom/vungle/ads/BannerAdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/vungle/ads/BannerAdSize;->BANNER_LEADERBOARD:Lcom/vungle/ads/BannerAdSize;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lcom/vungle/ads/BannerAdSize;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/vungle/ads/BannerAdSize;->d:[Lcom/vungle/ads/BannerAdSize;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/vungle/ads/BannerAdSize;->a:Ljava/lang/String;

    iput p4, p0, Lcom/vungle/ads/BannerAdSize;->b:I

    iput p5, p0, Lcom/vungle/ads/BannerAdSize;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/BannerAdSize;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/BannerAdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/BannerAdSize;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/BannerAdSize;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/BannerAdSize;->d:[Lcom/vungle/ads/BannerAdSize;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/BannerAdSize;

    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/BannerAdSize;->c:I

    return v0
.end method

.method public final getSizeName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerAdSize;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/BannerAdSize;->b:I

    return v0
.end method
