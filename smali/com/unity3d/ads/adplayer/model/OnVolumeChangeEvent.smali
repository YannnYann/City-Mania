###### Class com.unity3d.ads.adplayer.model.OnVolumeChangeEvent (com.unity3d.ads.adplayer.model.OnVolumeChangeEvent)
.class public final Lcom/unity3d/ads/adplayer/model/OnVolumeChangeEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(D)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "ADVIEWER"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnVolumeChangeEvent;->category:Ljava/lang/String;

    .line 59
    const-string v0, "ON_VOLUME_CHANGE"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnVolumeChangeEvent;->name:Ljava/lang/String;

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnVolumeChangeEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnVolumeChangeEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnVolumeChangeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnVolumeChangeEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
