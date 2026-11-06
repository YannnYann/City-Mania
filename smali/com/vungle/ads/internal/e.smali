###### Class com.vungle.ads.internal.e (com.vungle.ads.internal.e)
.class public final Lcom/vungle/ads/internal/e;
.super Lcom/vungle/ads/internal/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    const-string v0, "NEW"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/vungle/ads/internal/h;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/h;)Z
    .registers 3

    const-string v0, "adState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/h;->b:Lcom/vungle/ads/internal/d;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/vungle/ads/internal/h;->c:Lcom/vungle/ads/internal/g;

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
    const-string v0, "idle"

    return-object v0
.end method
