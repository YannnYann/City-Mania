###### Class com.unity3d.ads.adplayer.EmbeddableAdPlayer (com.unity3d.ads.adplayer.EmbeddableAdPlayer)
.class public interface abstract Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;
.super Ljava/lang/Object;
.source "EmbeddableAdPlayer.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/AdPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer$DefaultImpls;
    }
.end annotation

###### Class com.unity3d.ads.adplayer.EmbeddableAdPlayer.DefaultImpls (com.unity3d.ads.adplayer.EmbeddableAdPlayer$DefaultImpls)
.class public final Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer$DefaultImpls;
.super Ljava/lang/Object;
.source "EmbeddableAdPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static destroy(Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Lcom/unity3d/ads/adplayer/AdPlayer$DefaultImpls;->destroy(Lcom/unity3d/ads/adplayer/AdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_b

    return-object p0

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static show(Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;Lcom/unity3d/ads/adplayer/ShowOptions;)V
    .registers 3

    const-string v0, "showOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/unity3d/ads/adplayer/AdPlayer$DefaultImpls;->show(Lcom/unity3d/ads/adplayer/AdPlayer;Lcom/unity3d/ads/adplayer/ShowOptions;)V

    return-void
.end method
