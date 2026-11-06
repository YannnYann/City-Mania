###### Class com.unity3d.ads.core.domain.GetHeaderBiddingToken (com.unity3d.ads.core.domain.GetHeaderBiddingToken)
.class public interface abstract Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;
.super Ljava/lang/Object;
.source "GetHeaderBiddingToken.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract invoke(ILcom/unity3d/ads/TokenConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/unity3d/ads/TokenConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

###### Class com.unity3d.ads.core.domain.GetHeaderBiddingToken.DefaultImpls (com.unity3d.ads.core.domain.GetHeaderBiddingToken$DefaultImpls)
.class public final Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken$DefaultImpls;
.super Ljava/lang/Object;
.source "GetHeaderBiddingToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;ILcom/unity3d/ads/TokenConfiguration;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_7

    const/4 p2, 0x0

    .line 6
    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;->invoke(ILcom/unity3d/ads/TokenConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
