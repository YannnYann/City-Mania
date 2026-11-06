###### Class com.ironsource.InterfaceC3953yg (com.ironsource.yg)
.class public interface abstract Lcom/ironsource/yg;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ironsource/ve;
        }
    .end annotation
.end method

.method public a(ZLkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazyError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    return-void

    .line 1
    :cond_8
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 2
    new-instance p2, Lcom/ironsource/ve;

    invoke-direct {p2, p1}, Lcom/ironsource/ve;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    throw p2
.end method
