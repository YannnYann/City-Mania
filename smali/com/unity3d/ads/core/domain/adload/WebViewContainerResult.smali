###### Class com.unity3d.ads.core.domain.adload.WebViewContainerResult (com.unity3d.ads.core.domain.adload.WebViewContainerResult)
.class public abstract Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.super Ljava/lang/Object;
.source "WebViewContainerResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;,
        Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;,
        Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
.end method

###### Class com.unity3d.ads.core.domain.adload.WebViewContainerResult.FromPool (com.unity3d.ads.core.domain.adload.WebViewContainerResult$FromPool)
.class public final Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;
.super Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.source "WebViewContainerResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FromPool"
.end annotation


# instance fields
.field private final container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V
    .registers 3

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;
    .registers 3

    .line 0
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FromPool(container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FromPool;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.adload.WebViewContainerResult.FullyPreloaded (com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded)
.class public final Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
.super Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.source "WebViewContainerResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FullyPreloaded"
.end annotation


# instance fields
.field private final adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

.field private final bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

.field private final container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

.field private final loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V
    .registers 6

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 23
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 24
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    .line 25
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public final component2()Lcom/unity3d/ads/adplayer/AdPlayer;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final component3()Lcom/unity3d/ads/adplayer/WebViewBridge;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    return-object v0
.end method

.method public final component4()Lcom/unity3d/ads/adplayer/model/LoadEvent;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;
    .registers 6

    .line 0
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadEvent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/adplayer/model/LoadEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    iget-object v3, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final getBridge()Lcom/unity3d/ads/adplayer/WebViewBridge;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    return-object v0
.end method

.method public getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public final getLoadEvent()Lcom/unity3d/ads/adplayer/model/LoadEvent;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

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

    const-string v1, "FullyPreloaded(container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bridge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->bridge:Lcom/unity3d/ads/adplayer/WebViewBridge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$FullyPreloaded;->loadEvent:Lcom/unity3d/ads/adplayer/model/LoadEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.adload.WebViewContainerResult.OnDemand (com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand)
.class public final Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;
.super Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.source "WebViewContainerResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnDemand"
.end annotation


# instance fields
.field private final container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V
    .registers 3

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;
    .registers 3

    .line 0
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getContainer()Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDemand(container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adload/WebViewContainerResult$OnDemand;->container:Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
