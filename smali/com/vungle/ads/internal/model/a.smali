###### Class com.vungle.ads.internal.model.a (com.vungle.ads.internal.model.a)
.class public final enum Lcom/vungle/ads/internal/model/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/vungle/ads/internal/model/a;

.field public static final enum b:Lcom/vungle/ads/internal/model/a;

.field public static final enum c:Lcom/vungle/ads/internal/model/a;

.field public static final synthetic d:[Lcom/vungle/ads/internal/model/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/a;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/ads/internal/model/a;->a:Lcom/vungle/ads/internal/model/a;

    .line 2
    new-instance v1, Lcom/vungle/ads/internal/model/a;

    const-string v2, "DOWNLOAD_RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vungle/ads/internal/model/a;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v2, Lcom/vungle/ads/internal/model/a;

    const-string v3, "DOWNLOAD_FAILED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/vungle/ads/internal/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vungle/ads/internal/model/a;->b:Lcom/vungle/ads/internal/model/a;

    .line 4
    new-instance v3, Lcom/vungle/ads/internal/model/a;

    const-string v4, "DOWNLOAD_SUCCESS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/vungle/ads/internal/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vungle/ads/internal/model/a;->c:Lcom/vungle/ads/internal/model/a;

    .line 5
    new-instance v4, Lcom/vungle/ads/internal/model/a;

    const-string v5, "PROCESSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/vungle/ads/internal/model/a;-><init>(Ljava/lang/String;I)V

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/vungle/ads/internal/model/a;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/vungle/ads/internal/model/a;->d:[Lcom/vungle/ads/internal/model/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/model/a;
    .registers 2

    .line 0
    const-class v0, Lcom/vungle/ads/internal/model/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/model/a;

    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/model/a;
    .registers 1

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/model/a;->d:[Lcom/vungle/ads/internal/model/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/ads/internal/model/a;

    return-object v0
.end method
