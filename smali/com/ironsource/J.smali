###### Class com.ironsource.J (com.ironsource.J)
.class public interface abstract Lcom/ironsource/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# virtual methods
.method public a(Lcom/ironsource/I2;)V
    .registers 3

    .line 1
    const-string v0, "bannerAdInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/cc;)V
    .registers 3

    .line 3
    const-string v0, "nativeAdInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/m6;)V
    .registers 3

    .line 2
    const-string v0, "fullscreenAdInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
