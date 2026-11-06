###### Class com.vungle.ads.internal.d2 (com.vungle.ads.internal.d2)
.class public final Lcom/vungle/ads/internal/d2;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/ServiceLocator;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/d2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/d2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    const-class v1, Lcom/vungle/ads/internal/executor/a;

    .line 2
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/vungle/ads/internal/executor/a;

    .line 6
    new-instance v1, Lcom/vungle/ads/internal/platform/c;

    .line 7
    iget-object v2, p0, Lcom/vungle/ads/internal/d2;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 8
    iget-object v2, v2, Lcom/vungle/ads/internal/ServiceLocator;->a:Landroid/content/Context;

    .line 9
    check-cast v0, Lcom/vungle/ads/internal/executor/d;

    .line 10
    iget-object v0, v0, Lcom/vungle/ads/internal/executor/d;->e:Lcom/vungle/ads/internal/executor/j;

    .line 11
    invoke-direct {v1, v2, v0}, Lcom/vungle/ads/internal/platform/c;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/executor/j;)V

    return-object v1
.end method
