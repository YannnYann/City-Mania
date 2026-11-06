###### Class com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener (com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener)
.class public interface abstract Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onInitFailed(ILjava/lang/String;)V
.end method

.method public onInitFailed(ILjava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    return-void
.end method

.method public abstract onInitSuccess()V
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    return-void
.end method
