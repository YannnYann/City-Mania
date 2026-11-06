###### Class com.vungle.ads.internal.h2 (com.vungle.ads.internal.h2)
.class public final Lcom/vungle/ads/internal/h2;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/ServiceLocator;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/h2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/persistence/FilePreferences;->d:Lcom/vungle/ads/internal/persistence/a;

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/h2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v2, Lcom/vungle/ads/internal/executor/a;

    .line 3
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/vungle/ads/internal/executor/a;

    check-cast v1, Lcom/vungle/ads/internal/executor/d;

    .line 5
    iget-object v1, v1, Lcom/vungle/ads/internal/executor/d;->a:Lcom/vungle/ads/internal/executor/j;

    .line 6
    iget-object v2, p0, Lcom/vungle/ads/internal/h2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v3, Lcom/vungle/ads/internal/util/PathProvider;

    .line 7
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/vungle/ads/internal/util/PathProvider;

    .line 9
    const-string v3, "settings_vungle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/ads/internal/persistence/a;->a(Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/util/PathProvider;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v0

    return-object v0
.end method
