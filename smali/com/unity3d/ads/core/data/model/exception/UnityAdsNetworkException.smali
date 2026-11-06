###### Class com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException (com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException)
.class public Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;
.super Ljava/lang/Exception;
.source "UnityAdsNetworkException.kt"


# instance fields
.field private final client:Ljava/lang/String;

.field private final code:Ljava/lang/Integer;

.field private final cronetCode:Ljava/lang/Integer;

.field private final message:Ljava/lang/String;

.field private final protocol:Ljava/lang/String;

.field private final type:Lcom/unity3d/ads/core/data/model/OperationType;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 9

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->message:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->type:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 8
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->code:Ljava/lang/Integer;

    .line 9
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->url:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->protocol:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->cronetCode:Ljava/lang/Integer;

    .line 12
    iput-object p7, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->client:Ljava/lang/String;

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
    invoke-direct/range {p2 .. p9}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getClient()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->client:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()Ljava/lang/Integer;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCronetCode()Ljava/lang/Integer;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->cronetCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/unity3d/ads/core/data/model/OperationType;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->type:Lcom/unity3d/ads/core/data/model/OperationType;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->url:Ljava/lang/String;

    return-object v0
.end method
