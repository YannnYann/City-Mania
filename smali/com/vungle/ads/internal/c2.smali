###### Class com.vungle.ads.internal.c2 (com.vungle.ads.internal.c2)
.class public final Lcom/vungle/ads/internal/c2;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/ServiceLocator;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/c2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 6

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/c2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 3
    iget-object v2, v1, Lcom/vungle/ads/internal/ServiceLocator;->a:Landroid/content/Context;

    .line 4
    const-class v3, Lcom/vungle/ads/internal/platform/f;

    invoke-static {v1, v3}, Lcom/vungle/ads/internal/ServiceLocator;->a(Lcom/vungle/ads/internal/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/platform/f;

    .line 5
    iget-object v3, p0, Lcom/vungle/ads/internal/c2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v4, Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-static {v3, v4}, Lcom/vungle/ads/internal/ServiceLocator;->a(Lcom/vungle/ads/internal/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 6
    invoke-direct {v0, v2, v1, v3}, Lcom/vungle/ads/internal/network/VungleApiClient;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/platform/f;Lcom/vungle/ads/internal/persistence/FilePreferences;)V

    return-object v0
.end method
