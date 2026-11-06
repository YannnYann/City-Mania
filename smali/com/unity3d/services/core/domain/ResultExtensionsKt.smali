###### Class com.unity3d.services.core.domain.ResultExtensionsKt (com.unity3d.services.core.domain.ResultExtensionsKt)
.class public final Lcom/unity3d/services/core/domain/ResultExtensionsKt;
.super Ljava/lang/Object;
.source "ResultExtensions.kt"


# direct methods
.method public static final synthetic getCustomExceptionOrNull(Ljava/lang/Object;)Ljava/lang/Exception;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 7
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const/4 v0, 0x3

    .line 8
    const-string v1, "E"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 9
    check-cast p0, Ljava/lang/Exception;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic getCustomExceptionOrThrow(Ljava/lang/Object;)Ljava/lang/Exception;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const/4 v0, 0x3

    .line 17
    const-string v1, "E"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 18
    check-cast p0, Ljava/lang/Exception;

    return-object p0

    .line 20
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Exception type found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getInitializationExceptionOrNull(Ljava/lang/Object;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;
    .registers 2

    .line 25
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    .line 26
    instance-of v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    if-eqz v0, :cond_b

    .line 27
    check-cast p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getInitializationExceptionOrThrow(Ljava/lang/Object;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;
    .registers 2

    .line 34
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    .line 35
    instance-of v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    if-eqz v0, :cond_b

    .line 36
    check-cast p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    return-object p0

    .line 38
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Exception type found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
