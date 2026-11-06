###### Class ads_mobile_sdk.dx3 (ads_mobile_sdk.dx3)
.class public final Lads_mobile_sdk/dx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zw3;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lads_mobile_sdk/jw0;

.field public d:Lkotlinx/coroutines/CoroutineScope;

.field public e:Lkotlinx/coroutines/CoroutineScope;

.field public f:Lads_mobile_sdk/g83;

.field public g:Lads_mobile_sdk/ex0;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public final i:Lkotlinx/coroutines/CompletableJob;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/jw0;)V
    .registers 5

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagDataStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lads_mobile_sdk/dx3;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lads_mobile_sdk/dx3;->b:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lads_mobile_sdk/dx3;->c:Lads_mobile_sdk/jw0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 71
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/dx3;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 73
    invoke-static {p3, p2, p3}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/dx3;->i:Lkotlinx/coroutines/CompletableJob;

    return-void
.end method

.method public static a(Lads_mobile_sdk/dx3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    instance-of v2, v1, Lads_mobile_sdk/ax3;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ax3;

    iget v3, v2, Lads_mobile_sdk/ax3;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ax3;->f:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ax3;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ax3;-><init>(Lads_mobile_sdk/dx3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/ax3;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 105
    iget v4, v2, Lads_mobile_sdk/ax3;->f:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_7e

    if-eq v4, v8, :cond_70

    if-eq v4, v7, :cond_63

    if-eq v4, v6, :cond_4b

    if-ne v4, v5, :cond_43

    iget-object v0, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/dx3;

    iget-object v2, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_3b
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    goto/16 :goto_14e

    :catchall_40
    move-exception v0

    goto/16 :goto_161

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_4b
    iget-object v0, v2, Lads_mobile_sdk/ax3;->c:Lkotlinx/coroutines/Deferred;

    iget-object v4, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    check-cast v6, Lads_mobile_sdk/dx3;

    :try_start_55
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5f

    move-object/from16 v16, v6

    move-object v6, v4

    move-object/from16 v4, v16

    goto/16 :goto_128

    :catchall_5f
    move-exception v0

    move-object v2, v4

    goto/16 :goto_161

    .line 107
    :cond_63
    iget-object v0, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/dx3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_aa

    :cond_70
    iget-object v0, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/dx3;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v4

    goto :goto_91

    :cond_7e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    iget-object v1, v0, Lads_mobile_sdk/dx3;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 183
    iput-object v0, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    iput v8, v2, Lads_mobile_sdk/ax3;->f:I

    invoke-interface {v1, v9, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_91

    goto/16 :goto_14b

    .line 184
    :cond_91
    :goto_91
    :try_start_91
    iget-object v4, v0, Lads_mobile_sdk/dx3;->j:Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_166

    .line 262
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v4, :cond_99

    return-object v4

    .line 263
    :cond_99
    iget-object v1, v0, Lads_mobile_sdk/dx3;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 343
    iput-object v0, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/ax3;->f:I

    invoke-interface {v1, v9, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_a9

    goto/16 :goto_14b

    :cond_a9
    move-object v4, v0

    .line 344
    :goto_aa
    :try_start_aa
    iget-object v0, v4, Lads_mobile_sdk/dx3;->j:Ljava/lang/String;

    if-nez v0, :cond_15d

    .line 348
    iget-object v0, v4, Lads_mobile_sdk/dx3;->g:Lads_mobile_sdk/ex0;

    if-nez v0, :cond_bd

    const-string v0, "flags"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_bd

    :catchall_b9
    move-exception v0

    move-object v2, v1

    goto/16 :goto_161

    .line 349
    :cond_bd
    :goto_bd
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    const-string v7, "gads:webview_initialization_executor:enabled"

    .line 351
    const-string v8, "key"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v7, v8, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 368
    iget-object v0, v4, Lads_mobile_sdk/dx3;->e:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_e1

    const-string v0, "webViewInitializationScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_ec

    :cond_e1
    move-object v10, v0

    goto :goto_ed

    .line 370
    :cond_e3
    iget-object v0, v4, Lads_mobile_sdk/dx3;->d:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_e1

    const-string v0, "backgroundScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :goto_ec
    move-object v10, v9

    .line 373
    :goto_ed
    new-instance v0, Lads_mobile_sdk/cx3;

    invoke-direct {v0, v4, v10, v9}, Lads_mobile_sdk/cx3;-><init>(Lads_mobile_sdk/dx3;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    .line 374
    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 375
    const-string v7, "<this>"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "context"

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "block"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    new-instance v13, Lads_mobile_sdk/vs3;

    invoke-direct {v13, v0, v9}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 624
    iget-object v7, v4, Lads_mobile_sdk/dx3;->c:Lads_mobile_sdk/jw0;

    iput-object v4, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    iput-object v1, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/ax3;->c:Lkotlinx/coroutines/Deferred;

    iput v6, v2, Lads_mobile_sdk/ax3;->f:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    invoke-static {v7, v2}, Lads_mobile_sdk/jw0;->b(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_120
    .catchall {:try_start_aa .. :try_end_120} :catchall_b9

    if-ne v6, v3, :cond_123

    goto :goto_14b

    :cond_123
    move-object/from16 v16, v6

    move-object v6, v1

    move-object/from16 v1, v16

    .line 626
    :goto_128
    :try_start_128
    check-cast v1, Lads_mobile_sdk/vv0;

    invoke-virtual {v1}, Lads_mobile_sdk/vv0;->v()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_13d

    .line 628
    invoke-virtual {v4, v1}, Lads_mobile_sdk/dx3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v6

    goto :goto_15d

    .line 632
    :cond_13d
    iput-object v6, v2, Lads_mobile_sdk/ax3;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ax3;->b:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/ax3;->c:Lkotlinx/coroutines/Deferred;

    iput v5, v2, Lads_mobile_sdk/ax3;->f:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_149
    .catchall {:try_start_128 .. :try_end_149} :catchall_15b

    if-ne v1, v3, :cond_14c

    :goto_14b
    return-object v3

    :cond_14c
    move-object v0, v4

    move-object v2, v6

    .line 633
    :goto_14e
    :try_start_14e
    const-string v3, "await(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/dx3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_159
    .catchall {:try_start_14e .. :try_end_159} :catchall_40

    move-object v1, v2

    goto :goto_15d

    :catchall_15b
    move-exception v0

    goto :goto_162

    .line 674
    :cond_15d
    :goto_15d
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_161
    move-object v6, v2

    .line 675
    :goto_162
    invoke-interface {v6, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_166
    move-exception v0

    .line 676
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5

    .line 678
    iget-object v0, p0, Lads_mobile_sdk/dx3;->h:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->tryLock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 680
    :try_start_a
    iget-object v0, p0, Lads_mobile_sdk/dx3;->j:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_12

    .line 682
    iget-object v3, p0, Lads_mobile_sdk/dx3;->h:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v3, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0

    :catchall_12
    move-exception v0

    iget-object v3, p0, Lads_mobile_sdk/dx3;->h:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v3, v1, v2, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    throw v0

    :cond_19
    return-object v1
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-static {p0, p1}, Lads_mobile_sdk/dx3;->a(Lads_mobile_sdk/dx3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 843
    iget-object v0, p0, Lads_mobile_sdk/dx3;->g:Lads_mobile_sdk/ex0;

    if-nez v0, :cond_a

    const-string v0, "flags"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->A0()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 844
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Build/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 847
    const-string v5, "Android 10; K"

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_42
    move-object v4, p1

    .line 850
    :goto_43
    iget-object v0, p0, Lads_mobile_sdk/dx3;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (Mobile; "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 851
    iput-object p1, p0, Lads_mobile_sdk/dx3;->j:Ljava/lang/String;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/dx3;->i:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
