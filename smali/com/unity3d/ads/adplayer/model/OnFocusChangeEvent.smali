###### Class com.unity3d.ads.adplayer.model.OnFocusChangeEvent (com.unity3d.ads.adplayer.model.OnFocusChangeEvent)
.class public final Lcom/unity3d/ads/adplayer/model/OnFocusChangeEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "ADVIEWER"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnFocusChangeEvent;->category:Ljava/lang/String;

    .line 21
    const-string v0, "ON_FOCUS_CHANGE"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnFocusChangeEvent;->name:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnFocusChangeEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnFocusChangeEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnFocusChangeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnFocusChangeEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
