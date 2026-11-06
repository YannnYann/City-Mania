###### Class com.unity3d.ads.core.domain.events.AndroidHandleGatewayEventResponse (com.unity3d.ads.core.domain.events.AndroidHandleGatewayEventResponse)
.class public final Lcom/unity3d/ads/core/domain/events/AndroidHandleGatewayEventResponse;
.super Ljava/lang/Object;
.source "AndroidHandleGatewayEventResponse.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
