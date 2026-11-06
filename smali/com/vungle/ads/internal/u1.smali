###### Class com.vungle.ads.internal.u1 (com.vungle.ads.internal.u1)
.class public final Lcom/vungle/ads/internal/u1;
.super Lcom/vungle/ads/internal/s1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/vungle/ads/internal/ServiceLocator;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ServiceLocator;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/u1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/util/PathProvider;

    iget-object v1, p0, Lcom/vungle/ads/internal/u1;->b:Lcom/vungle/ads/internal/ServiceLocator;

    .line 2
    iget-object v1, v1, Lcom/vungle/ads/internal/ServiceLocator;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/util/PathProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
