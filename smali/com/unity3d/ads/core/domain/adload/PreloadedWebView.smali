###### Class com.unity3d.ads.core.domain.adload.PreloadedWebView (com.unity3d.ads.core.domain.adload.PreloadedWebView)
.class public final Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;
.super Ljava/lang/Object;
.source "PreloadedWebView.kt"


# instance fields
.field private final adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

.field private final bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

.field private final loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V
    .registers 5

    const-string v0, "adPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 12
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 13
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->copy(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/adplayer/AdPlayer;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final component2()Lcom/unity3d/ads/adplayer/WebViewBridge;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    return-object v0
.end method

.method public final component3()Lcom/unity3d/ads/adplayer/model/LoadEvent;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;
    .registers 5

    .line 0
    const-string v0, "adPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;-><init>(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final getBridge()Lcom/unity3d/ads/adplayer/WebViewBridge;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    return-object v0
.end method

.method public final getLoadEvent()Lcom/unity3d/ads/adplayer/model/LoadEvent;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

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

    const-string v1, "PreloadedWebView(adPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bridge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/PreloadedWebView;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
