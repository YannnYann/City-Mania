###### Class com.vungle.ads.internal.r2 (com.vungle.ads.internal.r2)
.class public final Lcom/vungle/ads/internal/r2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/u2;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/u2;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/r2;->a:Lcom/vungle/ads/internal/u2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/r2;->a:Lcom/vungle/ads/internal/u2;

    new-instance v1, Lcom/vungle/ads/SdkNotInitialized;

    const-string v2, "Network permissions not granted"

    invoke-direct {v1, v2}, Lcom/vungle/ads/SdkNotInitialized;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/u2;->a(Lcom/vungle/ads/VungleError;)V

    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
