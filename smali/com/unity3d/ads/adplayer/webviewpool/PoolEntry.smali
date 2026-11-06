###### Class com.unity3d.ads.adplayer.webviewpool.PoolEntry (com.unity3d.ads.adplayer.webviewpool.PoolEntry)
.class public final Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;
.super Ljava/lang/Object;
.source "PoolEntry.kt"


# instance fields
.field private final client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;)V
    .registers 4

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    .line 8
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;ILjava/lang/Object;)Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->copy(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;)Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/webkit/WebView;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final component2()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    return-object v0
.end method

.method public final copy(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;)Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;
    .registers 4

    .line 0
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;-><init>(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    iget-object v3, p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    iget-object p1, p1, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoolEntry(webView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;->client:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
