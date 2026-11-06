###### Class com.unity3d.ads.adplayer.model.OnBroadcastEvent (com.unity3d.ads.adplayer.model.OnBroadcastEvent)
.class public final Lcom/unity3d/ads/adplayer/model/OnBroadcastEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnBroadcastEvent;->name:Ljava/lang/String;

    .line 83
    const-string p1, "ADVIEWER"

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnBroadcastEvent;->category:Ljava/lang/String;

    .line 84
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnBroadcastEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnBroadcastEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnBroadcastEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnBroadcastEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
