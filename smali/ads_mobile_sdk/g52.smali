###### Class ads_mobile_sdk.g52 (ads_mobile_sdk.g52)
.class public final Lads_mobile_sdk/g52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/v42;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v42;)V
    .registers 3

    .line 1
    const-string v0, "nativeAssetsLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/g52;->a:Lads_mobile_sdk/v42;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/g52;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v0, p2, Lads_mobile_sdk/c52;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/c52;

    iget v1, v0, Lads_mobile_sdk/c52;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c52;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/c52;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/c52;-><init>(Lads_mobile_sdk/g52;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/c52;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lads_mobile_sdk/c52;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v4, :cond_2f

    iget-object p0, v0, Lads_mobile_sdk/c52;->a:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8a

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    const-string p2, "name"

    .line 80
    const-string v2, ""

    invoke-static {p1, p2, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_49

    goto :goto_94

    .line 83
    :cond_49
    const-string v5, "type"

    .line 84
    invoke-static {p1, v5, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    const-string v6, "string"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 86
    new-instance p0, Lads_mobile_sdk/ec0;

    const-string v0, "string_value"

    .line 87
    invoke-static {p1, v0, v2}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p2, p1}, Lads_mobile_sdk/ec0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 89
    :cond_63
    const-string v2, "image"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 90
    iget-object p0, p0, Lads_mobile_sdk/g52;->a:Lads_mobile_sdk/v42;

    iput-object p2, v0, Lads_mobile_sdk/c52;->a:Ljava/lang/String;

    iput v4, v0, Lads_mobile_sdk/c52;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    const-string v2, "image_value"

    invoke-static {p1, v2, v3}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 92
    iget-object v2, p0, Lads_mobile_sdk/v42;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->isImageLoadingDisabled()Z

    move-result v2

    invoke-virtual {p0, p1, v2, v0}, Lads_mobile_sdk/v42;->a(Lcom/google/gson/JsonObject;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_87

    return-object v1

    :cond_87
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    .line 93
    :goto_8a
    check-cast p2, Lads_mobile_sdk/km1;

    if-eqz p2, :cond_94

    .line 94
    new-instance p1, Lads_mobile_sdk/dc0;

    invoke-direct {p1, p0, p2}, Lads_mobile_sdk/dc0;-><init>(Ljava/lang/String;Lads_mobile_sdk/km1;)V

    return-object p1

    :cond_94
    :goto_94
    return-object v3
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 95
    instance-of v0, p3, Lads_mobile_sdk/d52;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/d52;

    iget v1, v0, Lads_mobile_sdk/d52;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d52;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/d52;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/d52;-><init>(Lads_mobile_sdk/g52;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/d52;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 143
    iget v2, v0, Lads_mobile_sdk/d52;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p1, v0, Lads_mobile_sdk/d52;->b:Ljava/util/Iterator;

    iget-object p2, v0, Lads_mobile_sdk/d52;->a:Ljava/util/Collection;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8b

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    invoke-static {p1, p2}, Lads_mobile_sdk/ds1;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    if-nez p1, :cond_4a

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 145
    :cond_4a
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_55

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 147
    :cond_55
    new-instance p2, Lads_mobile_sdk/f52;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lads_mobile_sdk/f52;-><init>(Lcom/google/gson/JsonArray;Lads_mobile_sdk/g52;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lads_mobile_sdk/d52;->e:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_64

    goto :goto_8a

    .line 148
    :cond_64
    :goto_64
    check-cast p3, Ljava/util/List;

    .line 216
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :cond_72
    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 226
    check-cast p3, Lkotlinx/coroutines/Deferred;

    .line 227
    iput-object p2, v0, Lads_mobile_sdk/d52;->a:Ljava/util/Collection;

    iput-object p1, v0, Lads_mobile_sdk/d52;->b:Ljava/util/Iterator;

    iput v3, v0, Lads_mobile_sdk/d52;->e:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8b

    :goto_8a
    return-object v1

    .line 228
    :cond_8b
    :goto_8b
    check-cast p3, Lads_mobile_sdk/fc0;

    if-eqz p3, :cond_72

    .line 293
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 297
    :cond_93
    check-cast p2, Ljava/util/List;

    return-object p2
.end method
