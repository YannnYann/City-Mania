###### Class ads_mobile_sdk.x04 (ads_mobile_sdk.x04)
.class public final Lads_mobile_sdk/x04;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Landroidx/webkit/Profile;

.field public final synthetic b:Lads_mobile_sdk/r14;


# direct methods
.method public constructor <init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iput-object p2, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/x04;

    iget-object v0, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iget-object v1, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/x04;

    iget-object v0, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iget-object v1, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/x04;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 143
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    sget-object p1, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lads_mobile_sdk/x04;->a:Landroidx/webkit/Profile;

    iget-object v0, p0, Lads_mobile_sdk/x04;->b:Lads_mobile_sdk/r14;

    .line 145
    iget-object v0, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    const-string v12, "https://www.googletagservices.com"

    const-string v13, "https://www.gstatic.com"

    const-string v1, "https://fonts.googleapis.com"

    const-string v2, "https://googleads.g.doubleclick.net"

    const-string v3, "https://lh3.googleusercontent.com"

    const-string v4, "https://pagead2.googlesyndication.com"

    const-string v5, "https://pubads.g.doubleclick.net"

    const-string v6, "https://redirector.gvt1.com"

    const-string v7, "https://redirector.gvt1-cn.com"

    const-string v8, "https://static.doubleclick.net"

    const-string v9, "https://s0.2mdn.net"

    const-string v10, "https://s1.2mdn.net"

    const-string v11, "https://tpc.googlesyndication.com"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 163
    const-string v2, "key"

    const-string v3, "gads:webview_quic_hints_domain_list"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultValue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v0, v3, v1, v2}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 210
    const-string v1, "profile"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hosts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object v1, Lads_mobile_sdk/az3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_68

    .line 343
    :cond_5e
    :try_start_5e
    invoke-interface {p1, v0}, Landroidx/webkit/Profile;->addQuicHints(Ljava/util/Set;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_68

    .line 345
    :catchall_62
    sget-object p1, Lads_mobile_sdk/az3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    :goto_68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
