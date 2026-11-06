###### Class com.unity3d.services.core.network.model.HttpResponseKt (com.unity3d.services.core.network.model.HttpResponseKt)
.class public final Lcom/unity3d/services/core/network/model/HttpResponseKt;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# direct methods
.method public static final isSuccessful(Lcom/unity3d/services/core/network/model/HttpResponse;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/unity3d/services/core/network/model/HttpResponse;->getStatusCode()I

    move-result p0

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gt v0, p0, :cond_14

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public static final toHttpResponse(Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;)Lcom/unity3d/services/core/network/model/HttpResponse;
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v1, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 22
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_11
    move v3, v0

    goto :goto_16

    :cond_13
    const/16 v0, 0x208

    goto :goto_11

    .line 23
    :goto_16
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 24
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_24

    move-object v5, v2

    goto :goto_25

    :cond_24
    move-object v5, v0

    .line 25
    :goto_25
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2d

    move-object v6, v2

    goto :goto_2e

    :cond_2d
    move-object v6, v0

    .line 26
    :goto_2e
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getClient()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_36

    const-string p0, "unknown"

    :cond_36
    move-object v7, p0

    const/16 v10, 0x40

    const/4 v11, 0x0

    .line 20
    const-string v2, ""

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/unity3d/services/core/network/model/HttpResponse;-><init>(Ljava/lang/Object;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
