###### Class com.vungle.ads.internal.p0 (com.vungle.ads.internal.p0)
.class public final enum Lcom/vungle/ads/internal/p0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/vungle/ads/internal/p0;

.field public static final enum b:Lcom/vungle/ads/internal/p0;

.field public static final enum c:Lcom/vungle/ads/internal/p0;

.field public static final synthetic d:[Lcom/vungle/ads/internal/p0;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/p0;

    const-string v1, "INIT_CACHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/p0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/p0;->a:Lcom/vungle/ads/internal/p0;

    new-instance v1, Lcom/vungle/ads/internal/p0;

    const-string v2, "INIT_FRESH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vungle/ads/internal/p0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vungle/ads/internal/p0;->b:Lcom/vungle/ads/internal/p0;

    new-instance v2, Lcom/vungle/ads/internal/p0;

    const-string v3, "AD_RESPONSE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/vungle/ads/internal/p0;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vungle/ads/internal/p0;->c:Lcom/vungle/ads/internal/p0;

    .line 2
    filled-new-array {v0, v1, v2}, [Lcom/vungle/ads/internal/p0;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/vungle/ads/internal/p0;->d:[Lcom/vungle/ads/internal/p0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/p0;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/internal/p0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/p0;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/p0;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/p0;->d:[Lcom/vungle/ads/internal/p0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/p0;

    return-object v0
.end method
