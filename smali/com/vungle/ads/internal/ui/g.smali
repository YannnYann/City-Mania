###### Class com.vungle.ads.internal.ui.g (com.vungle.ads.internal.ui.g)
.class public final Lcom/vungle/ads/internal/ui/g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/g;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/omsdk/d;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
