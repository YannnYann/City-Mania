###### Class com.vungle.ads.internal.network.y (com.vungle.ads.internal.network.y)
.class public final Lcom/vungle/ads/internal/network/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/network/a;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/v;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/x;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/network/y;->a:Lcom/vungle/ads/internal/v;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/network/o;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/internal/network/y;->a:Lcom/vungle/ads/internal/v;

    invoke-interface {p1}, Lcom/vungle/ads/internal/v;->onSuccess()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/internal/network/y;->a:Lcom/vungle/ads/internal/v;

    invoke-interface {p1}, Lcom/vungle/ads/internal/v;->a()V

    return-void
.end method
