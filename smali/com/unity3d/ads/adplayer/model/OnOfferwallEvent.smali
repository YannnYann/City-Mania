###### Class com.unity3d.ads.adplayer.model.OnOfferwallEvent (com.unity3d.ads.adplayer.model.OnOfferwallEvent)
.class public final Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/offerwall/OfferwallEvent;)V
    .registers 3

    const-string v0, "offerwallEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "OFFERWALL"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->category:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnOfferwallEvent;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
