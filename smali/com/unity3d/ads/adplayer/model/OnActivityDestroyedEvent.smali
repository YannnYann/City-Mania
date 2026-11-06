###### Class com.unity3d.ads.adplayer.model.OnActivityDestroyedEvent (com.unity3d.ads.adplayer.model.OnActivityDestroyedEvent)
.class public final Lcom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ADVIEWER"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent;->category:Ljava/lang/String;

    .line 27
    const-string v0, "ON_ACTIVITY_DESTROY"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
