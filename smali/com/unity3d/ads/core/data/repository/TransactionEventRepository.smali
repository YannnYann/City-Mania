###### Class com.unity3d.ads.core.data.repository.TransactionEventRepository (com.unity3d.ads.core.data.repository.TransactionEventRepository)
.class public interface abstract Lcom/unity3d/ads/core/data/repository/TransactionEventRepository;
.super Ljava/lang/Object;
.source "TransactionEventRepository.kt"


# virtual methods
.method public abstract addTransactionEvent(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;)V
.end method

.method public abstract getTransactionEvents()Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionEventRequest;",
            ">;"
        }
    .end annotation
.end method
