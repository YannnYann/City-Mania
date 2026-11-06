###### Class com.unity3d.ads.core.data.repository.DiagnosticEventRepository (com.unity3d.ads.core.data.repository.DiagnosticEventRepository)
.class public interface abstract Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;
.super Ljava/lang/Object;
.source "DiagnosticEventRepository.kt"


# virtual methods
.method public abstract addDiagnosticEvent(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;)V
.end method

.method public abstract clear()V
.end method

.method public abstract configure(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
.end method

.method public abstract flush()V
.end method

.method public abstract getDiagnosticEvents()Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
            ">;>;"
        }
    .end annotation
.end method
