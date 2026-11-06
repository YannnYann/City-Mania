###### Class com.vungle.ads.internal.z1 (com.vungle.ads.internal.z1)
.class public final Lcom/vungle/ads/internal/z1;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/ServiceLocator;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/z1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 8

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/network/r;

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/z1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v2, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 3
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/z1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 6
    const-class v3, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/vungle/ads/internal/executor/a;

    check-cast v2, Lcom/vungle/ads/internal/executor/d;

    .line 8
    iget-object v2, v2, Lcom/vungle/ads/internal/executor/d;->a:Lcom/vungle/ads/internal/executor/j;

    .line 9
    iget-object v4, p0, Lcom/vungle/ads/internal/z1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 10
    invoke-virtual {v4, v3}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lcom/vungle/ads/internal/executor/a;

    check-cast v3, Lcom/vungle/ads/internal/executor/d;

    .line 12
    iget-object v3, v3, Lcom/vungle/ads/internal/executor/d;->c:Lcom/vungle/ads/internal/executor/j;

    .line 13
    iget-object v4, p0, Lcom/vungle/ads/internal/z1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v5, Lcom/vungle/ads/internal/util/PathProvider;

    .line 14
    invoke-virtual {v4, v5}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 15
    check-cast v4, Lcom/vungle/ads/internal/util/PathProvider;

    .line 16
    iget-object v5, p0, Lcom/vungle/ads/internal/z1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v6, Lcom/vungle/ads/internal/signals/j;

    .line 17
    invoke-virtual {v5, v6}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    check-cast v5, Lcom/vungle/ads/internal/signals/j;

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/network/r;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/signals/j;)V

    return-object v0
.end method
