###### Class com.vungle.ads.internal.a (com.vungle.ads.internal.a)
.class public final Lcom/vungle/ads/internal/a;
.super Lcom/vungle/ads/internal/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    const-string v2, "ERROR"

    invoke-direct {p0, v2, v0, v1}, Lcom/vungle/ads/internal/h;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/h;)Z
    .registers 3

    const-string v0, "adState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/h;->f:Lcom/vungle/ads/internal/b;

    if-ne p1, v0, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "failed"

    return-object v0
.end method
