###### Class com.ironsource.InterfaceC3943y6 (com.ironsource.y6)
.class public interface abstract Lcom/ironsource/y6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end method

.method public abstract b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
.end method

.method public abstract c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    .line 0
    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
