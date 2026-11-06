###### Class ads_mobile_sdk.mk3 (ads_mobile_sdk.mk3)
.class public final Lads_mobile_sdk/mk3;
.super Lads_mobile_sdk/rp0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/q52;


# instance fields
.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/iz3;

.field public final h:Lads_mobile_sdk/v52;

.field public final i:Lads_mobile_sdk/nk3;

.field public final j:Lads_mobile_sdk/g83;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/iz3;Lads_mobile_sdk/v52;Lads_mobile_sdk/nk3;Lads_mobile_sdk/g83;)V
    .registers 9

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singletonNativeJavascriptEngineConfigurator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lads_mobile_sdk/rp0;-><init>()V

    .line 54
    iput-object p1, p0, Lads_mobile_sdk/mk3;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 55
    iput-object p2, p0, Lads_mobile_sdk/mk3;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 56
    iput-object p3, p0, Lads_mobile_sdk/mk3;->f:Lads_mobile_sdk/ex0;

    .line 57
    iput-object p4, p0, Lads_mobile_sdk/mk3;->g:Lads_mobile_sdk/iz3;

    .line 58
    iput-object p5, p0, Lads_mobile_sdk/mk3;->h:Lads_mobile_sdk/v52;

    .line 59
    iput-object p6, p0, Lads_mobile_sdk/mk3;->i:Lads_mobile_sdk/nk3;

    .line 61
    iput-object p7, p0, Lads_mobile_sdk/mk3;->j:Lads_mobile_sdk/g83;

    return-void
.end method

.method public static a(Lads_mobile_sdk/mk3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    instance-of v2, v1, Lads_mobile_sdk/kk3;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/kk3;

    iget v3, v2, Lads_mobile_sdk/kk3;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/kk3;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/kk3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/kk3;-><init>(Lads_mobile_sdk/mk3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/kk3;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 3
    iget v4, v2, Lads_mobile_sdk/kk3;->g:I

    const-string v5, "defaultValue"

    const-string v6, "key"

    const-string v7, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html"

    const-string v8, "gads:native:engine_url_with_protocol"

    const-string v9, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    packed-switch v4, :pswitch_data_2ec

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_39
    iget-object v0, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    iget-object v3, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    :try_start_41
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_46

    goto/16 :goto_262

    :catchall_46
    move-exception v0

    goto/16 :goto_2a6

    :pswitch_49
    iget-object v0, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    iget-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iget-object v9, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    :try_start_51
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_56

    goto/16 :goto_23a

    :catchall_56
    move-exception v0

    move-object v3, v4

    move-object v4, v9

    goto/16 :goto_2a6

    :pswitch_5b
    iget-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iget-object v13, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    :try_start_61
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_66

    goto/16 :goto_200

    :catchall_66
    move-exception v0

    goto/16 :goto_2ab

    :pswitch_69
    iget-object v0, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    iget-object v3, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    :try_start_71
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_76

    goto/16 :goto_151

    :catchall_76
    move-exception v0

    goto/16 :goto_195

    :pswitch_79
    iget-object v0, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    iget-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iget-object v9, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    :try_start_81
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_86

    goto/16 :goto_128

    :catchall_86
    move-exception v0

    move-object v3, v4

    move-object v4, v9

    goto/16 :goto_195

    :pswitch_8b
    iget-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iget-object v13, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    :try_start_91
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_ed

    :catchall_95
    move-exception v0

    move-object v3, v4

    move-object v4, v13

    goto/16 :goto_195

    :pswitch_9a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lads_mobile_sdk/mk3;->j:Lads_mobile_sdk/g83;

    .line 7
    sget-object v4, Lads_mobile_sdk/s11;->t0:Lads_mobile_sdk/s11;

    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 56
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 57
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 58
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    .line 59
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 60
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 61
    invoke-direct {v14, v15, v12, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 62
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 63
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/16 v11, 0xe

    if-nez v10, :cond_1d9

    .line 64
    invoke-static {v1, v4, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 65
    :try_start_cc
    iget-object v4, v0, Lads_mobile_sdk/mk3;->g:Lads_mobile_sdk/iz3;

    .line 66
    new-instance v10, Lads_mobile_sdk/v14;

    sget-object v12, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13, v13, v11}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 67
    iget-object v11, v0, Lads_mobile_sdk/mk3;->h:Lads_mobile_sdk/v52;

    iput-object v0, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    iput-object v1, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    const/4 v12, 0x1

    iput v12, v2, Lads_mobile_sdk/kk3;->g:I

    const/4 v13, 0x0

    .line 68
    invoke-virtual {v4, v10, v11, v13, v2}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_e6
    .catchall {:try_start_cc .. :try_end_e6} :catchall_197

    if-ne v4, v3, :cond_ea

    goto/16 :goto_25e

    :cond_ea
    move-object v13, v1

    move-object v1, v4

    move-object v4, v13

    .line 69
    :goto_ed
    :try_start_ed
    check-cast v1, Lads_mobile_sdk/v01;

    .line 127
    instance-of v10, v1, Lads_mobile_sdk/i01;

    if-eqz v10, :cond_101

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v0, 0x0

    .line 128
    invoke-static {v1, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 129
    invoke-static {v1, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_fc
    .catchall {:try_start_ed .. :try_end_fc} :catchall_95

    const/4 v0, 0x0

    .line 130
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 134
    :cond_101
    :try_start_101
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    .line 135
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 136
    check-cast v1, Lads_mobile_sdk/r31;

    const/4 v12, 0x1

    .line 140
    invoke-virtual {v1, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 141
    iget-object v9, v0, Lads_mobile_sdk/mk3;->i:Lads_mobile_sdk/nk3;

    iget-object v10, v0, Lads_mobile_sdk/mk3;->h:Lads_mobile_sdk/v52;

    iput-object v0, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    iput-object v13, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    const/4 v11, 0x2

    iput v11, v2, Lads_mobile_sdk/kk3;->g:I

    invoke-virtual {v9, v10, v2}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_121
    .catchall {:try_start_101 .. :try_end_121} :catchall_95

    if-ne v9, v3, :cond_125

    goto/16 :goto_25e

    :cond_125
    move-object v10, v0

    move-object v0, v1

    move-object v9, v13

    .line 143
    :goto_128
    :try_start_128
    iget-object v1, v10, Lads_mobile_sdk/mk3;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v5, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v1, v8, v7, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    iput-object v10, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    iput-object v9, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    const/4 v5, 0x3

    iput v5, v2, Lads_mobile_sdk/kk3;->g:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_14a
    .catchall {:try_start_128 .. :try_end_14a} :catchall_86

    if-ne v1, v3, :cond_14e

    goto/16 :goto_25e

    :cond_14e
    move-object v3, v4

    move-object v4, v9

    move-object v2, v10

    .line 189
    :goto_151
    :try_start_151
    check-cast v1, Lads_mobile_sdk/v01;

    .line 204
    instance-of v5, v1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_170

    .line 205
    iget-object v6, v2, Lads_mobile_sdk/mk3;->d:Lkotlinx/coroutines/CoroutineScope;

    sget-object v7, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v9, Lads_mobile_sdk/lk3;

    const/4 v2, 0x0

    invoke-direct {v9, v0, v2}, Lads_mobile_sdk/lk3;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 206
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v13, 0x0

    .line 207
    invoke-static {v0, v13}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    :goto_16e
    const/4 v0, 0x0

    goto :goto_191

    .line 208
    :cond_170
    new-instance v1, Lads_mobile_sdk/q01;

    .line 209
    new-instance v16, Lads_mobile_sdk/fl1;

    iget-object v5, v2, Lads_mobile_sdk/mk3;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v2, Lads_mobile_sdk/mk3;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v2, Lads_mobile_sdk/mk3;->j:Lads_mobile_sdk/g83;

    iget-object v2, v2, Lads_mobile_sdk/mk3;->f:Lads_mobile_sdk/ex0;

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 210
    invoke-direct/range {v16 .. v22}, Lads_mobile_sdk/fl1;-><init>(Lads_mobile_sdk/r31;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Z)V

    move-object/from16 v0, v16

    .line 211
    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_190
    .catchall {:try_start_151 .. :try_end_190} :catchall_76

    goto :goto_16e

    .line 212
    :goto_191
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_195
    move-object v1, v4

    goto :goto_199

    :catchall_197
    move-exception v0

    move-object v3, v1

    .line 262
    :goto_199
    :try_start_199
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 266
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1d2

    .line 268
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1af

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1af

    .line 274
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1af

    :catchall_1ac
    move-exception v0

    move-object v1, v0

    goto :goto_1d3

    .line 280
    :cond_1af
    :goto_1af
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1ca

    .line 281
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1c2

    .line 282
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1bc

    throw v0

    .line 283
    :cond_1bc
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 284
    :cond_1c2
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 285
    :cond_1ca
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 286
    :cond_1d2
    throw v0
    :try_end_1d3
    .catchall {:try_start_199 .. :try_end_1d3} :catchall_1ac

    .line 287
    :goto_1d3
    :try_start_1d3
    throw v1
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_1d4

    :catchall_1d4
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 323
    :cond_1d9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v12, 0x1

    invoke-static {v4, v1, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 324
    :try_start_1e2
    iget-object v1, v0, Lads_mobile_sdk/mk3;->g:Lads_mobile_sdk/iz3;

    .line 325
    new-instance v10, Lads_mobile_sdk/v14;

    sget-object v12, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13, v13, v11}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 326
    iget-object v11, v0, Lads_mobile_sdk/mk3;->h:Lads_mobile_sdk/v52;

    iput-object v0, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    iput-object v4, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    const/4 v12, 0x4

    iput v12, v2, Lads_mobile_sdk/kk3;->g:I

    const/4 v13, 0x0

    .line 327
    invoke-virtual {v1, v10, v11, v13, v2}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1fc
    .catchall {:try_start_1e2 .. :try_end_1fc} :catchall_2a9

    if-ne v1, v3, :cond_1ff

    goto :goto_25e

    :cond_1ff
    move-object v13, v4

    .line 328
    :goto_200
    :try_start_200
    check-cast v1, Lads_mobile_sdk/v01;

    .line 386
    instance-of v10, v1, Lads_mobile_sdk/i01;

    if-eqz v10, :cond_214

    check-cast v1, Lads_mobile_sdk/i01;

    const/4 v0, 0x0

    .line 387
    invoke-static {v1, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 388
    invoke-static {v1, v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_20f
    .catchall {:try_start_200 .. :try_end_20f} :catchall_66

    const/4 v0, 0x0

    .line 389
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 390
    :cond_214
    :try_start_214
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;

    .line 391
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 392
    check-cast v1, Lads_mobile_sdk/r31;

    const/4 v12, 0x1

    .line 396
    invoke-virtual {v1, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 397
    iget-object v9, v0, Lads_mobile_sdk/mk3;->i:Lads_mobile_sdk/nk3;

    iget-object v10, v0, Lads_mobile_sdk/mk3;->h:Lads_mobile_sdk/v52;

    iput-object v0, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    iput-object v13, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    const/4 v11, 0x5

    iput v11, v2, Lads_mobile_sdk/kk3;->g:I

    invoke-virtual {v9, v10, v2}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_234
    .catchall {:try_start_214 .. :try_end_234} :catchall_66

    if-ne v9, v3, :cond_237

    goto :goto_25e

    :cond_237
    move-object v10, v0

    move-object v0, v1

    move-object v9, v13

    .line 399
    :goto_23a
    :try_start_23a
    iget-object v1, v10, Lads_mobile_sdk/mk3;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    sget-object v5, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v1, v8, v7, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 444
    iput-object v10, v2, Lads_mobile_sdk/kk3;->a:Lads_mobile_sdk/mk3;

    iput-object v9, v2, Lads_mobile_sdk/kk3;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/kk3;->c:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/kk3;->d:Lads_mobile_sdk/r31;

    const/4 v5, 0x6

    iput v5, v2, Lads_mobile_sdk/kk3;->g:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_25c
    .catchall {:try_start_23a .. :try_end_25c} :catchall_56

    if-ne v1, v3, :cond_25f

    :goto_25e
    return-object v3

    :cond_25f
    move-object v3, v4

    move-object v4, v9

    move-object v2, v10

    .line 445
    :goto_262
    :try_start_262
    check-cast v1, Lads_mobile_sdk/v01;

    .line 460
    instance-of v5, v1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_281

    .line 461
    iget-object v6, v2, Lads_mobile_sdk/mk3;->d:Lkotlinx/coroutines/CoroutineScope;

    sget-object v7, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v9, Lads_mobile_sdk/lk3;

    const/4 v2, 0x0

    invoke-direct {v9, v0, v2}, Lads_mobile_sdk/lk3;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 462
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v13, 0x0

    .line 463
    invoke-static {v0, v13}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    :goto_27f
    const/4 v0, 0x0

    goto :goto_2a2

    .line 464
    :cond_281
    new-instance v1, Lads_mobile_sdk/q01;

    .line 465
    new-instance v16, Lads_mobile_sdk/fl1;

    iget-object v5, v2, Lads_mobile_sdk/mk3;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v2, Lads_mobile_sdk/mk3;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v2, Lads_mobile_sdk/mk3;->j:Lads_mobile_sdk/g83;

    iget-object v2, v2, Lads_mobile_sdk/mk3;->f:Lads_mobile_sdk/ex0;

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 466
    invoke-direct/range {v16 .. v22}, Lads_mobile_sdk/fl1;-><init>(Lads_mobile_sdk/r31;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Z)V

    move-object/from16 v0, v16

    .line 467
    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_2a1
    .catchall {:try_start_262 .. :try_end_2a1} :catchall_46

    goto :goto_27f

    .line 468
    :goto_2a2
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_2a6
    move-object v13, v4

    move-object v4, v3

    goto :goto_2ab

    :catchall_2a9
    move-exception v0

    move-object v13, v4

    .line 555
    :goto_2ab
    :try_start_2ab
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 559
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_2e4

    .line 561
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2c1

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2c1

    .line 567
    invoke-virtual {v13, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2c1

    :catchall_2be
    move-exception v0

    move-object v1, v0

    goto :goto_2e5

    .line 573
    :cond_2c1
    :goto_2c1
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2dc

    .line 574
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2d4

    .line 575
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2ce

    throw v0

    .line 576
    :cond_2ce
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 577
    :cond_2d4
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 578
    :cond_2dc
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 579
    :cond_2e4
    throw v0
    :try_end_2e5
    .catchall {:try_start_2ab .. :try_end_2e5} :catchall_2be

    .line 580
    :goto_2e5
    :try_start_2e5
    throw v1
    :try_end_2e6
    .catchall {:try_start_2e5 .. :try_end_2e6} :catchall_2e6

    :catchall_2e6
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_2ec
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_8b
        :pswitch_79
        :pswitch_69
        :pswitch_5b
        :pswitch_49
        :pswitch_39
    .end packed-switch
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/nr1;
    .registers 2

    .line 582
    iget-object v0, p0, Lads_mobile_sdk/mk3;->h:Lads_mobile_sdk/v52;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lads_mobile_sdk/mk3;->a(Lads_mobile_sdk/mk3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
