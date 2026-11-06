###### Class com.unity3d.ads.adplayer.WebViewAdPlayerKt (com.unity3d.ads.adplayer.WebViewAdPlayerKt)
.class public final Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;
.super Ljava/lang/Object;
.source "WebViewAdPlayer.kt"


# static fields
.field private static final LOAD_EVENTS:[Ljava/lang/String;

.field private static final SHOW_EVENTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 58
    const-string v5, "com.unity3d.services.ads.api.AdViewer.cancelShowTimeout"

    .line 59
    const-string v6, "com.unity3d.services.ads.api.AdViewer.leftApplication"

    const-string v0, "com.unity3d.services.ads.api.AdViewer.started"

    const-string v1, "com.unity3d.services.ads.api.AdViewer.clicked"

    const-string v2, "com.unity3d.services.ads.api.AdViewer.receivedReward"

    const-string v3, "com.unity3d.services.ads.api.AdViewer.completed"

    const-string v4, "com.unity3d.services.ads.api.AdViewer.failed"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->SHOW_EVENTS:[Ljava/lang/String;

    .line 63
    const-string v0, "com.unity3d.services.ads.api.AdViewer.loadComplete"

    .line 64
    const-string v1, "com.unity3d.services.ads.api.AdViewer.loadError"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->LOAD_EVENTS:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLOAD_EVENTS$p()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->LOAD_EVENTS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSHOW_EVENTS$p()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayerKt;->SHOW_EVENTS:[Ljava/lang/String;

    return-object v0
.end method
