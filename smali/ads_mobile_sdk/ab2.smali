###### Class ads_mobile_sdk.ab2 (ads_mobile_sdk.ab2)
.class public final Lads_mobile_sdk/ab2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/ac3;

.field public final synthetic c:Lads_mobile_sdk/bb2;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ac3;Lads_mobile_sdk/bb2;ZLkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ab2;->b:Lads_mobile_sdk/ac3;

    iput-object p2, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    iput-boolean p3, p0, Lads_mobile_sdk/ab2;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lads_mobile_sdk/ab2;

    iget-object v0, p0, Lads_mobile_sdk/ab2;->b:Lads_mobile_sdk/ac3;

    iget-object v1, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    iget-boolean v2, p0, Lads_mobile_sdk/ab2;->d:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/ab2;-><init>(Lads_mobile_sdk/ac3;Lads_mobile_sdk/bb2;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ab2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ab2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ab2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 163
    iget v1, p0, Lads_mobile_sdk/ab2;->a:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2a

    if-eq v1, v5, :cond_26

    if-eq v1, v4, :cond_22

    if-eq v1, v3, :cond_1d

    if-ne v1, v2, :cond_15

    goto :goto_1d

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    :goto_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a9

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lads_mobile_sdk/ab2;->b:Lads_mobile_sdk/ac3;

    iget-object p1, p1, Lads_mobile_sdk/ac3;->b:Lads_mobile_sdk/zy;

    iget-object p1, p1, Lads_mobile_sdk/zy;->t:Lcom/google/gson/JsonObject;

    if-eqz p1, :cond_4d

    iget-object v1, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    .line 165
    iget-object v6, v1, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    .line 166
    iget-object v7, v1, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 167
    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    .line 168
    iget-object v1, v1, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    .line 169
    iput v5, p0, Lads_mobile_sdk/ab2;->a:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    invoke-static {v6, p1, v7, v1, p0}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/b53;Lcom/google/gson/JsonObject;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4d

    goto :goto_a8

    .line 171
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    .line 172
    iget-object v1, p1, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    .line 173
    iget-object p1, p1, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 174
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    .line 175
    iget-object v5, v5, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    .line 176
    iput v4, p0, Lads_mobile_sdk/ab2;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-static {v1, p1, v5, p0}, Lads_mobile_sdk/b53;->a(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_67

    goto :goto_a8

    .line 178
    :cond_67
    :goto_67
    check-cast p1, Lads_mobile_sdk/zr0;

    .line 184
    iget-boolean v1, p0, Lads_mobile_sdk/ab2;->d:Z

    if-nez v1, :cond_8b

    .line 185
    sget-object v1, Lads_mobile_sdk/zr0;->c:Lads_mobile_sdk/zr0;

    if-eq p1, v1, :cond_a9

    .line 186
    iget-object p1, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    .line 187
    iget-object v1, p1, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    .line 188
    iget-object p1, p1, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 189
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    .line 190
    iget-object v2, v2, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    .line 191
    iput v3, p0, Lads_mobile_sdk/ab2;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    invoke-static {v1, p1, v2, p0}, Lads_mobile_sdk/b53;->d(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a9

    goto :goto_a8

    .line 193
    :cond_8b
    sget-object v1, Lads_mobile_sdk/zr0;->d:Lads_mobile_sdk/zr0;

    if-ne p1, v1, :cond_a9

    .line 194
    iget-object p1, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    .line 195
    iget-object v1, p1, Lads_mobile_sdk/bb2;->j:Lads_mobile_sdk/b53;

    .line 196
    iget-object p1, p1, Lads_mobile_sdk/bb2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 197
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lads_mobile_sdk/ab2;->c:Lads_mobile_sdk/bb2;

    .line 198
    iget-object v3, v3, Lads_mobile_sdk/bb2;->e:Lads_mobile_sdk/j53;

    .line 199
    iput v2, p0, Lads_mobile_sdk/ab2;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-static {v1, p1, v3, p0}, Lads_mobile_sdk/b53;->c(Lads_mobile_sdk/b53;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a9

    :goto_a8
    return-object v0

    .line 201
    :cond_a9
    :goto_a9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
