###### Class ads_mobile_sdk.yq1 (ads_mobile_sdk.yq1)
.class public final Lads_mobile_sdk/yq1;
.super Lads_mobile_sdk/rp0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jb3;


# instance fields
.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/tx;

.field public final h:Lads_mobile_sdk/e01;

.field public final i:Lads_mobile_sdk/uw0;

.field public final j:Lads_mobile_sdk/cb3;

.field public final k:Lads_mobile_sdk/iz3;

.field public final l:Lads_mobile_sdk/g83;

.field public final m:Lads_mobile_sdk/ar1;

.field public final n:Lads_mobile_sdk/cw2;

.field public final o:Lads_mobile_sdk/o21;

.field public p:Lads_mobile_sdk/n30;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/e01;Lads_mobile_sdk/uw0;Lads_mobile_sdk/cb3;Lads_mobile_sdk/xw0;Lads_mobile_sdk/iz3;Lads_mobile_sdk/g83;Lads_mobile_sdk/ar1;Lads_mobile_sdk/dw2;Lads_mobile_sdk/o21;)V
    .registers 16

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uiScope"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "backgroundScope"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "flags"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clock"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "httpClient"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "flagUpdater"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkCoreDataStore"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "flagValueProvider"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewFactory"

    invoke-static {p10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rootTraceCreator"

    invoke-static {p11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "jsContext"

    invoke-static {p12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "configuratorProvider"

    invoke-static {p13, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "gmaUtil"

    invoke-static {p14, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lads_mobile_sdk/rp0;-><init>()V

    .line 3
    iput-object p2, p0, Lads_mobile_sdk/yq1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iput-object p3, p0, Lads_mobile_sdk/yq1;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p4, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 6
    iput-object p5, p0, Lads_mobile_sdk/yq1;->g:Lads_mobile_sdk/tx;

    .line 7
    iput-object p6, p0, Lads_mobile_sdk/yq1;->h:Lads_mobile_sdk/e01;

    .line 8
    iput-object p7, p0, Lads_mobile_sdk/yq1;->i:Lads_mobile_sdk/uw0;

    .line 9
    iput-object p8, p0, Lads_mobile_sdk/yq1;->j:Lads_mobile_sdk/cb3;

    .line 11
    iput-object p10, p0, Lads_mobile_sdk/yq1;->k:Lads_mobile_sdk/iz3;

    .line 12
    iput-object p11, p0, Lads_mobile_sdk/yq1;->l:Lads_mobile_sdk/g83;

    .line 13
    iput-object p12, p0, Lads_mobile_sdk/yq1;->m:Lads_mobile_sdk/ar1;

    .line 14
    iput-object p13, p0, Lads_mobile_sdk/yq1;->n:Lads_mobile_sdk/cw2;

    .line 15
    iput-object p14, p0, Lads_mobile_sdk/yq1;->o:Lads_mobile_sdk/o21;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/yq1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    instance-of v0, p2, Lads_mobile_sdk/tq1;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/tq1;

    iget v1, v0, Lads_mobile_sdk/tq1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tq1;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/tq1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/tq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/tq1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 164
    iget v2, v0, Lads_mobile_sdk/tq1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6b

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    iget-object p0, v0, Lads_mobile_sdk/tq1;->a:Lads_mobile_sdk/yq1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    iput-object p0, v0, Lads_mobile_sdk/tq1;->a:Lads_mobile_sdk/yq1;

    iput v4, v0, Lads_mobile_sdk/tq1;->d:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/yq1;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4b

    goto :goto_6a

    .line 167
    :cond_4b
    :goto_4b
    check-cast p2, Lads_mobile_sdk/v01;

    .line 407
    instance-of p1, p2, Lads_mobile_sdk/i01;

    if-eqz p1, :cond_54

    .line 408
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 646
    :cond_54
    const-string p1, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 647
    iget-object p1, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 648
    check-cast p1, Lads_mobile_sdk/fl1;

    const/4 p2, 0x0

    .line 651
    iput-object p2, v0, Lads_mobile_sdk/tq1;->a:Lads_mobile_sdk/yq1;

    iput v3, v0, Lads_mobile_sdk/tq1;->d:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/rp0;->c(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6b

    :goto_6a
    return-object v1

    .line 652
    :cond_6b
    :goto_6b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 711
    instance-of v0, p1, Lads_mobile_sdk/vq1;

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/vq1;

    iget v1, v0, Lads_mobile_sdk/vq1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vq1;->e:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/vq1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/vq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p1, v0, Lads_mobile_sdk/vq1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1018
    iget v2, v0, Lads_mobile_sdk/vq1;->e:I

    const-string v3, "key"

    const/16 v4, 0x1e

    const-string v5, "gads:sdk_core_ttl_seconds"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_48

    if-eq v2, v7, :cond_42

    if-ne v2, v6, :cond_3a

    iget-wide v1, v0, Lads_mobile_sdk/vq1;->b:J

    iget-object p0, v0, Lads_mobile_sdk/vq1;->a:Lads_mobile_sdk/yq1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b3

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    iget-object p0, v0, Lads_mobile_sdk/vq1;->a:Lads_mobile_sdk/yq1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1019
    iget-object p1, p0, Lads_mobile_sdk/yq1;->j:Lads_mobile_sdk/cb3;

    iput-object p0, v0, Lads_mobile_sdk/vq1;->a:Lads_mobile_sdk/yq1;

    iput v7, v0, Lads_mobile_sdk/vq1;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1020
    invoke-static {p1, v0}, Lads_mobile_sdk/cb3;->a(Lads_mobile_sdk/cb3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5b

    goto :goto_b1

    .line 1021
    :cond_5b
    :goto_5b
    check-cast p1, Lads_mobile_sdk/ua3;

    invoke-virtual {p1}, Lads_mobile_sdk/ua3;->v()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getCachedSdkCore(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e5

    .line 1022
    iget-object p1, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 1023
    iget-object p1, p1, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1025
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v8, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 1026
    invoke-static {v4, v8, v5, v3}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v8

    .line 1027
    sget-object v9, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p1, v5, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    .line 1028
    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p1

    if-lez p1, :cond_e6

    .line 1029
    iget-object p1, p0, Lads_mobile_sdk/yq1;->g:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1031
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v8, v9, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    .line 1032
    iget-object p1, p0, Lads_mobile_sdk/yq1;->j:Lads_mobile_sdk/cb3;

    iput-object p0, v0, Lads_mobile_sdk/vq1;->a:Lads_mobile_sdk/yq1;

    iput-wide v8, v0, Lads_mobile_sdk/vq1;->b:J

    iput v6, v0, Lads_mobile_sdk/vq1;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1033
    invoke-static {p1, v0}, Lads_mobile_sdk/cb3;->a(Lads_mobile_sdk/cb3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b2

    :goto_b1
    return-object v1

    :cond_b2
    move-wide v1, v8

    .line 1034
    :goto_b3
    check-cast p1, Lads_mobile_sdk/ua3;

    invoke-virtual {p1}, Lads_mobile_sdk/ua3;->x()J

    move-result-wide v8

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v8, v9, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v8

    .line 1035
    iget-object p0, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 1036
    iget-object p0, p0, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 1037
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1038
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 1039
    invoke-static {v4, p1, v5, v3}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object p1

    .line 1040
    sget-object v0, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p0, v5, p1, v0}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/time/Duration;

    invoke-virtual {p0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide p0

    .line 1041
    invoke-static {v8, v9, p0, p1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide p0

    .line 1042
    invoke-static {v1, v2, p0, p1}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result p0

    if-gez p0, :cond_e5

    goto :goto_e6

    :cond_e5
    const/4 v7, 0x0

    :cond_e6
    :goto_e6
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lads_mobile_sdk/yq1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    instance-of v0, p2, Lads_mobile_sdk/xq1;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/xq1;

    iget v1, v0, Lads_mobile_sdk/xq1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xq1;->d:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/xq1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/xq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/xq1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 373
    iget v2, v0, Lads_mobile_sdk/xq1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_43

    if-eq v2, v4, :cond_3b

    if-ne v2, v3, :cond_33

    iget-object p0, v0, Lads_mobile_sdk/xq1;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    iget-object p0, v0, Lads_mobile_sdk/xq1;->a:Ljava/lang/Object;

    check-cast p0, Lads_mobile_sdk/yq1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 375
    iput-object p0, v0, Lads_mobile_sdk/xq1;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/xq1;->d:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/yq1;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_51

    goto :goto_84

    .line 376
    :cond_51
    :goto_51
    check-cast p2, Lads_mobile_sdk/v01;

    .line 490
    instance-of p1, p2, Lads_mobile_sdk/i01;

    const/4 v2, 0x0

    if-eqz p1, :cond_59

    return-object v2

    .line 491
    :cond_59
    const-string p1, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/q01;

    .line 492
    iget-object p1, p2, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 493
    check-cast p1, Lads_mobile_sdk/h81;

    .line 494
    iget-object p1, p1, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz p1, :cond_6c

    .line 495
    invoke-static {p1}, Lads_mobile_sdk/p53;->a(Lads_mobile_sdk/p53;)Ljava/lang/String;

    move-result-object v2

    :cond_6c
    if-eqz v2, :cond_85

    .line 496
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_75

    goto :goto_85

    .line 497
    :cond_75
    iget-object p0, p0, Lads_mobile_sdk/yq1;->j:Lads_mobile_sdk/cb3;

    iput-object v2, v0, Lads_mobile_sdk/xq1;->a:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/xq1;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    invoke-static {p0, v2, v0}, Lads_mobile_sdk/cb3;->b(Lads_mobile_sdk/cb3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_85

    :goto_84
    return-object v1

    :cond_85
    :goto_85
    return-object v2
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1049
    instance-of v0, p2, Lads_mobile_sdk/hq1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/hq1;

    iget v1, v0, Lads_mobile_sdk/hq1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/hq1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/hq1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/hq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/hq1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1128
    iget v2, v0, Lads_mobile_sdk/hq1;->e:I

    const-string v3, "consentStringsProvider"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_50

    if-eq v2, v6, :cond_46

    if-eq v2, v5, :cond_3b

    if-ne v2, v4, :cond_33

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_bd

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    iget-object p1, v0, Lads_mobile_sdk/hq1;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/hq1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/uw0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ab

    :cond_46
    iget-object p1, v0, Lads_mobile_sdk/hq1;->b:Lads_mobile_sdk/fl1;

    iget-object v2, v0, Lads_mobile_sdk/hq1;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/yq1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8c

    :cond_50
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_58

    .line 1129
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1130
    :cond_58
    iget-object p2, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 1131
    iget-boolean v2, p2, Lads_mobile_sdk/ex0;->w:Z

    if-nez v2, :cond_66

    .line 1132
    iget-wide v8, p2, Lads_mobile_sdk/ex0;->x:D

    const-wide/16 v10, 0x0

    cmpl-double v2, v8, v10

    if-lez v2, :cond_c0

    .line 1133
    :cond_66
    iget-object p2, p2, Lads_mobile_sdk/yr;->a:Lads_mobile_sdk/xw0;

    .line 1134
    check-cast p2, Lads_mobile_sdk/hr;

    .line 1135
    iget-object p2, p2, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1136
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_c0

    .line 1137
    iget-object p2, p0, Lads_mobile_sdk/yq1;->p:Lads_mobile_sdk/n30;

    if-nez p2, :cond_7a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v7

    :cond_7a
    check-cast p2, Lads_mobile_sdk/g30;

    .line 1138
    iget-object p2, p2, Lads_mobile_sdk/g30;->C:Lkotlinx/coroutines/CompletableJob;

    .line 1139
    iput-object p0, v0, Lads_mobile_sdk/hq1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/hq1;->b:Lads_mobile_sdk/fl1;

    iput v6, v0, Lads_mobile_sdk/hq1;->e:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8b

    goto :goto_bc

    :cond_8b
    move-object v2, p0

    .line 1140
    :goto_8c
    iget-object p2, v2, Lads_mobile_sdk/yq1;->i:Lads_mobile_sdk/uw0;

    iget-object v2, v2, Lads_mobile_sdk/yq1;->p:Lads_mobile_sdk/n30;

    if-nez v2, :cond_96

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v7

    :cond_96
    iput-object p2, v0, Lads_mobile_sdk/hq1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lads_mobile_sdk/hq1;->b:Lads_mobile_sdk/fl1;

    iput v5, v0, Lads_mobile_sdk/hq1;->e:I

    check-cast v2, Lads_mobile_sdk/g30;

    .line 1141
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1142
    invoke-static {v2, v0}, Lads_mobile_sdk/g30;->e(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a8

    goto :goto_bc

    :cond_a8
    move-object v12, v2

    move-object v2, p2

    move-object p2, v12

    .line 1143
    :goto_ab
    check-cast p2, Lcom/google/gson/JsonObject;

    iput-object v7, v0, Lads_mobile_sdk/hq1;->a:Ljava/lang/Object;

    iput-object v7, v0, Lads_mobile_sdk/hq1;->b:Lads_mobile_sdk/fl1;

    iput v4, v0, Lads_mobile_sdk/hq1;->e:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    invoke-static {v2, p1, p2, v0}, Lads_mobile_sdk/uw0;->a(Lads_mobile_sdk/uw0;Lads_mobile_sdk/fl1;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_bd

    :goto_bc
    return-object v1

    .line 1145
    :cond_bd
    :goto_bd
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1148
    :cond_c0
    iget-object v0, p0, Lads_mobile_sdk/yq1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lads_mobile_sdk/iq1;

    invoke-direct {p2, p0, p1, v7}, Lads_mobile_sdk/iq1;-><init>(Lads_mobile_sdk/yq1;Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    .line 1149
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1150
    const-string p1, "<this>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p2, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1409
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1410
    instance-of v0, p2, Lads_mobile_sdk/kq1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/kq1;

    iget v1, v0, Lads_mobile_sdk/kq1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/kq1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/kq1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/kq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/kq1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1547
    iget v2, v0, Lads_mobile_sdk/kq1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_48

    if-eq v2, v5, :cond_3e

    if-ne v2, v4, :cond_36

    iget-object p1, v0, Lads_mobile_sdk/kq1;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/kq1;->a:Lads_mobile_sdk/rr3;

    :try_start_2e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_33

    goto/16 :goto_f4

    :catchall_33
    move-exception p2

    goto/16 :goto_108

    .line 1548
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    iget-object p1, v0, Lads_mobile_sdk/kq1;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/kq1;->a:Lads_mobile_sdk/rr3;

    :try_start_42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_89

    :catchall_46
    move-exception p2

    goto :goto_9d

    .line 1549
    :cond_48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1550
    iget-object p2, p0, Lads_mobile_sdk/yq1;->l:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->j:Lads_mobile_sdk/s11;

    .line 1765
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 1766
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 1767
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 1768
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1769
    new-instance v11, Lads_mobile_sdk/m33;

    invoke-direct {v11}, Lads_mobile_sdk/m33;-><init>()V

    .line 1770
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 1771
    invoke-direct {v8, v9, v10, v11, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1772
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 1773
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_dc

    .line 1774
    invoke-static {p2, v2, v7, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p2

    .line 1775
    :try_start_78
    iput-object p2, v0, Lads_mobile_sdk/kq1;->a:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/kq1;->b:Lads_mobile_sdk/rr3;

    iput v5, v0, Lads_mobile_sdk/kq1;->e:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/yq1;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_99

    if-ne p1, v1, :cond_86

    goto/16 :goto_f0

    :cond_86
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 1776
    :goto_89
    :try_start_89
    check-cast p2, Lads_mobile_sdk/v01;

    .line 1996
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_95

    .line 1997
    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/i01;

    .line 1998
    invoke-static {v1, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_95
    .catchall {:try_start_89 .. :try_end_95} :catchall_46

    .line 1999
    :cond_95
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_99
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 2007
    :goto_9d
    :try_start_9d
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2011
    instance-of v1, p2, Lads_mobile_sdk/v24;

    if-nez v1, :cond_d5

    .line 2013
    instance-of v1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_b2

    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b2

    .line 2019
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_b2

    :catchall_b0
    move-exception p2

    goto :goto_d6

    .line 2025
    :cond_b2
    :goto_b2
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_cd

    .line 2026
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_c5

    .line 2027
    instance-of v0, p2, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_bf

    throw p2

    .line 2028
    :cond_bf
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2029
    :cond_c5
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 2030
    :cond_cd
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 2031
    :cond_d5
    throw p2
    :try_end_d6
    .catchall {:try_start_9d .. :try_end_d6} :catchall_b0

    .line 2032
    :goto_d6
    :try_start_d6
    throw p2
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d7

    :catchall_d7
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2066
    :cond_dc
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {v2, p2, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 2067
    :try_start_e4
    iput-object p2, v0, Lads_mobile_sdk/kq1;->a:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/kq1;->b:Lads_mobile_sdk/rr3;

    iput v4, v0, Lads_mobile_sdk/kq1;->e:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/yq1;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_ee
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_104

    if-ne p1, v1, :cond_f1

    :goto_f0
    return-object v1

    :cond_f1
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 2068
    :goto_f4
    :try_start_f4
    check-cast p2, Lads_mobile_sdk/v01;

    .line 2325
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_100

    .line 2326
    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/i01;

    .line 2327
    invoke-static {v1, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_100
    .catchall {:try_start_f4 .. :try_end_100} :catchall_33

    .line 2328
    :cond_100
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_104
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 2336
    :goto_108
    :try_start_108
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2340
    instance-of v1, p2, Lads_mobile_sdk/v24;

    if-nez v1, :cond_140

    .line 2342
    instance-of v1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_11d

    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_11d

    .line 2348
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_11d

    :catchall_11b
    move-exception p2

    goto :goto_141

    .line 2354
    :cond_11d
    :goto_11d
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_138

    .line 2355
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_130

    .line 2356
    instance-of v0, p2, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_12a

    throw p2

    .line 2357
    :cond_12a
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2358
    :cond_130
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 2359
    :cond_138
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 2360
    :cond_140
    throw p2
    :try_end_141
    .catchall {:try_start_108 .. :try_end_141} :catchall_11b

    .line 2361
    :goto_141
    :try_start_141
    throw p2
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_142

    :catchall_142
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 2362
    instance-of v0, p3, Lads_mobile_sdk/wq1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/wq1;

    iget v1, v0, Lads_mobile_sdk/wq1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wq1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/wq1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/wq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/wq1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2459
    iget v2, v0, Lads_mobile_sdk/wq1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object p2, v0, Lads_mobile_sdk/wq1;->b:Ljava/util/concurrent/Executor;

    iget-object p1, v0, Lads_mobile_sdk/wq1;->a:Ljava/util/List;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2461
    iput-object p1, v0, Lads_mobile_sdk/wq1;->a:Ljava/util/List;

    iput-object p2, v0, Lads_mobile_sdk/wq1;->b:Ljava/util/concurrent/Executor;

    iput v4, v0, Lads_mobile_sdk/wq1;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4c

    goto :goto_89

    .line 2462
    :cond_4c
    :goto_4c
    check-cast p3, Lads_mobile_sdk/v01;

    .line 2708
    instance-of v2, p3, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    if-eqz v2, :cond_58

    .line 2709
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2953
    :cond_58
    const-string v2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lads_mobile_sdk/q01;

    .line 2954
    iget-object p3, p3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 2955
    check-cast p3, Lads_mobile_sdk/fl1;

    const/4 v2, 0x0

    .line 2958
    iput-object v2, v0, Lads_mobile_sdk/wq1;->a:Ljava/util/List;

    iput-object v2, v0, Lads_mobile_sdk/wq1;->b:Ljava/util/concurrent/Executor;

    iput v3, v0, Lads_mobile_sdk/wq1;->e:I

    .line 2959
    iget-object v3, p3, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-nez v3, :cond_73

    .line 2960
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_87

    .line 2961
    :cond_73
    iget-object v4, v3, Lads_mobile_sdk/r31;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2962
    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 2965
    iget-object p1, p3, Lads_mobile_sdk/fl1;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance p3, Lads_mobile_sdk/el1;

    invoke-direct {p3, v3, p2, v2}, Lads_mobile_sdk/el1;-><init>(Lads_mobile_sdk/r31;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    :goto_87
    if-ne p1, v1, :cond_8a

    :goto_89
    return-object v1

    :cond_8a
    return-object p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p2

    .line 499
    instance-of v1, v0, Lads_mobile_sdk/lq1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/lq1;

    iget v2, v1, Lads_mobile_sdk/lq1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v2, v4

    if-eqz v5, :cond_16

    sub-int/2addr v2, v4

    iput v2, v1, Lads_mobile_sdk/lq1;->e:I

    :goto_14
    move-object v8, v1

    goto :goto_1c

    :cond_16
    new-instance v1, Lads_mobile_sdk/lq1;

    invoke-direct {v1, p0, v0}, Lads_mobile_sdk/lq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    goto :goto_14

    :goto_1c
    iget-object v0, v8, Lads_mobile_sdk/lq1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 641
    iget v1, v8, Lads_mobile_sdk/lq1;->e:I

    const-string v10, "Timed out waiting on /jsLoaded gmsg while loading a JavascriptEngine"

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_43

    if-ne v1, v12, :cond_3b

    iget-object v1, v8, Lads_mobile_sdk/lq1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v8, Lads_mobile_sdk/lq1;->a:Lads_mobile_sdk/yq1;

    :try_start_30
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_33
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_30 .. :try_end_33} :catch_38
    .catch Lads_mobile_sdk/i21; {:try_start_30 .. :try_end_33} :catch_35

    goto/16 :goto_14f

    :catch_35
    move-exception v0

    goto/16 :goto_15c

    :catch_38
    move-exception v0

    goto/16 :goto_171

    .line 642
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 645
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 646
    iget-object v0, p0, Lads_mobile_sdk/yq1;->o:Lads_mobile_sdk/o21;

    invoke-virtual {v0}, Lads_mobile_sdk/o21;->d()Z

    move-result v0

    const-string v1, "gads:sdk_core_location:decagon"

    const-string v2, "defaultValue"

    const-string v4, "key"

    if-eqz v0, :cond_71

    .line 647
    iget-object v0, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 648
    iget-object v0, v0, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 649
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "https://mediation.goog/mads/static/sdk/native/sdk-core-v40.html"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    sget-object v7, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v0, v1, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_88

    .line 695
    :cond_71
    iget-object v0, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 696
    iget-object v0, v0, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 697
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "https://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-android.html"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    sget-object v7, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v0, v1, v6, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    :goto_88
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 746
    iget-object v1, v1, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 747
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 748
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v7, "sdk_core_query_params"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    sget-object v2, Lads_mobile_sdk/yr;->i:Lads_mobile_sdk/pr;

    invoke-virtual {v1, v7, v6, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 750
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b4
    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 751
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 752
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_b4

    .line 755
    :cond_f0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "toString(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 757
    iget-object v0, v0, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 758
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    const-string v1, "gads:cache_sdk_core:enabled"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v1, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 777
    iget-object v0, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 778
    iget-object v0, v0, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 779
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    const-string v1, "gads:fetch_initial_sdk_core_separately:enabled"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v4, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 798
    :try_start_12f
    iget-object v0, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 799
    iget-object v0, v0, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 800
    invoke-virtual {v0}, Lads_mobile_sdk/eb3;->a()J

    move-result-wide v13

    new-instance v0, Lads_mobile_sdk/pq1;

    const/4 v7, 0x0

    move-object v3, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/pq1;-><init>(Ljava/lang/String;ZLads_mobile_sdk/yq1;ZLkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v8, Lads_mobile_sdk/lq1;->a:Lads_mobile_sdk/yq1;

    iput-object v5, v8, Lads_mobile_sdk/lq1;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v12, v8, Lads_mobile_sdk/lq1;->e:I

    invoke-static {v13, v14, v0, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14a
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_12f .. :try_end_14a} :catch_154
    .catch Lads_mobile_sdk/i21; {:try_start_12f .. :try_end_14a} :catch_152

    if-ne v0, v9, :cond_14d

    return-object v9

    :cond_14d
    move-object v2, p0

    move-object v1, v5

    .line 801
    :goto_14f
    :try_start_14f
    check-cast v0, Lads_mobile_sdk/v01;
    :try_end_151
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_14f .. :try_end_151} :catch_38
    .catch Lads_mobile_sdk/i21; {:try_start_14f .. :try_end_151} :catch_35

    return-object v0

    :catch_152
    move-exception v0

    goto :goto_156

    :catch_154
    move-exception v0

    goto :goto_159

    :goto_156
    move-object v2, p0

    move-object v1, v5

    goto :goto_15c

    :goto_159
    move-object v2, p0

    move-object v1, v5

    goto :goto_171

    .line 932
    :goto_15c
    iget-object v4, v2, Lads_mobile_sdk/yq1;->d:Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v7, Lads_mobile_sdk/rq1;

    invoke-direct {v7, v1, v11}, Lads_mobile_sdk/rq1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 933
    new-instance v1, Lads_mobile_sdk/r01;

    .line 934
    invoke-direct {v1, v10, v0}, Lads_mobile_sdk/r01;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_185

    .line 935
    :goto_171
    iget-object v4, v2, Lads_mobile_sdk/yq1;->d:Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v7, Lads_mobile_sdk/qq1;

    invoke-direct {v7, v1, v11}, Lads_mobile_sdk/qq1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 936
    new-instance v1, Lads_mobile_sdk/r01;

    .line 937
    invoke-direct {v1, v10, v0}, Lads_mobile_sdk/r01;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_185
    return-object v1
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/uq1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/uq1;

    iget v1, v0, Lads_mobile_sdk/uq1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/uq1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/uq1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/uq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/uq1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 329
    iget v2, v0, Lads_mobile_sdk/uq1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_48

    if-eq v2, v5, :cond_3e

    if-ne v2, v4, :cond_36

    iget-object p1, v0, Lads_mobile_sdk/uq1;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/uq1;->a:Lads_mobile_sdk/rr3;

    :try_start_2e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_33

    goto/16 :goto_104

    :catchall_33
    move-exception p2

    goto/16 :goto_118

    .line 330
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    iget-object p1, v0, Lads_mobile_sdk/uq1;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/uq1;->a:Lads_mobile_sdk/rr3;

    :try_start_42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_92

    :catchall_46
    move-exception p2

    goto :goto_a6

    .line 331
    :cond_48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 332
    iget-object p2, p0, Lads_mobile_sdk/yq1;->l:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->l:Lads_mobile_sdk/s11;

    .line 437
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 438
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 439
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 440
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    .line 441
    new-instance v11, Lads_mobile_sdk/m33;

    invoke-direct {v11}, Lads_mobile_sdk/m33;-><init>()V

    .line 442
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 443
    invoke-direct {v8, v9, v10, v11, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 444
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 445
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/16 v10, 0x1e

    if-nez v9, :cond_e5

    .line 446
    invoke-static {p2, v2, v7, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p2

    .line 447
    :try_start_7a
    iget-object v2, p0, Lads_mobile_sdk/yq1;->h:Lads_mobile_sdk/e01;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lads_mobile_sdk/uq1;->a:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/uq1;->b:Lads_mobile_sdk/rr3;

    iput v5, v0, Lads_mobile_sdk/uq1;->e:I

    invoke-static {v2, v4, v6, v0, v10}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_7a .. :try_end_8b} :catchall_a2

    if-ne p1, v1, :cond_8f

    goto/16 :goto_100

    :cond_8f
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 448
    :goto_92
    :try_start_92
    check-cast p2, Lads_mobile_sdk/v01;

    .line 558
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_9e

    .line 559
    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/i01;

    .line 560
    invoke-static {v1, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9e
    .catchall {:try_start_92 .. :try_end_9e} :catchall_46

    .line 561
    :cond_9e
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_a2
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 569
    :goto_a6
    :try_start_a6
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 573
    instance-of v1, p2, Lads_mobile_sdk/v24;

    if-nez v1, :cond_de

    .line 575
    instance-of v1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_bb

    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_bb

    .line 581
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_bb

    :catchall_b9
    move-exception p2

    goto :goto_df

    .line 587
    :cond_bb
    :goto_bb
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_d6

    .line 588
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_ce

    .line 589
    instance-of v0, p2, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_c8

    throw p2

    .line 590
    :cond_c8
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 591
    :cond_ce
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 592
    :cond_d6
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 593
    :cond_de
    throw p2
    :try_end_df
    .catchall {:try_start_a6 .. :try_end_df} :catchall_b9

    .line 594
    :goto_df
    :try_start_df
    throw p2
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 628
    :cond_e5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {v2, p2, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p2

    .line 629
    :try_start_ed
    iget-object v2, p0, Lads_mobile_sdk/yq1;->h:Lads_mobile_sdk/e01;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lads_mobile_sdk/uq1;->a:Lads_mobile_sdk/rr3;

    iput-object p2, v0, Lads_mobile_sdk/uq1;->b:Lads_mobile_sdk/rr3;

    iput v4, v0, Lads_mobile_sdk/uq1;->e:I

    invoke-static {v2, v5, v6, v0, v10}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_fe
    .catchall {:try_start_ed .. :try_end_fe} :catchall_114

    if-ne p1, v1, :cond_101

    :goto_100
    return-object v1

    :cond_101
    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 630
    :goto_104
    :try_start_104
    check-cast p2, Lads_mobile_sdk/v01;

    .line 777
    instance-of v1, p2, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_110

    .line 778
    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/i01;

    .line 779
    invoke-static {v1, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_110
    .catchall {:try_start_104 .. :try_end_110} :catchall_33

    .line 780
    :cond_110
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_114
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    .line 788
    :goto_118
    :try_start_118
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 792
    instance-of v1, p2, Lads_mobile_sdk/v24;

    if-nez v1, :cond_150

    .line 794
    instance-of v1, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_12d

    instance-of v1, p2, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_12d

    .line 800
    invoke-virtual {v0, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_12d

    :catchall_12b
    move-exception p2

    goto :goto_151

    .line 806
    :cond_12d
    :goto_12d
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_148

    .line 807
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_140

    .line 808
    instance-of v0, p2, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_13a

    throw p2

    .line 809
    :cond_13a
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 810
    :cond_140
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 811
    :cond_148
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p2, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p2}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 812
    :cond_150
    throw p2
    :try_end_151
    .catchall {:try_start_118 .. :try_end_151} :catchall_12b

    .line 813
    :goto_151
    :try_start_151
    throw p2
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_152

    :catchall_152
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/sq1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/sq1;

    iget v1, v0, Lads_mobile_sdk/sq1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/sq1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/sq1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/sq1;-><init>(Lads_mobile_sdk/yq1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/sq1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 118
    iget v2, v0, Lads_mobile_sdk/sq1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v0, v0, Lads_mobile_sdk/sq1;->a:Lads_mobile_sdk/yq1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_91

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    iget-object v2, v0, Lads_mobile_sdk/sq1;->a:Lads_mobile_sdk/yq1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6f

    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    iput-object p0, v0, Lads_mobile_sdk/sq1;->a:Lads_mobile_sdk/yq1;

    iput v4, v0, Lads_mobile_sdk/sq1;->d:I

    .line 121
    iget-object p1, p1, Lads_mobile_sdk/yr;->a:Lads_mobile_sdk/xw0;

    .line 122
    check-cast p1, Lads_mobile_sdk/hr;

    .line 123
    iget-object v2, p1, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_54

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_62

    :cond_54
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/hr;->a(Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_60

    goto :goto_62

    :cond_60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 127
    :goto_62
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_69

    goto :goto_6b

    :cond_69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6b
    if-ne p1, v1, :cond_6e

    goto :goto_8f

    :cond_6e
    move-object v2, p0

    .line 128
    :goto_6f
    iget-object p1, v2, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 129
    iget-object p1, p1, Lads_mobile_sdk/yr;->a:Lads_mobile_sdk/xw0;

    .line 130
    check-cast p1, Lads_mobile_sdk/hr;

    .line 131
    iget-object p1, p1, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 133
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 139
    :cond_85
    iput-object v2, v0, Lads_mobile_sdk/sq1;->a:Lads_mobile_sdk/yq1;

    iput v3, v0, Lads_mobile_sdk/sq1;->d:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/rp0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_90

    :goto_8f
    return-object v1

    :cond_90
    move-object v0, v2

    .line 140
    :goto_91
    check-cast p1, Lads_mobile_sdk/v01;

    .line 370
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_9a

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 371
    :cond_9a
    const-string v1, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 372
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 373
    check-cast p1, Lads_mobile_sdk/fl1;

    .line 377
    iget-object p1, v0, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 378
    iget-object p1, p1, Lads_mobile_sdk/yr;->a:Lads_mobile_sdk/xw0;

    .line 379
    check-cast p1, Lads_mobile_sdk/hr;

    .line 380
    iget-object p1, p1, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 381
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 382
    new-instance p1, Lads_mobile_sdk/q01;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 385
    :cond_bb
    new-instance p1, Lads_mobile_sdk/m01;

    const-string v0, "Failed to get the CSRB flags"

    .line 386
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 387
    invoke-direct {p1, v0, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p1
.end method
