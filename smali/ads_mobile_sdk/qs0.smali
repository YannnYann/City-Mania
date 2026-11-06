###### Class ads_mobile_sdk.qs0 (ads_mobile_sdk.qs0)
.class public final Lads_mobile_sdk/qs0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ls0;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ls0;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;)V
    .registers 5

    .line 1
    const-string v0, "firebaseAnalyticsAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/qs0;->a:Lads_mobile_sdk/ls0;

    .line 25
    iput-object p2, p0, Lads_mobile_sdk/qs0;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 26
    iput-object p3, p0, Lads_mobile_sdk/qs0;->c:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri$Builder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/ns0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/ns0;

    iget v1, v0, Lads_mobile_sdk/ns0;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ns0;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ns0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ns0;-><init>(Lads_mobile_sdk/qs0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/ns0;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, v0, Lads_mobile_sdk/ns0;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p1, v0, Lads_mobile_sdk/ns0;->d:Landroid/net/Uri;

    iget-object v1, v0, Lads_mobile_sdk/ns0;->c:Landroid/net/Uri$Builder;

    iget-object v2, v0, Lads_mobile_sdk/ns0;->b:Landroid/net/Uri$Builder;

    iget-object v0, v0, Lads_mobile_sdk/ns0;->a:Lads_mobile_sdk/qs0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 81
    iget-object v2, p0, Lads_mobile_sdk/qs0;->a:Lads_mobile_sdk/ls0;

    iput-object p0, v0, Lads_mobile_sdk/ns0;->a:Lads_mobile_sdk/qs0;

    iput-object p1, v0, Lads_mobile_sdk/ns0;->b:Landroid/net/Uri$Builder;

    iput-object p1, v0, Lads_mobile_sdk/ns0;->c:Landroid/net/Uri$Builder;

    iput-object p2, v0, Lads_mobile_sdk/ns0;->d:Landroid/net/Uri;

    iput v3, v0, Lads_mobile_sdk/ns0;->g:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {v2, v0}, Lads_mobile_sdk/ls0;->a(Lads_mobile_sdk/ls0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_56

    return-object v1

    :cond_56
    move-object v1, p1

    move-object v2, v1

    move-object p1, p2

    move-object p2, v0

    move-object v0, p0

    .line 83
    :goto_5b
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_6a

    .line 86
    const-string v3, "gmp_app_id"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6a

    .line 87
    invoke-virtual {v1, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    :cond_6a
    iget-object p2, v0, Lads_mobile_sdk/qs0;->a:Lads_mobile_sdk/ls0;

    .line 90
    const-string v0, "getAppInstanceId"

    invoke-virtual {p2, v0}, Lads_mobile_sdk/ls0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_79

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_7a

    :cond_79
    const/4 p2, 0x0

    :goto_7a
    if-eqz p2, :cond_87

    .line 92
    const-string v0, "fbs_aiid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_87

    .line 94
    invoke-virtual {v1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_87
    return-object v2
.end method

.method public final a(Landroid/net/Uri;Lads_mobile_sdk/is0;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 95
    instance-of v2, v1, Lads_mobile_sdk/ps0;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ps0;

    iget v3, v2, Lads_mobile_sdk/ps0;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ps0;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ps0;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ps0;-><init>(Lads_mobile_sdk/qs0;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/ps0;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 127
    iget v4, v2, Lads_mobile_sdk/ps0;->g:I

    const-string v5, "build(...)"

    const-string v6, "toString(...)"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_45

    if-ne v4, v7, :cond_3d

    iget-object v3, v2, Lads_mobile_sdk/ps0;->d:Landroid/net/Uri$Builder;

    iget-object v4, v2, Lads_mobile_sdk/ps0;->c:Landroid/os/Bundle;

    iget-object v7, v2, Lads_mobile_sdk/ps0;->b:Lads_mobile_sdk/is0;

    iget-object v2, v2, Lads_mobile_sdk/ps0;->a:Lads_mobile_sdk/qs0;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v2

    move-object v12, v4

    move-object v11, v7

    goto :goto_9e

    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    iget-object v1, v0, Lads_mobile_sdk/qs0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    const-string v4, "key"

    const-string v9, "gads:firebase_analytics_integration:enabled"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v10, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v9, v4, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_65

    return-object p1

    .line 151
    :cond_65
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 152
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lads_mobile_sdk/qs0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v9}, Lads_mobile_sdk/ex0;->R()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v4, v9, v10, v11, v8}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 154
    iput-object v0, v2, Lads_mobile_sdk/ps0;->a:Lads_mobile_sdk/qs0;

    move-object/from16 v4, p2

    iput-object v4, v2, Lads_mobile_sdk/ps0;->b:Lads_mobile_sdk/is0;

    move-object/from16 v9, p3

    iput-object v9, v2, Lads_mobile_sdk/ps0;->c:Landroid/os/Bundle;

    iput-object v1, v2, Lads_mobile_sdk/ps0;->d:Landroid/net/Uri$Builder;

    iput v7, v2, Lads_mobile_sdk/ps0;->g:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/qs0;->a(Landroid/net/Uri$Builder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_9a

    return-object v3

    :cond_9a
    move-object v10, v0

    move-object v3, v1

    move-object v11, v4

    move-object v12, v9

    .line 155
    :goto_9e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    iget-object v1, v10, Lads_mobile_sdk/qs0;->a:Lads_mobile_sdk/ls0;

    .line 157
    const-string v2, "generateEventId"

    invoke-virtual {v1, v2}, Lads_mobile_sdk/ls0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_b2

    :cond_b1
    move-object v13, v8

    :goto_b2
    if-eqz v13, :cond_105

    .line 159
    iget-object v1, v10, Lads_mobile_sdk/qs0;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v9, Lads_mobile_sdk/os0;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lads_mobile_sdk/os0;-><init>(Lads_mobile_sdk/qs0;Lads_mobile_sdk/is0;Landroid/os/Bundle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 160
    sget-object v15, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 161
    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    new-instance v2, Lads_mobile_sdk/ws3;

    invoke-direct {v2, v9, v8}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object v14, v1

    move-object/from16 v17, v2

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 420
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lads_mobile_sdk/qs0;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Lads_mobile_sdk/ex0;->R()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object v15, v13

    move-object v13, v1

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 422
    const-string v2, "parse(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 425
    :cond_105
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 426
    :cond_10d
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
