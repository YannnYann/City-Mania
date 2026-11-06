###### Class ads_mobile_sdk.n72 (ads_mobile_sdk.n72)
.class public final Lads_mobile_sdk/n72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/g83;

.field public final b:Lads_mobile_sdk/iz3;

.field public final c:Lads_mobile_sdk/d72;

.field public d:Lads_mobile_sdk/r31;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/iz3;Lads_mobile_sdk/d72;)V
    .registers 5

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeOnePointFiveClickOverlayConfigurator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lads_mobile_sdk/n72;->a:Lads_mobile_sdk/g83;

    .line 22
    iput-object p2, p0, Lads_mobile_sdk/n72;->b:Lads_mobile_sdk/iz3;

    .line 23
    iput-object p3, p0, Lads_mobile_sdk/n72;->c:Lads_mobile_sdk/d72;

    return-void
.end method

.method public static a(Lads_mobile_sdk/n72;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lads_mobile_sdk/l72;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/l72;

    iget v3, v2, Lads_mobile_sdk/l72;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/l72;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/l72;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/l72;-><init>(Lads_mobile_sdk/n72;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/l72;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 29
    iget v4, v2, Lads_mobile_sdk/l72;->g:I

    const-string v6, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_7d

    if-eq v4, v10, :cond_70

    if-eq v4, v9, :cond_5e

    if-eq v4, v8, :cond_50

    if-ne v4, v7, :cond_48

    iget-object v0, v2, Lads_mobile_sdk/l72;->d:Lads_mobile_sdk/r31;

    iget-object v3, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    :try_start_3e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_45

    :goto_41
    const/16 v1, 0x8

    goto/16 :goto_1b6

    :catchall_45
    move-exception v0

    goto/16 :goto_1d4

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_50
    iget-object v4, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    iget-object v8, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    :try_start_56
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5b

    goto/16 :goto_186

    :catchall_5b
    move-exception v0

    goto/16 :goto_1d9

    .line 31
    :cond_5e
    iget-object v0, v2, Lads_mobile_sdk/l72;->d:Lads_mobile_sdk/r31;

    iget-object v3, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    iget-object v4, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    :try_start_66
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    :goto_69
    const/16 v1, 0x8

    goto/16 :goto_fb

    :catchall_6d
    move-exception v0

    goto/16 :goto_119

    .line 32
    :cond_70
    iget-object v4, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    iget-object v7, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    :try_start_76
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_cb

    :catchall_7a
    move-exception v0

    goto/16 :goto_11e

    .line 33
    :cond_7d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-object v1, v0, Lads_mobile_sdk/n72;->a:Lads_mobile_sdk/g83;

    .line 35
    sget-object v4, Lads_mobile_sdk/s11;->d1:Lads_mobile_sdk/s11;

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 63
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 64
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 65
    new-instance v7, Lads_mobile_sdk/tn1;

    invoke-direct {v7}, Lads_mobile_sdk/tn1;-><init>()V

    .line 66
    new-instance v8, Lads_mobile_sdk/m33;

    invoke-direct {v8}, Lads_mobile_sdk/m33;-><init>()V

    .line 67
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 68
    invoke-direct {v14, v15, v7, v8, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 69
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 70
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/16 v7, 0xe

    if-nez v5, :cond_162

    .line 71
    invoke-static {v1, v4, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 72
    :try_start_af
    iget-object v4, v0, Lads_mobile_sdk/n72;->b:Lads_mobile_sdk/iz3;

    .line 73
    new-instance v5, Lads_mobile_sdk/v14;

    sget-object v8, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    invoke-direct {v5, v8, v11, v11, v7}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 74
    iput-object v0, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    iput-object v1, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    iput v10, v2, Lads_mobile_sdk/l72;->g:I

    invoke-virtual {v4, v5, v12, v10, v2}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_c4
    .catchall {:try_start_af .. :try_end_c4} :catchall_120

    if-ne v4, v3, :cond_c8

    goto/16 :goto_1af

    :cond_c8
    move-object v7, v1

    move-object v1, v4

    move-object v4, v7

    .line 75
    :goto_cb
    :try_start_cb
    check-cast v1, Lads_mobile_sdk/v01;

    .line 110
    instance-of v5, v1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_d4

    check-cast v1, Lads_mobile_sdk/i01;

    goto :goto_107

    .line 111
    :cond_d4
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;
    :try_end_d9
    .catchall {:try_start_cb .. :try_end_d9} :catchall_7a

    .line 112
    :try_start_d9
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;
    :try_end_db
    .catchall {:try_start_d9 .. :try_end_db} :catchall_112

    .line 113
    :try_start_db
    check-cast v1, Lads_mobile_sdk/r31;

    .line 117
    iget-object v5, v0, Lads_mobile_sdk/n72;->c:Lads_mobile_sdk/d72;

    invoke-virtual {v1}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v6
    :try_end_e3
    .catchall {:try_start_db .. :try_end_e3} :catchall_7a

    :try_start_e3
    iput-object v0, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    iput-object v7, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/l72;->d:Lads_mobile_sdk/r31;
    :try_end_eb
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_112

    :try_start_eb
    iput v9, v2, Lads_mobile_sdk/l72;->g:I
    :try_end_ed
    .catchall {:try_start_eb .. :try_end_ed} :catchall_7a

    :try_start_ed
    invoke-virtual {v5, v6, v2}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_112

    if-ne v2, v3, :cond_f5

    goto/16 :goto_1af

    :cond_f5
    move-object v2, v0

    move-object v0, v1

    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_69

    .line 119
    :goto_fb
    :try_start_fb
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iput-object v0, v2, Lads_mobile_sdk/n72;->d:Lads_mobile_sdk/r31;

    .line 122
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_105
    .catchall {:try_start_fb .. :try_end_105} :catchall_6d

    move-object v7, v4

    move-object v4, v3

    .line 145
    :goto_107
    :try_start_107
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_115

    .line 146
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;
    :try_end_10e
    .catchall {:try_start_107 .. :try_end_10e} :catchall_7a

    .line 147
    :try_start_10e
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_115

    :catchall_112
    move-exception v0

    move-object v1, v4

    goto :goto_11b

    .line 148
    :cond_115
    :goto_115
    invoke-static {v4, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_119
    move-object v1, v4

    goto :goto_122

    :goto_11b
    move-object v3, v1

    :goto_11c
    move-object v1, v7

    goto :goto_122

    :goto_11e
    move-object v3, v4

    goto :goto_11c

    :catchall_120
    move-exception v0

    move-object v3, v1

    .line 158
    :goto_122
    :try_start_122
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 162
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_15b

    .line 164
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_138

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_138

    .line 170
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_138

    :catchall_135
    move-exception v0

    move-object v1, v0

    goto :goto_15c

    .line 176
    :cond_138
    :goto_138
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_153

    .line 177
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_14b

    .line 178
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_145

    throw v0

    .line 179
    :cond_145
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 180
    :cond_14b
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 181
    :cond_153
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 182
    :cond_15b
    throw v0
    :try_end_15c
    .catchall {:try_start_122 .. :try_end_15c} :catchall_135

    .line 183
    :goto_15c
    :try_start_15c
    throw v1
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15d

    :catchall_15d
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 219
    :cond_162
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 220
    :try_start_16a
    iget-object v4, v0, Lads_mobile_sdk/n72;->b:Lads_mobile_sdk/iz3;

    .line 221
    new-instance v5, Lads_mobile_sdk/v14;

    sget-object v8, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    invoke-direct {v5, v8, v11, v11, v7}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 222
    iput-object v0, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    iput-object v1, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iput-object v1, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    const/4 v7, 0x3

    iput v7, v2, Lads_mobile_sdk/l72;->g:I

    invoke-virtual {v4, v5, v12, v10, v2}, Lads_mobile_sdk/iz3;->a(Lads_mobile_sdk/v14;Lads_mobile_sdk/v52;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_180
    .catchall {:try_start_16a .. :try_end_180} :catchall_1db

    if-ne v4, v3, :cond_183

    goto :goto_1af

    :cond_183
    move-object v8, v1

    move-object v1, v4

    move-object v4, v8

    .line 223
    :goto_186
    :try_start_186
    check-cast v1, Lads_mobile_sdk/v01;

    .line 258
    instance-of v5, v1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_18f

    check-cast v1, Lads_mobile_sdk/i01;

    goto :goto_1c2

    .line 259
    :cond_18f
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/q01;
    :try_end_194
    .catchall {:try_start_186 .. :try_end_194} :catchall_5b

    .line 260
    :try_start_194
    iget-object v1, v1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;
    :try_end_196
    .catchall {:try_start_194 .. :try_end_196} :catchall_1cd

    .line 261
    :try_start_196
    check-cast v1, Lads_mobile_sdk/r31;

    .line 265
    iget-object v5, v0, Lads_mobile_sdk/n72;->c:Lads_mobile_sdk/d72;

    invoke-virtual {v1}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v6
    :try_end_19e
    .catchall {:try_start_196 .. :try_end_19e} :catchall_5b

    :try_start_19e
    iput-object v0, v2, Lads_mobile_sdk/l72;->a:Lads_mobile_sdk/n72;

    iput-object v8, v2, Lads_mobile_sdk/l72;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v2, Lads_mobile_sdk/l72;->c:Ljava/io/Closeable;

    iput-object v1, v2, Lads_mobile_sdk/l72;->d:Lads_mobile_sdk/r31;
    :try_end_1a6
    .catchall {:try_start_19e .. :try_end_1a6} :catchall_1cd

    const/4 v7, 0x4

    :try_start_1a7
    iput v7, v2, Lads_mobile_sdk/l72;->g:I
    :try_end_1a9
    .catchall {:try_start_1a7 .. :try_end_1a9} :catchall_5b

    :try_start_1a9
    invoke-virtual {v5, v6, v2}, Lads_mobile_sdk/pr1;->a(Lads_mobile_sdk/nr1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1ad
    .catchall {:try_start_1a9 .. :try_end_1ad} :catchall_1cd

    if-ne v2, v3, :cond_1b0

    :goto_1af
    return-object v3

    :cond_1b0
    move-object v2, v0

    move-object v0, v1

    move-object v3, v4

    move-object v4, v8

    goto/16 :goto_41

    .line 267
    :goto_1b6
    :try_start_1b6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iput-object v0, v2, Lads_mobile_sdk/n72;->d:Lads_mobile_sdk/r31;

    .line 270
    new-instance v1, Lads_mobile_sdk/q01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_1c0
    .catchall {:try_start_1b6 .. :try_end_1c0} :catchall_45

    move-object v8, v4

    move-object v4, v3

    .line 330
    :goto_1c2
    :try_start_1c2
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_1d0

    .line 331
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;
    :try_end_1c9
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_5b

    .line 332
    :try_start_1c9
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1cc
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1cd

    goto :goto_1d0

    :catchall_1cd
    move-exception v0

    move-object v1, v4

    goto :goto_1d6

    .line 333
    :cond_1d0
    :goto_1d0
    invoke-static {v4, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :goto_1d4
    move-object v1, v4

    goto :goto_1dd

    :goto_1d6
    move-object v3, v1

    :goto_1d7
    move-object v1, v8

    goto :goto_1dd

    :goto_1d9
    move-object v3, v4

    goto :goto_1d7

    :catchall_1db
    move-exception v0

    move-object v3, v1

    .line 341
    :goto_1dd
    :try_start_1dd
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 345
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_216

    .line 347
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1f3

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1f3

    .line 353
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1f3

    :catchall_1f0
    move-exception v0

    move-object v1, v0

    goto :goto_217

    .line 359
    :cond_1f3
    :goto_1f3
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_20e

    .line 360
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_206

    .line 361
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_200

    throw v0

    .line 362
    :cond_200
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 363
    :cond_206
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 364
    :cond_20e
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 365
    :cond_216
    throw v0
    :try_end_217
    .catchall {:try_start_1dd .. :try_end_217} :catchall_1f0

    .line 366
    :goto_217
    :try_start_217
    throw v1
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_218

    :catchall_218
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic b(Lads_mobile_sdk/n72;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/m72;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/m72;

    iget v1, v0, Lads_mobile_sdk/m72;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m72;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/m72;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/m72;-><init>(Lads_mobile_sdk/n72;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/m72;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, v0, Lads_mobile_sdk/m72;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lads_mobile_sdk/m72;->a:Lads_mobile_sdk/n72;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lads_mobile_sdk/n72;->d:Lads_mobile_sdk/r31;

    if-eqz p1, :cond_45

    iput-object p0, v0, Lads_mobile_sdk/m72;->a:Lads_mobile_sdk/n72;

    iput v3, v0, Lads_mobile_sdk/m72;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/r31;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_45

    return-object v1

    :cond_45
    :goto_45
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lads_mobile_sdk/n72;->d:Lads_mobile_sdk/r31;

    .line 51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
