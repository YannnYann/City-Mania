###### Class com.vungle.ads.internal.downloader.h (com.vungle.ads.internal.downloader.h)
.class public final Lcom/vungle/ads/internal/downloader/h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/downloader/i;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/downloader/i;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/h;->a:Lcom/vungle/ads/internal/downloader/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/downloader/f;->a:Lcom/vungle/ads/internal/downloader/f;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/h;->a:Lcom/vungle/ads/internal/downloader/i;

    .line 2
    iget-object v1, v1, Lcom/vungle/ads/internal/downloader/i;->b:Lcom/vungle/ads/internal/util/PathProvider;

    .line 3
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/f;->a(Lcom/vungle/ads/internal/util/PathProvider;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
