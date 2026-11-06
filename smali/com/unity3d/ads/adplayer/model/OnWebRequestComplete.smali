###### Class com.unity3d.ads.adplayer.model.OnWebRequestComplete (com.unity3d.ads.adplayer.model.OnWebRequestComplete)
.class public final Lcom/unity3d/ads/adplayer/model/OnWebRequestComplete;
.super Ljava/lang/Object;
.source "WebViewEvent.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/model/WebViewEvent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnWebRequestComplete\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,124:1\n37#2:125\n36#2,3:126\n*S KotlinDebug\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnWebRequestComplete\n*L\n100#1:125\n100#1:126,3\n*E\n"
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "REQUEST"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnWebRequestComplete;->category:Ljava/lang/String;

    .line 99
    const-string v0, "COMPLETE"

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnWebRequestComplete;->name:Ljava/lang/String;

    .line 100
    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/model/OnWebRequestComplete;->parameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnWebRequestComplete;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnWebRequestComplete;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/model/OnWebRequestComplete;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
