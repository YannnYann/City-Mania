###### Class com.unity3d.ads.adplayer.model.OnAllowedPiiChangeEvent (com.unity3d.ads.adplayer.model.OnAllowedPiiChangeEvent)
.class public final Lcom/unity3d/ads/adplayer/model/OnAllowedPiiChangeEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "ADVIEWER"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnAllowedPiiChangeEvent;->category:Ljava/lang/String;

    .line 91
    const-string v0, "ON_ALLOWED_PII_CHANGE"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnAllowedPiiChangeEvent;->name:Ljava/lang/String;

    .line 92
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnAllowedPiiChangeEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnAllowedPiiChangeEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnAllowedPiiChangeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnAllowedPiiChangeEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
