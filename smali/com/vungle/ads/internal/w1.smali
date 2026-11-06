###### Class com.vungle.ads.internal.w1 (com.vungle.ads.internal.w1)
.class public final Lcom/vungle/ads/internal/w1;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/ServiceLocator;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/w1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/u;

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/w1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v2, Lcom/vungle/ads/internal/executor/a;

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/ServiceLocator;->a(Lcom/vungle/ads/internal/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/executor/a;

    .line 3
    iget-object v2, p0, Lcom/vungle/ads/internal/w1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v3, Lcom/vungle/ads/internal/util/PathProvider;

    invoke-static {v2, v3}, Lcom/vungle/ads/internal/ServiceLocator;->a(Lcom/vungle/ads/internal/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/util/PathProvider;

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/u;-><init>(Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/util/PathProvider;)V

    return-object v0
.end method
