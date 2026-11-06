###### Class ads_mobile_sdk.r31 (ads_mobile_sdk.r31)
.class public final Lads_mobile_sdk/r31;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/mb0;

.field public final e:Lads_mobile_sdk/ur3;

.field public final f:Lads_mobile_sdk/rb;

.field public final g:Lads_mobile_sdk/dz3;

.field public final h:Lads_mobile_sdk/w61;

.field public final i:Lads_mobile_sdk/ex0;

.field public final j:Lads_mobile_sdk/qn;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:Lads_mobile_sdk/ay0;

.field public volatile q:Lads_mobile_sdk/g33;

.field public r:Lads_mobile_sdk/q41;

.field public s:Lads_mobile_sdk/v14;

.field public t:I

.field public u:Lads_mobile_sdk/tu1;

.field public final v:Lads_mobile_sdk/ir3;

.field public w:Lads_mobile_sdk/ir3;

.field public final x:Landroid/util/DisplayMetrics;

.field public y:Lads_mobile_sdk/nr1;

.field public z:Lads_mobile_sdk/g41;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/mb0;Lads_mobile_sdk/ur3;Lads_mobile_sdk/rb;Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/v14;Lads_mobile_sdk/dz3;Lads_mobile_sdk/w61;Lads_mobile_sdk/ex0;Lads_mobile_sdk/qn;)V
    .registers 15

    .line 1
    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webViewCompatWrapper"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "htmlUtil"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p1, p0, Lads_mobile_sdk/r31;->a:Lkotlin/coroutines/CoroutineContext;

    .line 72
    iput-object p2, p0, Lads_mobile_sdk/r31;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 73
    iput-object p3, p0, Lads_mobile_sdk/r31;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 74
    iput-object p4, p0, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    .line 75
    iput-object p5, p0, Lads_mobile_sdk/r31;->e:Lads_mobile_sdk/ur3;

    .line 76
    iput-object p6, p0, Lads_mobile_sdk/r31;->f:Lads_mobile_sdk/rb;

    .line 80
    iput-object p10, p0, Lads_mobile_sdk/r31;->g:Lads_mobile_sdk/dz3;

    .line 81
    iput-object p11, p0, Lads_mobile_sdk/r31;->h:Lads_mobile_sdk/w61;

    .line 82
    iput-object p12, p0, Lads_mobile_sdk/r31;->i:Lads_mobile_sdk/ex0;

    .line 83
    iput-object p13, p0, Lads_mobile_sdk/r31;->j:Lads_mobile_sdk/qn;

    .line 86
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/r31;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/r31;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/r31;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/r31;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    iput-object p9, p0, Lads_mobile_sdk/r31;->s:Lads_mobile_sdk/v14;

    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lads_mobile_sdk/r31;->t:I

    .line 134
    new-instance p1, Lads_mobile_sdk/q31;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/q31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x1

    invoke-static {p3, p1, p4, p3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ir3;

    iput-object p1, p0, Lads_mobile_sdk/r31;->v:Lads_mobile_sdk/ir3;

    .line 139
    invoke-static {p7}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/r31;->x:Landroid/util/DisplayMetrics;

    .line 144
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/r31;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 147
    new-instance p1, Lads_mobile_sdk/v21;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/v21;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, p1, p4, p3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 152
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 p5, 0x2

    .line 153
    invoke-virtual {p1, p5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 156
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 157
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/16 p5, 0x64

    .line 158
    invoke-virtual {p1, p5}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 159
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 160
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 163
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 164
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 165
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 166
    invoke-virtual {p1, p4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 167
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 168
    invoke-virtual {p1, p8}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p12}, Lads_mobile_sdk/ex0;->u()Z

    move-result p1

    if-eqz p1, :cond_da

    .line 171
    invoke-virtual {p0, p4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 176
    :cond_da
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 179
    invoke-virtual {p0, p2, p3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 181
    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 182
    const-string p1, "accessibilityTraversal"

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    invoke-virtual {p12}, Lads_mobile_sdk/ex0;->F()Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 185
    invoke-virtual {p0, p2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_f6
    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .registers 13

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    move-object v2, p2

    .line 2194
    const-string v3, "text/html"

    .line 2195
    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    move-object v6, p4

    .line 2196
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/r31;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1023
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lads_mobile_sdk/r31;->t:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 602
    sget-object p2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dispatching AFMA event: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0, p1, p3}, Lads_mobile_sdk/r31;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3f

    return-object p1

    :cond_3f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/cg1;)Ljava/lang/Object;
    .registers 5

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.inspectorInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/r31;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_26

    return-object p1

    :cond_26
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    .line 1026
    instance-of v2, v0, Lads_mobile_sdk/g31;

    if-eqz v2, :cond_18

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/g31;

    iget v3, v2, Lads_mobile_sdk/g31;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_18

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/g31;->g:I

    :goto_16
    move-object v7, v2

    goto :goto_1e

    :cond_18
    new-instance v2, Lads_mobile_sdk/g31;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/g31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v0, v7, Lads_mobile_sdk/g31;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 1275
    iget v2, v7, Lads_mobile_sdk/g31;->g:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_a5

    if-eq v2, v14, :cond_8d

    if-eq v2, v12, :cond_6a

    if-eq v2, v11, :cond_5b

    if-eq v2, v10, :cond_50

    if-eq v2, v9, :cond_41

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v2, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iget-object v4, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_4b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_1e2

    goto/16 :goto_1e6

    .line 1276
    :cond_50
    iget-object v2, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/v01;

    iget-object v3, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iget-object v4, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    goto :goto_65

    .line 1277
    :cond_5b
    iget-object v2, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/v01;

    iget-object v3, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iget-object v4, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    .line 1276
    :goto_65
    :try_start_65
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_1e2

    goto/16 :goto_1b1

    .line 1278
    :cond_6a
    iget-object v2, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v4, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/r31;

    :try_start_76
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_87
    .catchall {:try_start_76 .. :try_end_79} :catchall_80

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_141

    :catchall_80
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    :goto_84
    move-object v2, v0

    goto/16 :goto_1c5

    :catch_87
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_180

    .line 1279
    :cond_8d
    iget-object v2, v7, Lads_mobile_sdk/g31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v3, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    iget-object v4, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    check-cast v4, Lads_mobile_sdk/rr3;

    iget-object v5, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/r31;

    :try_start_9b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_a2
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a0

    goto/16 :goto_12d

    :catchall_a0
    move-exception v0

    goto :goto_84

    :catch_a2
    move-exception v0

    goto/16 :goto_180

    .line 1280
    :cond_a5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p5, :cond_bc

    .line 1289
    iget-object v0, v1, Lads_mobile_sdk/r31;->h:Lads_mobile_sdk/w61;

    invoke-virtual {v0}, Lads_mobile_sdk/w61;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lads_mobile_sdk/w61;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_bf

    :cond_bc
    move-object/from16 v2, p1

    move-object v4, v2

    .line 1675
    :goto_bf
    sget-object v0, Lads_mobile_sdk/s11;->Q:Lads_mobile_sdk/s11;

    .line 1677
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2, v14}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 1683
    :try_start_cb
    iget-object v0, v1, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d8

    sget-object v2, Lads_mobile_sdk/u01;->c:Lads_mobile_sdk/u01;

    move-object v4, v3

    goto/16 :goto_1b1

    .line 1685
    :cond_d8
    invoke-static {v15, v14, v15}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 1686
    invoke-virtual {v1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1687
    const-string v5, "completableDeferred"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1688
    iget-object v5, v2, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    sget-object v6, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    aget-object v9, v6, v13

    invoke-virtual {v5, v2, v9}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v5, :cond_fe

    .line 1689
    invoke-static {v5, v15, v14, v15}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_fe

    :catchall_fa
    move-exception v0

    move-object v13, v3

    goto/16 :goto_1e7

    .line 1690
    :cond_fe
    :goto_fe
    iget-object v5, v2, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v6, v6, v13

    invoke-virtual {v5, v2, v6, v0}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    :try_end_105
    .catchall {:try_start_cb .. :try_end_105} :catchall_fa

    .line 1691
    :try_start_105
    iget-object v9, v1, Lads_mobile_sdk/r31;->a:Lkotlin/coroutines/CoroutineContext;

    move-object v2, v0

    new-instance v0, Lads_mobile_sdk/f31;
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10a} :catch_17d
    .catchall {:try_start_105 .. :try_end_10a} :catchall_17a

    move-object v5, v2

    const/4 v2, 0x0

    move-object/from16 v6, p4

    move-object v13, v3

    move-object v10, v5

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    :try_start_114
    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/f31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    iput-object v13, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iput-object v13, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    iput-object v10, v7, Lads_mobile_sdk/g31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iput v14, v7, Lads_mobile_sdk/g31;->g:I

    invoke-static {v9, v0, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_125} :catch_16f
    .catchall {:try_start_114 .. :try_end_125} :catchall_16d

    if-ne v0, v8, :cond_129

    goto/16 :goto_1e1

    :cond_129
    move-object v5, v1

    move-object v2, v10

    move-object v3, v13

    move-object v4, v3

    .line 1692
    :goto_12d
    :try_start_12d
    iput-object v5, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    iput-object v4, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iput-object v3, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    iput-object v15, v7, Lads_mobile_sdk/g31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iput v12, v7, Lads_mobile_sdk/g31;->g:I

    invoke-interface {v2, v7}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13b} :catch_a2
    .catchall {:try_start_12d .. :try_end_13b} :catchall_a0

    if-ne v0, v8, :cond_13f

    goto/16 :goto_1e1

    :cond_13f
    move-object v2, v4

    move-object v4, v5

    .line 1693
    :goto_141
    :try_start_141
    check-cast v0, Lads_mobile_sdk/v01;
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_143} :catch_169
    .catchall {:try_start_141 .. :try_end_143} :catchall_165

    .line 2108
    :try_start_143
    iget-object v5, v4, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v5, :cond_162

    .line 2109
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lads_mobile_sdk/i31;

    invoke-direct {v6, v4, v15}, Lads_mobile_sdk/i31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    iput-object v3, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iput-object v0, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    iput v11, v7, Lads_mobile_sdk/g31;->g:I

    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_15a
    .catchall {:try_start_143 .. :try_end_15a} :catchall_15e

    if-ne v4, v8, :cond_162

    goto/16 :goto_1e1

    :catchall_15e
    move-exception v0

    move-object v4, v2

    goto/16 :goto_1e3

    :cond_162
    move-object v4, v2

    move-object v2, v0

    goto :goto_1b1

    :catchall_165
    move-exception v0

    move-object v5, v4

    goto/16 :goto_1c2

    :catch_169
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    goto :goto_180

    :catchall_16d
    move-exception v0

    goto :goto_171

    :catch_16f
    move-exception v0

    goto :goto_176

    :goto_171
    move-object v2, v0

    move-object v5, v1

    move-object v3, v13

    move-object v4, v3

    goto :goto_1c5

    :goto_176
    move-object v5, v1

    move-object v3, v13

    move-object v4, v3

    goto :goto_180

    :catchall_17a
    move-exception v0

    move-object v13, v3

    goto :goto_171

    :catch_17d
    move-exception v0

    move-object v13, v3

    goto :goto_176

    .line 2110
    :goto_180
    :try_start_180
    iget-object v9, v5, Lads_mobile_sdk/r31;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v12, Lads_mobile_sdk/h31;

    invoke-direct {v12, v5, v15}, Lads_mobile_sdk/h31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2111
    new-instance v2, Lads_mobile_sdk/j01;

    const/4 v6, 0x6

    invoke-direct {v2, v0, v15, v15, v6}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_194
    .catchall {:try_start_180 .. :try_end_194} :catchall_1c0

    .line 2113
    :try_start_194
    iget-object v0, v5, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v0, :cond_1b1

    .line 2114
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lads_mobile_sdk/i31;

    invoke-direct {v6, v5, v15}, Lads_mobile_sdk/i31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    iput-object v3, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iput-object v2, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    iput-object v15, v7, Lads_mobile_sdk/g31;->d:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v5, 0x4

    iput v5, v7, Lads_mobile_sdk/g31;->g:I

    invoke-static {v0, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1b1

    goto :goto_1e1

    .line 2124
    :cond_1b1
    :goto_1b1
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_1bc

    .line 2125
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v5, 0x0

    .line 2126
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1bc
    .catchall {:try_start_194 .. :try_end_1bc} :catchall_1e2

    .line 2127
    :cond_1bc
    invoke-static {v3, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1c0
    move-exception v0

    move-object v2, v4

    :goto_1c2
    move-object v4, v2

    goto/16 :goto_84

    .line 2142
    :goto_1c5
    :try_start_1c5
    iget-object v0, v5, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v0, :cond_1e6

    .line 2143
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lads_mobile_sdk/i31;

    invoke-direct {v6, v5, v15}, Lads_mobile_sdk/i31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v7, Lads_mobile_sdk/g31;->a:Ljava/lang/Object;

    iput-object v3, v7, Lads_mobile_sdk/g31;->b:Ljava/io/Closeable;

    iput-object v2, v7, Lads_mobile_sdk/g31;->c:Ljava/lang/Object;

    iput-object v15, v7, Lads_mobile_sdk/g31;->d:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v5, 0x5

    iput v5, v7, Lads_mobile_sdk/g31;->g:I

    invoke-static {v0, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1e6

    :goto_1e1
    return-object v8

    :catchall_1e2
    move-exception v0

    :goto_1e3
    move-object v13, v3

    move-object v3, v4

    goto :goto_1e8

    .line 2144
    :cond_1e6
    :goto_1e6
    throw v2
    :try_end_1e7
    .catchall {:try_start_1c5 .. :try_end_1e7} :catchall_1e2

    :goto_1e7
    move-object v3, v13

    .line 2167
    :goto_1e8
    :try_start_1e8
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2171
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_221

    .line 2173
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1fe

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1fe

    .line 2179
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1fe

    :catchall_1fb
    move-exception v0

    move-object v2, v0

    goto :goto_222

    .line 2185
    :cond_1fe
    :goto_1fe
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_219

    .line 2186
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_211

    .line 2187
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_20b

    throw v0

    .line 2188
    :cond_20b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2189
    :cond_211
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2190
    :cond_219
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2191
    :cond_221
    throw v0
    :try_end_222
    .catchall {:try_start_1e8 .. :try_end_222} :catchall_1fb

    .line 2192
    :goto_222
    :try_start_222
    throw v2
    :try_end_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_223

    :catchall_223
    move-exception v0

    invoke-static {v13, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/w21;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/w21;

    iget v3, v2, Lads_mobile_sdk/w21;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/w21;->h:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/w21;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/w21;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/w21;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 342
    iget v4, v2, Lads_mobile_sdk/w21;->h:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_65

    if-eq v4, v7, :cond_50

    if-eq v4, v6, :cond_42

    if-ne v4, v5, :cond_3a

    iget-object v2, v2, Lads_mobile_sdk/w21;->a:Lads_mobile_sdk/r31;

    :try_start_32
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_37

    goto/16 :goto_105

    :catch_37
    move-exception v0

    goto/16 :goto_10d

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_42
    iget-object v4, v2, Lads_mobile_sdk/w21;->b:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    iget-object v6, v2, Lads_mobile_sdk/w21;->a:Lads_mobile_sdk/r31;

    :try_start_48
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4d

    goto/16 :goto_f7

    :catch_4d
    move-exception v0

    goto/16 :goto_10e

    .line 344
    :cond_50
    iget-object v4, v2, Lads_mobile_sdk/w21;->e:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v7, v2, Lads_mobile_sdk/w21;->d:Ljava/util/UUID;

    iget-object v9, v2, Lads_mobile_sdk/w21;->c:Ljava/lang/String;

    iget-object v10, v2, Lads_mobile_sdk/w21;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lads_mobile_sdk/w21;->a:Lads_mobile_sdk/r31;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v12

    move-object v12, v7

    move-object v13, v9

    goto :goto_a4

    :cond_65
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 345
    iget-object v0, v1, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lads_mobile_sdk/u01;->c:Lads_mobile_sdk/u01;

    return-object v0

    .line 347
    :cond_73
    invoke-static {v8, v7, v8}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 348
    invoke-virtual {v1}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "toString(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v2, Lads_mobile_sdk/w21;->a:Lads_mobile_sdk/r31;

    move-object/from16 v10, p1

    iput-object v10, v2, Lads_mobile_sdk/w21;->b:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v2, Lads_mobile_sdk/w21;->c:Ljava/lang/String;

    move-object/from16 v12, p3

    iput-object v12, v2, Lads_mobile_sdk/w21;->d:Ljava/util/UUID;

    iput-object v0, v2, Lads_mobile_sdk/w21;->e:Lkotlinx/coroutines/CompletableDeferred;

    iput v7, v2, Lads_mobile_sdk/w21;->h:I

    invoke-interface {v4, v9, v0, v2}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_9e

    goto/16 :goto_103

    :cond_9e
    move-object v13, v4

    move-object v4, v0

    move-object v0, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v1

    .line 349
    :goto_a4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 350
    new-instance v0, Lads_mobile_sdk/m01;

    .line 351
    const-string v2, "Unable to register result listener. Did you forget to register the result GMSG handler?"

    .line 352
    sget-object v3, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 353
    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object v0

    .line 354
    :cond_b6
    iget-object v0, v10, Lads_mobile_sdk/r31;->i:Lads_mobile_sdk/ex0;

    .line 355
    iget-object v0, v0, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    const-string v7, "key"

    const-string v9, "gads:use_javascript_interface_for_result:enabled"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v14, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v9, v7, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 375
    const-string v0, "1"

    :goto_d6
    move-object v14, v0

    goto :goto_db

    :cond_d8
    const-string v0, "0"

    goto :goto_d6

    .line 377
    :goto_db
    :try_start_db
    iget-object v0, v10, Lads_mobile_sdk/r31;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lads_mobile_sdk/x21;

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lads_mobile_sdk/x21;-><init>(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v10, v2, Lads_mobile_sdk/w21;->a:Lads_mobile_sdk/r31;

    iput-object v4, v2, Lads_mobile_sdk/w21;->b:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/w21;->c:Ljava/lang/String;

    iput-object v8, v2, Lads_mobile_sdk/w21;->d:Ljava/util/UUID;

    iput-object v8, v2, Lads_mobile_sdk/w21;->e:Lkotlinx/coroutines/CompletableDeferred;

    iput v6, v2, Lads_mobile_sdk/w21;->h:I

    invoke-static {v0, v9, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_f3} :catch_10b

    if-ne v0, v3, :cond_f6

    goto :goto_103

    :cond_f6
    move-object v6, v10

    .line 383
    :goto_f7
    :try_start_f7
    iput-object v6, v2, Lads_mobile_sdk/w21;->a:Lads_mobile_sdk/r31;

    iput-object v8, v2, Lads_mobile_sdk/w21;->b:Ljava/lang/Object;

    iput v5, v2, Lads_mobile_sdk/w21;->h:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_101} :catch_4d

    if-ne v0, v3, :cond_104

    :goto_103
    return-object v3

    :cond_104
    move-object v2, v6

    .line 384
    :goto_105
    :try_start_105
    new-instance v3, Lads_mobile_sdk/q01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10a} :catch_37

    return-object v3

    :catch_10b
    move-exception v0

    move-object v2, v10

    :goto_10d
    move-object v6, v2

    .line 388
    :goto_10e
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_120

    .line 389
    iget-object v9, v6, Lads_mobile_sdk/r31;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v12, Lads_mobile_sdk/y21;

    invoke-direct {v12, v6, v8}, Lads_mobile_sdk/y21;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 391
    :cond_120
    new-instance v2, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v8, v8, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v2
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 604
    instance-of v0, p2, Lads_mobile_sdk/d31;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/d31;

    iget v1, v0, Lads_mobile_sdk/d31;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/d31;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/d31;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/d31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/d31;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 897
    iget v2, v0, Lads_mobile_sdk/d31;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_51

    if-eq v2, v7, :cond_49

    if-eq v2, v5, :cond_43

    if-eq v2, v4, :cond_3c

    if-ne v2, v3, :cond_34

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ce

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    iget-object p1, v0, Lads_mobile_sdk/d31;->a:Lads_mobile_sdk/r31;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b4

    :cond_43
    iget-object p1, v0, Lads_mobile_sdk/d31;->a:Lads_mobile_sdk/r31;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a7

    :cond_49
    iget-object p1, v0, Lads_mobile_sdk/d31;->b:Ljava/lang/String;

    iget-object v2, v0, Lads_mobile_sdk/d31;->a:Lads_mobile_sdk/r31;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8d

    :cond_51
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 898
    iget-object p2, p0, Lads_mobile_sdk/r31;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_d1

    .line 899
    iget-object p2, p0, Lads_mobile_sdk/r31;->i:Lads_mobile_sdk/ex0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v2}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v8

    const-string v2, "key"

    const-string v10, "gads:delay_on_show_when_visible_millis"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    invoke-static {v8, v9}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v2

    sget-object v8, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p2, v10, v2, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    .line 902
    iput-object p0, v0, Lads_mobile_sdk/d31;->a:Lads_mobile_sdk/r31;

    iput-object p1, v0, Lads_mobile_sdk/d31;->b:Ljava/lang/String;

    iput v7, v0, Lads_mobile_sdk/d31;->e:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8c

    goto :goto_cd

    :cond_8c
    move-object v2, p0

    .line 904
    :goto_8d
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v7, "version"

    invoke-virtual {p2, v7, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iput-object v2, v0, Lads_mobile_sdk/d31;->a:Lads_mobile_sdk/r31;

    iput-object v6, v0, Lads_mobile_sdk/d31;->b:Ljava/lang/String;

    iput v5, v0, Lads_mobile_sdk/d31;->e:I

    const-string p1, "onshow"

    invoke-virtual {v2, p2, p1, v0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a6

    goto :goto_cd

    :cond_a6
    move-object p1, v2

    .line 906
    :goto_a7
    iput-object p1, v0, Lads_mobile_sdk/d31;->a:Lads_mobile_sdk/r31;

    iput v4, v0, Lads_mobile_sdk/d31;->e:I

    const-string p2, "aes2"

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/r31;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b4

    goto :goto_cd

    .line 907
    :cond_b4
    :goto_b4
    iput-object v6, v0, Lads_mobile_sdk/d31;->a:Lads_mobile_sdk/r31;

    iput v3, v0, Lads_mobile_sdk/d31;->e:I

    .line 908
    iget-object p1, p1, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz p1, :cond_cb

    .line 909
    const-string p2, "native:view_show"

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/mb0;->a(Lads_mobile_sdk/mb0;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .line 910
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v6, p1, :cond_c9

    goto :goto_cb

    :cond_c9
    check-cast v6, Lads_mobile_sdk/ir3;

    :cond_cb
    :goto_cb
    if-ne v6, v1, :cond_ce

    :goto_cd
    return-object v1

    .line 911
    :cond_ce
    :goto_ce
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_d1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 392
    instance-of v0, p1, Lads_mobile_sdk/a31;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/a31;

    iget v1, v0, Lads_mobile_sdk/a31;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/a31;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/a31;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/a31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/a31;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 580
    iget v2, v0, Lads_mobile_sdk/a31;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object v0, v0, Lads_mobile_sdk/a31;->a:Lads_mobile_sdk/r31;

    :try_start_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_77

    :catchall_2b
    move-exception p1

    goto :goto_6e

    .line 581
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 582
    iget-object p1, p0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_43

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 584
    :cond_43
    iget-object p1, p0, Lads_mobile_sdk/r31;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_59

    .line 585
    iget-object p1, p0, Lads_mobile_sdk/r31;->j:Lads_mobile_sdk/qn;

    .line 586
    iget-object p1, p1, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 587
    check-cast p1, Lads_mobile_sdk/rs1;

    .line 588
    iget-object v2, p1, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 589
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 590
    iput v2, p1, Lads_mobile_sdk/rs1;->c:I

    .line 591
    :cond_59
    :try_start_59
    iget-object p1, p0, Lads_mobile_sdk/r31;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lads_mobile_sdk/b31;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lads_mobile_sdk/b31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/a31;->a:Lads_mobile_sdk/r31;

    iput v3, v0, Lads_mobile_sdk/a31;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_6c

    if-ne p1, v1, :cond_77

    return-object v1

    :catchall_6c
    move-exception p1

    move-object v0, p0

    .line 597
    :goto_6e
    iget-object v0, v0, Lads_mobile_sdk/r31;->e:Lads_mobile_sdk/ur3;

    check-cast v0, Lads_mobile_sdk/as3;

    const-string v1, "GmaWebView.destroySafe"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    :cond_77
    :goto_77
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(I)V
    .registers 2

    .line 2317
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lads_mobile_sdk/r31;->t:I

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    .line 2318
    monitor-exit p0

    throw p1
.end method

.method public final a(IZ)V
    .registers 6

    .line 2198
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_d

    :cond_c
    move-object v0, v2

    :goto_d
    if-eqz v0, :cond_12

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2199
    :cond_12
    iget-object v0, p0, Lads_mobile_sdk/r31;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/n31;

    invoke-direct {v1, p0, v2}, Lads_mobile_sdk/n31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 2200
    iget-object v0, p0, Lads_mobile_sdk/r31;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/o31;

    invoke-direct {v1, p0, v2}, Lads_mobile_sdk/o31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView render process gone. Crashed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " Priority? "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2203
    iget-object p2, p0, Lads_mobile_sdk/r31;->e:Lads_mobile_sdk/ur3;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Lads_mobile_sdk/as3;

    invoke-virtual {p2, p1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/v14;)V
    .registers 3

    .line 2319
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2424
    monitor-enter p0

    :try_start_6
    iput-object p1, p0, Lads_mobile_sdk/r31;->s:Lads_mobile_sdk/v14;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    monitor-exit p0

    .line 2425
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :catchall_f
    move-exception p1

    .line 2426
    monitor-exit p0

    throw p1
.end method

.method public final b()Lads_mobile_sdk/g41;
    .registers 2

    .line 884
    iget-object v0, p0, Lads_mobile_sdk/r31;->z:Lads_mobile_sdk/g41;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "gmaWebViewClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lads_mobile_sdk/r31;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_24

    return-object p1

    :cond_24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p4, Lads_mobile_sdk/z21;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/z21;

    iget v1, v0, Lads_mobile_sdk/z21;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/z21;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/z21;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/z21;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/z21;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 381
    iget v2, v0, Lads_mobile_sdk/z21;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/z21;->a:Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_41

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 387
    iput-object p1, v0, Lads_mobile_sdk/z21;->a:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/z21;->d:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lads_mobile_sdk/r31;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_41

    return-object v1

    .line 388
    :cond_41
    :goto_41
    check-cast p4, Lads_mobile_sdk/v01;

    .line 751
    instance-of p2, p4, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_4a

    check-cast p4, Lads_mobile_sdk/i01;

    return-object p4

    .line 752
    :cond_4a
    const-string p2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lads_mobile_sdk/q01;

    invoke-virtual {p4}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object p2

    .line 753
    check-cast p2, Lcom/google/gson/JsonObject;

    if-nez p2, :cond_70

    .line 755
    new-instance p2, Lads_mobile_sdk/m01;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Null response from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 756
    :cond_70
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 888
    iget-object v0, p0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 889
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 891
    :cond_b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 892
    invoke-virtual {p0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 896
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 897
    :cond_1c
    iget-object v0, p0, Lads_mobile_sdk/r31;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lads_mobile_sdk/e31;

    invoke-direct {v2, p0, p1, v1}, Lads_mobile_sdk/e31;-><init>(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2e

    return-object p1

    :cond_2e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final c()Lads_mobile_sdk/nr1;
    .registers 2

    .line 127
    iget-object v0, p0, Lads_mobile_sdk/r31;->y:Lads_mobile_sdk/nr1;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "jsContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 128
    instance-of v2, v0, Lads_mobile_sdk/k31;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/k31;

    iget v3, v2, Lads_mobile_sdk/k31;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/k31;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/k31;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/k31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/k31;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 369
    iget v4, v2, Lads_mobile_sdk/k31;->g:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_aa

    if-eq v4, v10, :cond_85

    if-eq v4, v8, :cond_6b

    if-eq v4, v7, :cond_5c

    if-eq v4, v6, :cond_51

    if-eq v4, v5, :cond_3f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-object v3, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_49
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4e

    goto/16 :goto_1c5

    :catchall_4e
    move-exception v0

    goto/16 :goto_1c6

    .line 370
    :cond_51
    iget-object v3, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/v01;

    iget-object v4, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    goto :goto_66

    .line 371
    :cond_5c
    iget-object v3, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    check-cast v3, Lads_mobile_sdk/v01;

    iget-object v4, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iget-object v2, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    .line 370
    :goto_66
    :try_start_66
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_4e

    goto/16 :goto_194

    .line 372
    :cond_6b
    iget-object v4, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    iget-object v8, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    check-cast v8, Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/r31;

    :try_start_77
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_81
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7d

    move-object v13, v8

    goto/16 :goto_124

    :catchall_7d
    move-exception v0

    move-object v13, v8

    goto/16 :goto_1a4

    :catch_81
    move-exception v0

    move-object v13, v8

    goto/16 :goto_15d

    .line 373
    :cond_85
    iget-object v4, v2, Lads_mobile_sdk/k31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v10, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    check-cast v10, Ljava/io/Closeable;

    iget-object v12, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    check-cast v12, Lads_mobile_sdk/rr3;

    iget-object v13, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/r31;

    :try_start_93
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_a4
    .catchall {:try_start_93 .. :try_end_96} :catchall_9e

    move-object/from16 v20, v12

    move-object v12, v10

    move-object v10, v13

    move-object/from16 v13, v20

    goto/16 :goto_111

    :catchall_9e
    move-exception v0

    move-object v4, v10

    move-object v10, v13

    move-object v13, v12

    goto/16 :goto_1a4

    :catch_a4
    move-exception v0

    move-object v4, v10

    move-object v10, v13

    move-object v13, v12

    goto/16 :goto_15d

    .line 374
    :cond_aa
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 715
    sget-object v0, Lads_mobile_sdk/s11;->Q:Lads_mobile_sdk/s11;

    .line 717
    sget-object v4, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 723
    :try_start_b9
    iget-object v0, v1, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c6

    sget-object v0, Lads_mobile_sdk/u01;->c:Lads_mobile_sdk/u01;

    move-object v2, v4

    goto/16 :goto_195

    .line 725
    :cond_c6
    invoke-static {v11, v10, v11}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 726
    invoke-virtual {v1}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    const-string v13, "completableDeferred"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    iget-object v13, v12, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    sget-object v14, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    aget-object v15, v14, v9

    invoke-virtual {v13, v12, v15}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v13, :cond_eb

    .line 729
    invoke-static {v13, v11, v10, v11}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_eb

    :catchall_e8
    move-exception v0

    goto/16 :goto_1cc

    .line 730
    :cond_eb
    :goto_eb
    iget-object v13, v12, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v14, v14, v9

    invoke-virtual {v13, v12, v14, v0}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    :try_end_f2
    .catchall {:try_start_b9 .. :try_end_f2} :catchall_e8

    .line 731
    :try_start_f2
    iget-object v12, v1, Lads_mobile_sdk/r31;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lads_mobile_sdk/j31;

    move-object/from16 v14, p1

    invoke-direct {v13, v1, v14, v11}, Lads_mobile_sdk/j31;-><init>(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iput-object v4, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    iput-object v0, v2, Lads_mobile_sdk/k31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iput v10, v2, Lads_mobile_sdk/k31;->g:I

    invoke-static {v12, v13, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_109} :catch_156
    .catchall {:try_start_f2 .. :try_end_109} :catchall_154

    if-ne v10, v3, :cond_10d

    goto/16 :goto_1bf

    :cond_10d
    move-object v10, v1

    move-object v12, v4

    move-object v13, v12

    move-object v4, v0

    .line 732
    :goto_111
    :try_start_111
    iput-object v10, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    iput-object v13, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iput-object v12, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/k31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iput v8, v2, Lads_mobile_sdk/k31;->g:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_11f} :catch_14e
    .catchall {:try_start_111 .. :try_end_11f} :catchall_14c

    if-ne v0, v3, :cond_123

    goto/16 :goto_1bf

    :cond_123
    move-object v4, v12

    .line 733
    :goto_124
    :try_start_124
    check-cast v0, Lads_mobile_sdk/v01;
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_126} :catch_14a
    .catchall {:try_start_124 .. :try_end_126} :catchall_147

    .line 1094
    :try_start_126
    iget-object v5, v10, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v5, :cond_144

    .line 1095
    sget-object v5, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lads_mobile_sdk/i31;

    invoke-direct {v6, v10, v11}, Lads_mobile_sdk/i31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    iput-object v13, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    iput v7, v2, Lads_mobile_sdk/k31;->g:I

    invoke-static {v5, v6, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_13d
    .catchall {:try_start_126 .. :try_end_13d} :catchall_141

    if-ne v2, v3, :cond_144

    goto/16 :goto_1bf

    :catchall_141
    move-exception v0

    goto/16 :goto_1c0

    :cond_144
    move-object v3, v0

    :goto_145
    move-object v2, v13

    goto :goto_194

    :catchall_147
    move-exception v0

    goto/16 :goto_1a4

    :catch_14a
    move-exception v0

    goto :goto_15d

    :catchall_14c
    move-exception v0

    goto :goto_150

    :catch_14e
    move-exception v0

    goto :goto_152

    :goto_150
    move-object v4, v12

    goto :goto_1a4

    :goto_152
    move-object v4, v12

    goto :goto_15d

    :catchall_154
    move-exception v0

    goto :goto_158

    :catch_156
    move-exception v0

    goto :goto_15b

    :goto_158
    move-object v10, v1

    move-object v13, v4

    goto :goto_1a4

    :goto_15b
    move-object v10, v1

    move-object v13, v4

    .line 1096
    :goto_15d
    :try_start_15d
    iget-object v14, v10, Lads_mobile_sdk/r31;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/h31;

    invoke-direct {v7, v10, v11}, Lads_mobile_sdk/h31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v7

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1097
    new-instance v7, Lads_mobile_sdk/j01;

    const/4 v8, 0x6

    invoke-direct {v7, v0, v11, v11, v8}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_176
    .catchall {:try_start_15d .. :try_end_176} :catchall_147

    .line 1099
    :try_start_176
    iget-object v0, v10, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v0, :cond_192

    .line 1100
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v5, Lads_mobile_sdk/i31;

    invoke-direct {v5, v10, v11}, Lads_mobile_sdk/i31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    iput-object v13, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iput-object v7, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/k31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iput v6, v2, Lads_mobile_sdk/k31;->g:I

    invoke-static {v0, v5, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18f
    .catchall {:try_start_176 .. :try_end_18f} :catchall_141

    if-ne v0, v3, :cond_192

    goto :goto_1bf

    :cond_192
    move-object v3, v7

    goto :goto_145

    :goto_194
    move-object v0, v3

    .line 1110
    :goto_195
    :try_start_195
    nop

    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_1a0

    .line 1111
    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/i01;

    .line 1112
    invoke-static {v3, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1a0
    .catchall {:try_start_195 .. :try_end_1a0} :catchall_4e

    .line 1113
    :cond_1a0
    invoke-static {v4, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1128
    :goto_1a4
    :try_start_1a4
    iget-object v6, v10, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v6, :cond_1c3

    .line 1129
    sget-object v6, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v7, Lads_mobile_sdk/i31;

    invoke-direct {v7, v10, v11}, Lads_mobile_sdk/i31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    iput-object v13, v2, Lads_mobile_sdk/k31;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/k31;->b:Ljava/io/Closeable;

    iput-object v0, v2, Lads_mobile_sdk/k31;->c:Ljava/lang/Object;

    iput-object v11, v2, Lads_mobile_sdk/k31;->d:Lkotlinx/coroutines/CompletableDeferred;

    iput v5, v2, Lads_mobile_sdk/k31;->g:I

    invoke-static {v6, v7, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1bd
    .catchall {:try_start_1a4 .. :try_end_1bd} :catchall_141

    if-ne v2, v3, :cond_1c3

    :goto_1bf
    return-object v3

    :goto_1c0
    move-object v2, v4

    move-object v4, v13

    goto :goto_1cd

    :cond_1c3
    move-object v3, v0

    move-object v2, v13

    .line 1130
    :goto_1c5
    :try_start_1c5
    throw v3
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_4e

    :goto_1c6
    move-object/from16 v20, v4

    move-object v4, v2

    move-object/from16 v2, v20

    goto :goto_1cd

    :goto_1cc
    move-object v2, v4

    .line 1153
    :goto_1cd
    :try_start_1cd
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1157
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_206

    .line 1159
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1e3

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1e3

    .line 1165
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1e3

    :catchall_1e0
    move-exception v0

    move-object v3, v0

    goto :goto_207

    .line 1171
    :cond_1e3
    :goto_1e3
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1fe

    .line 1172
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1f6

    .line 1173
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_1f0

    throw v0

    .line 1174
    :cond_1f0
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1175
    :cond_1f6
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1176
    :cond_1fe
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1177
    :cond_206
    throw v0
    :try_end_207
    .catchall {:try_start_1cd .. :try_end_207} :catchall_1e0

    .line 1178
    :goto_207
    :try_start_207
    throw v3
    :try_end_208
    .catchall {:try_start_207 .. :try_end_208} :catchall_208

    :catchall_208
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d()Lads_mobile_sdk/q41;
    .registers 2

    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/r31;->r:Lads_mobile_sdk/q41;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 92
    instance-of v0, p2, Lads_mobile_sdk/p31;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/p31;

    iget v1, v0, Lads_mobile_sdk/p31;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/p31;->c:I

    :goto_12
    move-object v6, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/p31;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/p31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p2, v6, Lads_mobile_sdk/p31;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 652
    iget v1, v6, Lads_mobile_sdk/p31;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    if-ne v1, v2, :cond_2b

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lads_mobile_sdk/r31;->v:Lads_mobile_sdk/ir3;

    if-eqz p2, :cond_67

    .line 653
    iget-object v1, p0, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v1, :cond_67

    iput v2, v6, Lads_mobile_sdk/p31;->c:I

    .line 654
    iget-object v3, p2, Lads_mobile_sdk/ir3;->a:Ljava/lang/String;

    sget-object p2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object p2, v1, Lads_mobile_sdk/mb0;->c:Lads_mobile_sdk/tx;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 656
    sget-object p2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v4, v5, p2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/mb0;->a(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5f

    goto :goto_61

    :cond_5f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_61
    if-ne p1, v0, :cond_64

    return-object v0

    .line 657
    :cond_64
    :goto_64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_67
    const/4 p1, 0x0

    return-object p1
.end method

.method public final destroy()V
    .registers 8

    .line 208
    iget-object v0, p0, Lads_mobile_sdk/r31;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 209
    iget-object v0, p0, Lads_mobile_sdk/r31;->j:Lads_mobile_sdk/qn;

    .line 210
    iget-object v0, v0, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 211
    check-cast v0, Lads_mobile_sdk/rs1;

    .line 212
    iget-object v2, v0, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 213
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 214
    iput v2, v0, Lads_mobile_sdk/rs1;->c:I

    .line 215
    :cond_17
    iget-object v0, p0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    iget-object v0, p0, Lads_mobile_sdk/r31;->d:Lads_mobile_sdk/mb0;

    if-eqz v0, :cond_44

    .line 217
    iget-object v1, v0, Lads_mobile_sdk/mb0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/hb0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/hb0;-><init>(Lads_mobile_sdk/mb0;Lkotlin/coroutines/Continuation;)V

    move-object v0, v2

    .line 218
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 219
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 478
    :cond_44
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public final e()Lads_mobile_sdk/v14;
    .registers 2

    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/r31;->s:Lads_mobile_sdk/v14;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMeasure(II)V
    .registers 12

    .line 411
    iget-object v0, p0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 413
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 418
    :cond_d
    invoke-virtual {p0}, Lads_mobile_sdk/r31;->e()Lads_mobile_sdk/v14;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_131

    .line 423
    invoke-virtual {v0}, Lads_mobile_sdk/v14;->a()Z

    move-result v2

    if-nez v2, :cond_131

    .line 424
    iget-object v2, p0, Lads_mobile_sdk/r31;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_131

    .line 425
    iget-object v2, v0, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    sget-object v3, Lads_mobile_sdk/u14;->d:Lads_mobile_sdk/u14;

    if-ne v2, v3, :cond_2d

    goto/16 :goto_131

    .line 429
    :cond_2d
    sget-object v3, Lads_mobile_sdk/u14;->e:Lads_mobile_sdk/u14;

    if-ne v2, v3, :cond_74

    .line 430
    invoke-virtual {p0}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lads_mobile_sdk/q41;->a()F

    move-result v0

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    cmpg-float v1, v0, v1

    if-gtz v1, :cond_46

    .line 432
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void

    .line 436
    :cond_46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 437
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v0, v2

    if-nez p2, :cond_5b

    if-eqz v0, :cond_5b

    move v1, p1

    move p2, v0

    goto :goto_68

    :cond_5b
    if-nez p1, :cond_62

    if-eqz v1, :cond_62

    move v0, p2

    move p1, v1

    goto :goto_68

    :cond_62
    move v8, v1

    move v1, p1

    move p1, v8

    move v8, v0

    move v0, p2

    move p2, v8

    .line 452
    :goto_68
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 453
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 455
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 457
    :cond_74
    iget-boolean v2, v0, Lads_mobile_sdk/v14;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_9e

    .line 458
    iget-object v0, p0, Lads_mobile_sdk/r31;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/l31;

    invoke-direct {v1, p0, v3}, Lads_mobile_sdk/l31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 490
    invoke-virtual {p0}, Lads_mobile_sdk/r31;->a()I

    move-result v0

    .line 491
    iget-object v1, p0, Lads_mobile_sdk/r31;->x:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 492
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_97

    .line 496
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_9a

    :cond_97
    int-to-float p2, v0

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 499
    :goto_9a
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 503
    :cond_9e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 504
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 505
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 506
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const v5, 0x7fffffff

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_bb

    if-eq v2, v6, :cond_bb

    move v2, v5

    goto :goto_bc

    :cond_bb
    move v2, p1

    :goto_bc
    if-eq v4, v7, :cond_c1

    if-eq v4, v6, :cond_c1

    goto :goto_c2

    :cond_c1
    move v5, p2

    .line 524
    :goto_c2
    iget v4, v0, Lads_mobile_sdk/v14;->b:I

    if-gt v4, v2, :cond_ca

    iget v2, v0, Lads_mobile_sdk/v14;->c:I

    if-le v2, v5, :cond_11e

    .line 529
    :cond_ca
    iget-object v2, p0, Lads_mobile_sdk/r31;->x:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, v2

    float-to-int p2, p2

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    .line 533
    iget v5, v0, Lads_mobile_sdk/v14;->c:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-int v2, v5

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough space to show the full ad. Need "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only have "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 538
    iget-object p2, p0, Lads_mobile_sdk/r31;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_11e

    .line 539
    iget-object p2, p0, Lads_mobile_sdk/r31;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/m31;

    invoke-direct {v2, p0, p1, v3}, Lads_mobile_sdk/m31;-><init>(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 545
    :cond_11e
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_129

    .line 546
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    :cond_129
    iget p1, v0, Lads_mobile_sdk/v14;->b:I

    iget p2, v0, Lads_mobile_sdk/v14;->c:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 549
    :cond_131
    :goto_131
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void
.end method

.method public final onPause()V
    .registers 2

    .line 552
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 553
    iget-object v0, p0, Lads_mobile_sdk/r31;->g:Lads_mobile_sdk/dz3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "webView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    :try_start_d
    const-string v0, "MUTE_AUDIO"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 555
    invoke-static {p0, v0}, Landroidx/webkit/WebViewCompat;->setAudioMuted(Landroid/webkit/WebView;Z)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_19

    :catchall_19
    :cond_19
    return-void
.end method

.method public final onResume()V
    .registers 2

    .line 557
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 558
    iget-object v0, p0, Lads_mobile_sdk/r31;->g:Lads_mobile_sdk/dz3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "webView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    :try_start_d
    const-string v0, "MUTE_AUDIO"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 560
    invoke-static {p0, v0}, Landroidx/webkit/WebViewCompat;->setAudioMuted(Landroid/webkit/WebView;Z)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_19

    :catchall_19
    :cond_19
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lads_mobile_sdk/r31;->u:Lads_mobile_sdk/tu1;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lads_mobile_sdk/tu1;->a(Landroid/view/MotionEvent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_23

    iget-object v0, p0, Lads_mobile_sdk/r31;->f:Lads_mobile_sdk/rb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    const-string v1, "inputEvent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0}, Lads_mobile_sdk/rb;->g()Lads_mobile_sdk/fa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fa;->a(Landroid/view/InputEvent;)V

    .line 551
    :cond_23
    iget-object v0, p0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 p1, 0x0

    return p1

    .line 555
    :cond_2d
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
