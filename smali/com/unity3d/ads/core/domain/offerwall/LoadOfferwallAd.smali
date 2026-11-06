###### Class com.unity3d.ads.core.domain.offerwall.LoadOfferwallAd (com.unity3d.ads.core.domain.offerwall.LoadOfferwallAd)
.class public final Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;
.super Ljava/lang/Object;
.source "LoadOfferwallAd.kt"


# instance fields
.field private final offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/manager/OfferwallManager;)V
    .registers 3

    const-string v0, "offerwallManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/offerwall/LoadOfferwallAd;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/ads/core/data/manager/OfferwallManager;->loadAd(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
