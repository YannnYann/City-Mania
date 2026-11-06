###### Class ads_mobile_sdk.b12 (ads_mobile_sdk.b12)
.class public final Lads_mobile_sdk/b12;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/g12;

.field public final synthetic b:Lcom/google/gson/JsonObject;

.field public final synthetic c:Lads_mobile_sdk/s02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/b12;->a:Lads_mobile_sdk/g12;

    iput-object p3, p0, Lads_mobile_sdk/b12;->b:Lcom/google/gson/JsonObject;

    iput-object p1, p0, Lads_mobile_sdk/b12;->c:Lads_mobile_sdk/s02;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/b12;

    iget-object v0, p0, Lads_mobile_sdk/b12;->a:Lads_mobile_sdk/g12;

    iget-object v1, p0, Lads_mobile_sdk/b12;->b:Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lads_mobile_sdk/b12;->c:Lads_mobile_sdk/s02;

    invoke-direct {p1, v2, v0, v1, p2}, Lads_mobile_sdk/b12;-><init>(Lads_mobile_sdk/s02;Lads_mobile_sdk/g12;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/b12;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/b12;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/b12;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lads_mobile_sdk/b12;->a:Lads_mobile_sdk/g12;

    .line 134
    iget-object p1, p1, Lads_mobile_sdk/g12;->d:Lads_mobile_sdk/g52;

    .line 135
    iget-object v0, p0, Lads_mobile_sdk/b12;->b:Lcom/google/gson/JsonObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    const-string p1, "adJson"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const-string v1, "mute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v3, "ping_url"

    const-string v4, "reason"

    const-string v5, ""

    if-eqz v0, :cond_6c

    const-string v6, "reasons"

    invoke-static {v0, v6}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_6c

    .line 239
    :cond_2c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 249
    check-cast v7, Lcom/google/gson/JsonElement;

    .line 250
    :try_start_41
    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "getAsJsonObject(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-static {v7, v4, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {v7, v3, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_65

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5f

    goto :goto_65

    .line 256
    :cond_5f
    new-instance v9, Lads_mobile_sdk/hm1;

    invoke-direct {v9, v8, v7}, Lads_mobile_sdk/hm1;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    :cond_65
    :goto_65
    move-object v9, v2

    :goto_66
    if-eqz v9, :cond_35

    .line 257
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 258
    :cond_6c
    :goto_6c
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 259
    :cond_70
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/hm1;

    .line 260
    iget-object v7, p0, Lads_mobile_sdk/b12;->c:Lads_mobile_sdk/s02;

    iget-object v7, v7, Lads_mobile_sdk/s02;->p:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 262
    :cond_88
    iget-object v0, p0, Lads_mobile_sdk/b12;->c:Lads_mobile_sdk/s02;

    .line 263
    iget-object v6, p0, Lads_mobile_sdk/b12;->a:Lads_mobile_sdk/g12;

    .line 264
    iget-object v6, v6, Lads_mobile_sdk/g12;->d:Lads_mobile_sdk/g52;

    .line 265
    iget-object v7, p0, Lads_mobile_sdk/b12;->b:Lcom/google/gson/JsonObject;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-static {v7, v1, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_bf

    const-string v1, "default_reason"

    .line 287
    invoke-static {p1, v1, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_a5

    goto :goto_bf

    .line 289
    :cond_a5
    invoke-static {p1, v4, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {p1, v3, v5}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ba

    goto :goto_bf

    .line 293
    :cond_ba
    new-instance v2, Lads_mobile_sdk/hm1;

    invoke-direct {v2, v1, p1}, Lads_mobile_sdk/hm1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_bf
    :goto_bf
    iput-object v2, v0, Lads_mobile_sdk/s02;->q:Lads_mobile_sdk/hm1;

    .line 296
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
