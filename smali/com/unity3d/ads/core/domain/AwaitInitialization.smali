###### Class com.unity3d.ads.core.domain.AwaitInitialization (com.unity3d.ads.core.domain.AwaitInitialization)
.class public interface abstract Lcom/unity3d/ads/core/domain/AwaitInitialization;
.super Ljava/lang/Object;
.source "AwaitInitialization.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/AwaitInitialization$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract invoke(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/data/model/InitializationState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

###### Class com.unity3d.ads.core.domain.AwaitInitialization.DefaultImpls (com.unity3d.ads.core.domain.AwaitInitialization$DefaultImpls)
.class public final Lcom/unity3d/ads/core/domain/AwaitInitialization$DefaultImpls;
.super Ljava/lang/Object;
.source "AwaitInitialization.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/AwaitInitialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/AwaitInitialization;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p5, :cond_10

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_b

    const-wide p1, 0x7fffffffffffffffL

    .line 6
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AwaitInitialization;->invoke(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
