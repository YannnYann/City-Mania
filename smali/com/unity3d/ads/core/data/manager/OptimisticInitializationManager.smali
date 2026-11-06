###### Class com.unity3d.ads.core.data.manager.OptimisticInitializationManager (com.unity3d.ads.core.data.manager.OptimisticInitializationManager)
.class public interface abstract Lcom/unity3d/ads/core/data/manager/OptimisticInitializationManager;
.super Ljava/lang/Object;
.source "OptimisticInitializationManager.kt"


# virtual methods
.method public abstract onInitializationFinished(Z)V
.end method

.method public abstract tryOptimisticCompletion(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
