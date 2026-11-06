###### Class com.vungle.ads.internal.v1 (com.vungle.ads.internal.v1)
.class public final Lcom/vungle/ads/internal/v1;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/ServiceLocator;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/v1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/s1;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/v1;->b()Lcom/vungle/ads/internal/downloader/i;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/vungle/ads/internal/downloader/i;
    .registers 5

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/i;

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/v1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 3
    const-class v2, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/vungle/ads/internal/executor/a;

    check-cast v1, Lcom/vungle/ads/internal/executor/d;

    .line 5
    iget-object v1, v1, Lcom/vungle/ads/internal/executor/d;->f:Lcom/vungle/ads/internal/executor/j;

    .line 6
    iget-object v2, p0, Lcom/vungle/ads/internal/v1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 7
    const-class v3, Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/vungle/ads/internal/util/PathProvider;

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/i;-><init>(Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/util/PathProvider;)V

    return-object v0
.end method
