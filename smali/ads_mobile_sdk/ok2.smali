###### Class ads_mobile_sdk.ok2 (ads_mobile_sdk.ok2)
.class public final Lads_mobile_sdk/ok2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/li1;
.implements Lads_mobile_sdk/gj1;


# instance fields
.field public final a:Lads_mobile_sdk/al2;

.field public final b:Lads_mobile_sdk/im2;

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final d:Lads_mobile_sdk/j53;

.field public final e:I

.field public final f:Lads_mobile_sdk/ur3;

.field public final g:Lads_mobile_sdk/cl2;

.field public h:Lads_mobile_sdk/om2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/al2;Lads_mobile_sdk/im2;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/ur3;Lads_mobile_sdk/cl2;)V
    .registers 9

    .line 1
    const-string v0, "persistentCacheFillManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lads_mobile_sdk/ok2;->a:Lads_mobile_sdk/al2;

    .line 36
    iput-object p2, p0, Lads_mobile_sdk/ok2;->b:Lads_mobile_sdk/im2;

    .line 37
    iput-object p3, p0, Lads_mobile_sdk/ok2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 38
    iput-object p4, p0, Lads_mobile_sdk/ok2;->d:Lads_mobile_sdk/j53;

    .line 39
    iput p5, p0, Lads_mobile_sdk/ok2;->e:I

    .line 40
    iput-object p6, p0, Lads_mobile_sdk/ok2;->f:Lads_mobile_sdk/ur3;

    .line 41
    iput-object p7, p0, Lads_mobile_sdk/ok2;->g:Lads_mobile_sdk/cl2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 140
    iget-boolean p1, p1, Lads_mobile_sdk/ec3;->c:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lads_mobile_sdk/ok2;->g:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Lads_mobile_sdk/cl2;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 141
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 142
    :cond_f
    iget-object p1, p0, Lads_mobile_sdk/ok2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const/4 p3, 0x0

    if-eqz p2, :cond_19

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    goto :goto_1a

    :cond_19
    move-object p1, p3

    :goto_1a
    if-nez p1, :cond_1d

    goto :goto_26

    .line 143
    :cond_1d
    iget-object p2, p0, Lads_mobile_sdk/ok2;->a:Lads_mobile_sdk/al2;

    .line 145
    iget-object p4, p0, Lads_mobile_sdk/ok2;->d:Lads_mobile_sdk/j53;

    .line 146
    iget v0, p0, Lads_mobile_sdk/ok2;->e:I

    .line 147
    invoke-virtual {p2, p1, p4, v0, p3}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;)V

    .line 148
    :goto_26
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 195
    iget-boolean p2, p1, Lads_mobile_sdk/ec3;->c:Z

    if-eqz p2, :cond_8

    .line 196
    iget-object p1, p1, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    iput-object p1, p0, Lads_mobile_sdk/ok2;->h:Lads_mobile_sdk/om2;

    .line 198
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of p1, p3, Lads_mobile_sdk/nk2;

    if-eqz p1, :cond_13

    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/nk2;

    iget p2, p1, Lads_mobile_sdk/nk2;->d:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_13

    sub-int/2addr p2, v0

    iput p2, p1, Lads_mobile_sdk/nk2;->d:I

    goto :goto_18

    :cond_13
    new-instance p1, Lads_mobile_sdk/nk2;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/nk2;-><init>(Lads_mobile_sdk/ok2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, p1, Lads_mobile_sdk/nk2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p3

    .line 63
    iget v0, p1, Lads_mobile_sdk/nk2;->d:I

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    if-ne v0, v1, :cond_2b

    iget-object p1, p1, Lads_mobile_sdk/nk2;->a:Lads_mobile_sdk/ok2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iget-object p2, p0, Lads_mobile_sdk/ok2;->h:Lads_mobile_sdk/om2;

    if-eqz p2, :cond_6d

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/ok2;->b:Lads_mobile_sdk/im2;

    iput-object p0, p1, Lads_mobile_sdk/nk2;->a:Lads_mobile_sdk/ok2;

    iput v1, p1, Lads_mobile_sdk/nk2;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    invoke-static {v0, p2, p1}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p3, :cond_4a

    return-object p3

    :cond_4a
    move-object p1, p0

    .line 68
    :goto_4b
    check-cast p2, Lads_mobile_sdk/v01;

    .line 72
    instance-of p3, p2, Lads_mobile_sdk/i01;

    if-eqz p3, :cond_6e

    .line 73
    iget-object p3, p1, Lads_mobile_sdk/ok2;->f:Lads_mobile_sdk/ur3;

    .line 74
    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/i01;

    invoke-virtual {v0}, Lads_mobile_sdk/i01;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 75
    :cond_65
    check-cast p3, Lads_mobile_sdk/as3;

    const-string p2, "Failed to evict cached ad upon load/render failure"

    invoke-virtual {p3, p2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e

    :cond_6d
    move-object p1, p0

    .line 76
    :cond_6e
    :goto_6e
    iget-object p2, p1, Lads_mobile_sdk/ok2;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 77
    instance-of p3, p2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const/4 v0, 0x0

    if-eqz p3, :cond_78

    check-cast p2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    goto :goto_79

    :cond_78
    move-object p2, v0

    :goto_79
    if-nez p2, :cond_7c

    goto :goto_85

    .line 78
    :cond_7c
    iget-object p3, p1, Lads_mobile_sdk/ok2;->a:Lads_mobile_sdk/al2;

    .line 80
    iget-object v1, p1, Lads_mobile_sdk/ok2;->d:Lads_mobile_sdk/j53;

    .line 81
    iget p1, p1, Lads_mobile_sdk/ok2;->e:I

    .line 82
    invoke-virtual {p3, p2, v1, p1, v0}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;)V

    .line 83
    :goto_85
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
