###### Class com.unity3d.ads.core.domain.HandleOpenUrl (com.unity3d.ads.core.domain.HandleOpenUrl)
.class public interface abstract Lcom/unity3d/ads/core/domain/HandleOpenUrl;
.super Ljava/lang/Object;
.source "HandleOpenUrl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleOpenUrl$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

###### Class com.unity3d.ads.core.domain.HandleOpenUrl.DefaultImpls (com.unity3d.ads.core.domain.HandleOpenUrl$DefaultImpls)
.class public final Lcom/unity3d/ads/core/domain/HandleOpenUrl$DefaultImpls;
.super Ljava/lang/Object;
.source "HandleOpenUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/HandleOpenUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 18

    if-nez p9, :cond_1f

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_8

    .line 11
    const-string p4, "android.intent.action.VIEW"

    :cond_8
    move-object v4, p4

    and-int/lit8 p4, p8, 0x10

    if-eqz p4, :cond_e

    const/4 p5, 0x0

    :cond_e
    move-object v5, p5

    and-int/lit8 p4, p8, 0x20

    if-eqz p4, :cond_14

    const/4 p6, 0x0

    :cond_14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    move-object v7, p7

    .line 7
    invoke-interface/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/HandleOpenUrl;->invoke(Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
