###### Class com.unity3d.ads.core.extensions.ErrorExtensionsKt (com.unity3d.ads.core.extensions.ErrorExtensionsKt)
.class public final Lcom/unity3d/ads/core/extensions/ErrorExtensionsKt;
.super Ljava/lang/Object;
.source "ErrorExtensions.kt"


# direct methods
.method public static final getErrorTokenOrNull(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lcom/google/protobuf/ByteString;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final getErrorTokenOrNull(Ljava/lang/Throwable;)Lcom/google/protobuf/ByteString;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p0, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    check-cast p0, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    goto :goto_e

    :cond_d
    move-object p0, v1

    :goto_e
    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_15
    return-object v1
.end method
