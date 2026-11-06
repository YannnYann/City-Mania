###### Class com.unity3d.ads.core.data.model.exception.NetworkTimeoutException (com.unity3d.ads.core.data.model.exception.NetworkTimeoutException)
.class public final Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;
.super Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;
.source "NetworkTimeoutException.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 9

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 17

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_7

    .line 7
    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNKNOWN:Lcom/unity3d/ads/core/data/model/OperationType;

    goto :goto_8

    :cond_7
    move-object v0, p2

    :goto_8
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    move-object v1, v2

    goto :goto_10

    :cond_f
    move-object v1, p3

    :goto_10
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_16

    move-object v3, v2

    goto :goto_17

    :cond_16
    move-object v3, p4

    :goto_17
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_1d

    move-object v4, v2

    goto :goto_1e

    :cond_1d
    move-object v4, p5

    :goto_1e
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_24

    move-object v5, v2

    goto :goto_25

    :cond_24
    move-object v5, p6

    :goto_25
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_33

    move-object/from16 p9, v2

    :goto_2b
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v3

    move-object p7, v4

    move-object p8, v5

    goto :goto_36

    :cond_33
    move-object/from16 p9, p7

    goto :goto_2b

    .line 5
    :goto_36
    invoke-direct/range {p2 .. p9}, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
