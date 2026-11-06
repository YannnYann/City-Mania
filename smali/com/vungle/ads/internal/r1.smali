###### Class com.vungle.ads.internal.r1 (com.vungle.ads.internal.r1)
.class public final Lcom/vungle/ads/internal/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/vungle/ads/internal/ServiceLocator;
    .registers 1

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/ServiceLocator;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/vungle/ads/internal/ServiceLocator;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    if-nez v0, :cond_22

    .line 3
    monitor-enter p0

    .line 4
    :try_start_c
    invoke-static {}, Lcom/vungle/ads/internal/ServiceLocator;->a()Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 5
    new-instance v0, Lcom/vungle/ads/internal/ServiceLocator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vungle/ads/internal/ServiceLocator;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-static {v0}, Lcom/vungle/ads/internal/ServiceLocator;->a(Lcom/vungle/ads/internal/ServiceLocator;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    goto :goto_1e

    :catchall_1c
    move-exception p1

    goto :goto_20

    .line 7
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v0

    :goto_20
    monitor-exit p0

    throw p1

    :cond_22
    return-object v0
.end method
