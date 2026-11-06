###### Class com.vungle.ads.internal.downloader.k (com.vungle.ads.internal.downloader.k)
.class public final enum Lcom/vungle/ads/internal/downloader/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/vungle/ads/internal/downloader/k;

.field public static final enum c:Lcom/vungle/ads/internal/downloader/k;

.field public static final enum d:Lcom/vungle/ads/internal/downloader/k;

.field public static final synthetic e:[Lcom/vungle/ads/internal/downloader/k;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/k;

    const v1, -0x7fffffff

    const-string v2, "CRITICAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vungle/ads/internal/downloader/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vungle/ads/internal/downloader/k;->b:Lcom/vungle/ads/internal/downloader/k;

    .line 2
    new-instance v1, Lcom/vungle/ads/internal/downloader/k;

    const-string v2, "HIGHEST"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/vungle/ads/internal/downloader/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/vungle/ads/internal/downloader/k;->c:Lcom/vungle/ads/internal/downloader/k;

    .line 3
    new-instance v2, Lcom/vungle/ads/internal/downloader/k;

    const-string v3, "HIGH"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/vungle/ads/internal/downloader/k;-><init>(Ljava/lang/String;II)V

    .line 4
    new-instance v3, Lcom/vungle/ads/internal/downloader/k;

    const/4 v4, 0x3

    const v5, 0x7fffffff

    const-string v6, "LOWEST"

    invoke-direct {v3, v6, v4, v5}, Lcom/vungle/ads/internal/downloader/k;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/vungle/ads/internal/downloader/k;->d:Lcom/vungle/ads/internal/downloader/k;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lcom/vungle/ads/internal/downloader/k;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/vungle/ads/internal/downloader/k;->e:[Lcom/vungle/ads/internal/downloader/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/vungle/ads/internal/downloader/k;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/downloader/k;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/internal/downloader/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/downloader/k;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/downloader/k;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/downloader/k;->e:[Lcom/vungle/ads/internal/downloader/k;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/downloader/k;

    return-object v0
.end method
