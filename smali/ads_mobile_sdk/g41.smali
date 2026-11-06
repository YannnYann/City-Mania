###### Class ads_mobile_sdk.g41 (ads_mobile_sdk.g41)
.class public final Lads_mobile_sdk/g41;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field public static final v:Lads_mobile_sdk/s31;

.field public static final synthetic w:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lads_mobile_sdk/nr1;

.field public final b:Lads_mobile_sdk/r31;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/o21;

.field public final e:Lads_mobile_sdk/rb;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/vk0;

.field public final h:Lads_mobile_sdk/e01;

.field public final i:Lads_mobile_sdk/tn3;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final m:Lads_mobile_sdk/tn3;

.field public final n:Lads_mobile_sdk/tn3;

.field public final o:Lads_mobile_sdk/tn3;

.field public final p:Lads_mobile_sdk/tn3;

.field public q:Lads_mobile_sdk/oy1;

.field public r:Lads_mobile_sdk/p24;

.field public final s:Lads_mobile_sdk/tn3;

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile u:Lads_mobile_sdk/s93;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    const-class v0, Lads_mobile_sdk/g41;

    const-string v1, "loadedDeferred"

    const-string v2, "getLoadedDeferred()Lkotlinx/coroutines/CompletableDeferred;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    .line 2
    const-string v2, "encounteredError"

    const-string v4, "getEncounteredError()Lcom/google/android/libraries/ads/mobile/sdk/internal/util/GmaResult$WebError;"

    invoke-static {v0, v2, v4, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v2

    .line 3
    const-string v4, "followUrls"

    const-string v5, "getFollowUrls()Z"

    invoke-static {v0, v4, v5, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v4

    .line 4
    const-string v5, "isCrossProcessAdEnabled"

    const-string v6, "isCrossProcessAdEnabled()Z"

    invoke-static {v0, v5, v6, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v5

    .line 5
    const-string v6, "adEventEmitter"

    const-string v7, "getAdEventEmitter()Lcom/google/android/libraries/ads/mobile/sdk/internal/event/InternalAdEventListener;"

    invoke-static {v0, v6, v7, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    .line 6
    const-string v7, "onJavascriptReadyListener"

    const-string v8, "getOnJavascriptReadyListener()Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/JavascriptReadyListener;"

    invoke-static {v0, v7, v8, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v7, 0x6

    .line 110
    new-array v7, v7, [Lkotlin/reflect/KProperty;

    aput-object v1, v7, v3

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    const/4 v1, 0x3

    aput-object v5, v7, v1

    const/4 v1, 0x4

    aput-object v6, v7, v1

    const/4 v1, 0x5

    aput-object v0, v7, v1

    sput-object v7, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    new-instance v0, Lads_mobile_sdk/s31;

    .line 111
    invoke-direct {v0}, Lads_mobile_sdk/s31;-><init>()V

    .line 112
    sput-object v0, Lads_mobile_sdk/g41;->v:Lads_mobile_sdk/s31;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/nr1;Lads_mobile_sdk/r31;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/o21;Lads_mobile_sdk/rb;Lads_mobile_sdk/ex0;Lads_mobile_sdk/vk0;Lads_mobile_sdk/e01;)V
    .registers 10

    .line 1
    const-string v0, "jsContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaWebView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSpamClient"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 51
    iput-object p1, p0, Lads_mobile_sdk/g41;->a:Lads_mobile_sdk/nr1;

    .line 52
    iput-object p2, p0, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    .line 53
    iput-object p3, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 54
    iput-object p4, p0, Lads_mobile_sdk/g41;->d:Lads_mobile_sdk/o21;

    .line 55
    iput-object p5, p0, Lads_mobile_sdk/g41;->e:Lads_mobile_sdk/rb;

    .line 56
    iput-object p6, p0, Lads_mobile_sdk/g41;->f:Lads_mobile_sdk/ex0;

    .line 57
    iput-object p7, p0, Lads_mobile_sdk/g41;->g:Lads_mobile_sdk/vk0;

    .line 58
    iput-object p8, p0, Lads_mobile_sdk/g41;->h:Lads_mobile_sdk/e01;

    .line 65
    new-instance p1, Lads_mobile_sdk/tn3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    .line 75
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    new-instance p1, Lads_mobile_sdk/tn3;

    invoke-direct {p1, p2}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->m:Lads_mobile_sdk/tn3;

    .line 93
    new-instance p1, Lads_mobile_sdk/tn3;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p4}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->n:Lads_mobile_sdk/tn3;

    .line 95
    new-instance p1, Lads_mobile_sdk/tn3;

    invoke-direct {p1, p4}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->o:Lads_mobile_sdk/tn3;

    .line 102
    new-instance p1, Lads_mobile_sdk/tn3;

    invoke-direct {p1, p2}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->p:Lads_mobile_sdk/tn3;

    .line 114
    new-instance p1, Lads_mobile_sdk/tn3;

    invoke-direct {p1, p2}, Lads_mobile_sdk/tn3;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->s:Lads_mobile_sdk/tn3;

    .line 122
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/g41;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lads_mobile_sdk/g41;)Lads_mobile_sdk/e01;
    .registers 1

    .line 40
    iget-object p0, p0, Lads_mobile_sdk/g41;->h:Lads_mobile_sdk/e01;

    return-object p0
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/vk0;
    .registers 2

    .line 88
    iget-object v0, p0, Lads_mobile_sdk/g41;->g:Lads_mobile_sdk/vk0;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 13

    .line 89
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lads_mobile_sdk/g41;->e:Lads_mobile_sdk/rb;

    iget-object v2, p0, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    invoke-virtual {v1, p1, v2}, Lads_mobile_sdk/rb;->a(Landroid/net/Uri;Landroid/view/View;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lads_mobile_sdk/g41;->u:Lads_mobile_sdk/s93;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 375
    invoke-virtual {v1}, Lads_mobile_sdk/s93;->f()Z

    move-result v1

    if-nez v1, :cond_31

    .line 376
    iget-object v3, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 377
    new-instance v6, Lads_mobile_sdk/t31;

    invoke-direct {v6, p0, p1, v2}, Lads_mobile_sdk/t31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 380
    :cond_31
    iget-object v1, p0, Lads_mobile_sdk/g41;->d:Lads_mobile_sdk/o21;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/o21;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 381
    iget-object v0, p0, Lads_mobile_sdk/g41;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, "block"

    const-string v3, "context"

    const-string v4, "<this>"

    if-nez v0, :cond_65

    .line 382
    iget-object v5, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 383
    new-instance v0, Lads_mobile_sdk/u31;

    invoke-direct {v0, p0, p1, v2}, Lads_mobile_sdk/u31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 384
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 385
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, v0, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 644
    :cond_65
    iget-object p1, p0, Lads_mobile_sdk/g41;->o:Lads_mobile_sdk/tn3;

    sget-object v0, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-virtual {p1, p0, v0}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 645
    iget-object v5, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 646
    new-instance p1, Lads_mobile_sdk/v31;

    invoke-direct {p1, p0, v2}, Lads_mobile_sdk/v31;-><init>(Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    .line 647
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 648
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    new-instance v8, Lads_mobile_sdk/ws3;

    invoke-direct {v8, p1, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_95
    return-void
.end method

.method public final b()Lads_mobile_sdk/ex0;
    .registers 2

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/g41;->f:Lads_mobile_sdk/ex0;

    return-object v0
.end method

.method public final c()Lads_mobile_sdk/p24;
    .registers 2

    .line 102
    iget-object v0, p0, Lads_mobile_sdk/g41;->r:Lads_mobile_sdk/p24;

    return-object v0
.end method

.method public final d()V
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/g41;->m:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, p0, v2}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/s01;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_28

    .line 3
    iget-object v4, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v5, v1, v3

    invoke-virtual {v4, p0, v5}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v4, :cond_20

    .line 4
    invoke-interface {v4, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 5
    :cond_20
    iget-object v0, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v1, v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_28
    iget-object v0, p0, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    .line 7
    iget-object v0, v0, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 9
    sget-object v0, Lads_mobile_sdk/u01;->c:Lads_mobile_sdk/u01;

    .line 10
    iget-object v4, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v5, v1, v3

    invoke-virtual {v4, p0, v5}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v4, :cond_43

    .line 11
    invoke-interface {v4, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 12
    :cond_43
    iget-object v0, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v1, v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_4b
    iget-object v0, p0, Lads_mobile_sdk/g41;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 14
    sget-object v0, Lads_mobile_sdk/u01;->c:Lads_mobile_sdk/u01;

    .line 15
    iget-object v4, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v5, v1, v3

    invoke-virtual {v4, p0, v5}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v4, :cond_64

    .line 16
    invoke-interface {v4, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 17
    :cond_64
    iget-object v0, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v1, v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_6c
    iget-object v0, p0, Lads_mobile_sdk/g41;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lads_mobile_sdk/g41;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_99

    .line 19
    new-instance v0, Lads_mobile_sdk/q01;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v4}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 20
    iget-object v4, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v5, v1, v3

    invoke-virtual {v4, p0, v5}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v4, :cond_92

    .line 21
    invoke-interface {v4, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 22
    :cond_92
    iget-object v0, p0, Lads_mobile_sdk/g41;->i:Lads_mobile_sdk/tn3;

    aget-object v1, v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    :cond_99
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 484
    sget-object p2, Lads_mobile_sdk/g41;->v:Lads_mobile_sdk/s31;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lads_mobile_sdk/s31;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 485
    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    new-instance p2, Lads_mobile_sdk/w31;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lads_mobile_sdk/w31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v0, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10

    .line 1
    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lads_mobile_sdk/g41;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    iget-object p1, p0, Lads_mobile_sdk/g41;->s:Lads_mobile_sdk/tn3;

    sget-object v0, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, p0, v0}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mr1;

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 169
    check-cast p1, Lads_mobile_sdk/f62;

    .line 170
    new-instance v1, Lads_mobile_sdk/e62;

    iget-object v2, p1, Lads_mobile_sdk/f62;->a:Lads_mobile_sdk/r31;

    iget-object p1, p1, Lads_mobile_sdk/f62;->b:Lcom/google/gson/JsonObject;

    invoke-direct {v1, v2, p1, v0}, Lads_mobile_sdk/e62;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_2e
    invoke-virtual {p0}, Lads_mobile_sdk/g41;->d()V

    .line 185
    iget-object p1, p0, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    .line 186
    iget-object p1, p1, Lads_mobile_sdk/r31;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 188
    iget-object v1, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 189
    new-instance p1, Lads_mobile_sdk/z31;

    invoke-direct {p1, p0, v0}, Lads_mobile_sdk/z31;-><init>(Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    .line 190
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 191
    const-string p2, "<this>"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, p1, v0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_5e
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance p1, Lads_mobile_sdk/s01;

    invoke-direct {p1, p2, p3, p4}, Lads_mobile_sdk/s01;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lads_mobile_sdk/g41;->m:Lads_mobile_sdk/tn3;

    sget-object p3, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    const/4 p4, 0x1

    aget-object p3, p3, p4

    invoke-virtual {p2, p0, p3, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "detail"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    invoke-static {p2}, Lads_mobile_sdk/g41$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    invoke-static {p2}, Lads_mobile_sdk/g41$$ExternalSyntheticApiModelOutline1;->m(Landroid/webkit/RenderProcessGoneDetail;)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lads_mobile_sdk/r31;->a(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 10

    const/4 p1, 0x0

    if-eqz p2, :cond_8

    .line 333
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    if-nez v0, :cond_c

    return-object p1

    .line 337
    :cond_c
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://googlemobileads.com/warmup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 338
    iget-object p1, p0, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    .line 339
    iget-object p1, p1, Lads_mobile_sdk/r31;->A:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 340
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_28

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 341
    :cond_28
    sget-object p2, Lads_mobile_sdk/g41;->v:Lads_mobile_sdk/s31;

    .line 342
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lads_mobile_sdk/s31;->a(Ljava/util/List;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 343
    :cond_32
    iget-object v1, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 344
    new-instance v4, Lads_mobile_sdk/a41;

    invoke-direct {v4, v0, p2, p0, p1}, Lads_mobile_sdk/a41;-><init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 352
    iget-object v1, p0, Lads_mobile_sdk/g41;->q:Lads_mobile_sdk/oy1;

    const/4 v2, 0x1

    if-eqz v1, :cond_51

    .line 353
    new-instance v3, Lads_mobile_sdk/d41;

    invoke-direct {v3, v1, p0, p2, p1}, Lads_mobile_sdk/d41;-><init>(Lads_mobile_sdk/oy1;Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v2, p1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebResourceResponse;

    goto :goto_52

    :cond_51
    move-object v1, p1

    :goto_52
    if-eqz v1, :cond_55

    return-object v1

    .line 360
    :cond_55
    iget-object v1, p0, Lads_mobile_sdk/g41;->f:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    const-string v3, "key"

    const-string v4, "gads_analytics_events_via_webview_requests"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v4, v3, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 379
    new-instance v1, Lads_mobile_sdk/b41;

    invoke-direct {v1, v0, p2, p0, p1}, Lads_mobile_sdk/b41;-><init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v2, p1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebResourceResponse;

    return-object p1

    .line 393
    :cond_7d
    new-instance v1, Lads_mobile_sdk/c41;

    invoke-direct {v1, v0, p2, p0, p1}, Lads_mobile_sdk/c41;-><init>(Landroid/net/Uri;Landroid/webkit/WebResourceRequest;Lads_mobile_sdk/g41;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v2, p1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebResourceResponse;

    return-object p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 13

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lads_mobile_sdk/g41;->v:Lads_mobile_sdk/s31;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getUrl(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lads_mobile_sdk/s31;->a(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_35

    .line 230
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    new-instance p2, Lads_mobile_sdk/w31;

    invoke-direct {p2, p0, p1, v1}, Lads_mobile_sdk/w31;-><init>(Lads_mobile_sdk/g41;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, p2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 542
    :cond_35
    iget-object v0, p0, Lads_mobile_sdk/g41;->n:Lads_mobile_sdk/tn3;

    sget-object v4, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v0, p0, v4}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 543
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lads_mobile_sdk/s31;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 544
    iget-object v0, p0, Lads_mobile_sdk/g41;->u:Lads_mobile_sdk/s93;

    if-eqz v0, :cond_6e

    .line 545
    invoke-virtual {v0}, Lads_mobile_sdk/s93;->f()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 546
    iget-object v4, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 547
    new-instance v7, Lads_mobile_sdk/e41;

    invoke-direct {v7, p0, p2, v1}, Lads_mobile_sdk/e41;-><init>(Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v3

    .line 550
    :cond_6e
    iget-object v0, p0, Lads_mobile_sdk/g41;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_80

    .line 551
    iget-object v0, p0, Lads_mobile_sdk/g41;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 552
    new-instance v2, Lads_mobile_sdk/f41;

    invoke-direct {v2, p0, p2, v1}, Lads_mobile_sdk/f41;-><init>(Lads_mobile_sdk/g41;Landroid/webkit/WebResourceRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 561
    :cond_80
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    .line 562
    :cond_85
    iget-object p1, p0, Lads_mobile_sdk/g41;->b:Lads_mobile_sdk/r31;

    invoke-virtual {p1}, Landroid/view/View;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_98

    .line 572
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lads_mobile_sdk/g41;->a(Landroid/net/Uri;)V

    return v3

    .line 577
    :cond_98
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non-creative WebView unable to handle URL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    return v3
.end method
