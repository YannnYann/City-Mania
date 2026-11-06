###### Class com.vungle.ads.internal.g (com.vungle.ads.internal.g)
.class public final Lcom/vungle/ads/internal/g;
.super Lcom/vungle/ads/internal/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    const-string v2, "READY"

    invoke-direct {p0, v2, v0, v1}, Lcom/vungle/ads/internal/h;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/h;)Z
    .registers 3

    const-string v0, "adState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/h;->d:Lcom/vungle/ads/internal/f;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/vungle/ads/internal/h;->f:Lcom/vungle/ads/internal/b;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/vungle/ads/internal/h;->g:Lcom/vungle/ads/internal/a;

    if-ne p1, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "ready"

    return-object v0
.end method
