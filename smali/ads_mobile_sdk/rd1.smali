###### Class ads_mobile_sdk.rd1 (ads_mobile_sdk.rd1)
.class public final Lads_mobile_sdk/rd1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/hf;

.field public final b:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hf;Lads_mobile_sdk/ur3;)V
    .registers 4

    .line 1
    const-string v0, "adapterInitializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/rd1;->a:Lads_mobile_sdk/hf;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/rd1;->b:Lads_mobile_sdk/ur3;

    const/4 p1, 0x0

    .line 24
    invoke-static {p1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;)Lcom/google/gson/JsonObject;
    .registers 7

    .line 2
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 3
    const-string v1, "adapterClassName"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string p0, ""

    if-eqz p2, :cond_12

    iget-object v1, p2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;->adapterVersion:Ljava/lang/String;

    if-nez v1, :cond_13

    :cond_12
    move-object v1, p0

    :cond_13
    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_20

    .line 5
    iget-object v1, p2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;->sdkVersion:Ljava/lang/String;

    if-nez v1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object p0, v1

    :cond_20
    :goto_20
    const-string v1, "sdkVersion"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object p0

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v1, :cond_31

    move p0, v3

    goto :goto_32

    :cond_31
    move p0, v2

    .line 11
    :goto_32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 12
    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object p0

    const-string v1, "description"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getLatency()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "initializationLatencyMillis"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p2, :cond_54

    move v2, v3

    .line 22
    :cond_54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "supportsInitialization"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a(Lads_mobile_sdk/rd1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 23
    instance-of v0, p1, Lads_mobile_sdk/qd1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/qd1;

    iget v1, v0, Lads_mobile_sdk/qd1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/qd1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/qd1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/qd1;-><init>(Lads_mobile_sdk/rd1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/qd1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 49
    iget v2, v0, Lads_mobile_sdk/qd1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p0, v0, Lads_mobile_sdk/qd1;->b:Lcom/google/gson/JsonArray;

    iget-object v0, v0, Lads_mobile_sdk/qd1;->a:Lads_mobile_sdk/rd1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v4

    goto :goto_53

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 51
    iget-object v2, p0, Lads_mobile_sdk/rd1;->a:Lads_mobile_sdk/hf;

    iput-object p0, v0, Lads_mobile_sdk/qd1;->a:Lads_mobile_sdk/rd1;

    iput-object p1, v0, Lads_mobile_sdk/qd1;->b:Lcom/google/gson/JsonArray;

    iput v3, v0, Lads_mobile_sdk/qd1;->e:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {v2, v0}, Lads_mobile_sdk/hf;->a(Lads_mobile_sdk/hf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_53

    return-object v1

    .line 53
    :cond_53
    :goto_53
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/yd;

    .line 54
    :try_start_75
    iget-object v3, v1, Lads_mobile_sdk/yd;->a:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    .line 55
    iget-object v1, v1, Lads_mobile_sdk/yd;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lads_mobile_sdk/rd1;->a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_83} :catch_84

    goto :goto_5d

    :catch_84
    move-exception v1

    .line 65
    iget-object v2, p0, Lads_mobile_sdk/rd1;->b:Lads_mobile_sdk/ur3;

    check-cast v2, Lads_mobile_sdk/as3;

    const-string v3, "InspectorAdapterInfo.updateAdapters"

    invoke-virtual {v2, v3, v1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :cond_8f
    return-object p1
.end method
