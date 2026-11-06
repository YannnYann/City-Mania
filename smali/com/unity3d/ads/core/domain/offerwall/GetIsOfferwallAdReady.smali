###### Class com.unity3d.ads.core.domain.offerwall.GetIsOfferwallAdReady (com.unity3d.ads.core.domain.offerwall.GetIsOfferwallAdReady)
.class public final Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;
.super Ljava/lang/Object;
.source "GetIsOfferwallAdReady.kt"


# instance fields
.field private final offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/manager/OfferwallManager;)V
    .registers 3

    const-string v0, "offerwallManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/GetIsOfferwallAdReady;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/ads/core/data/manager/OfferwallManager;->isAdReady(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
