###### Class ads_mobile_sdk.i14 (ads_mobile_sdk.i14)
.class public final Lads_mobile_sdk/i14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r14;

.field public final synthetic b:Landroidx/webkit/Profile;


# direct methods
.method public constructor <init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/i14;->a:Lads_mobile_sdk/r14;

    iput-object p1, p0, Lads_mobile_sdk/i14;->b:Landroidx/webkit/Profile;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/i14;

    iget-object v0, p0, Lads_mobile_sdk/i14;->a:Lads_mobile_sdk/r14;

    iget-object v1, p0, Lads_mobile_sdk/i14;->b:Landroidx/webkit/Profile;

    invoke-direct {p1, v1, v0, p2}, Lads_mobile_sdk/i14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/i14;

    iget-object v0, p0, Lads_mobile_sdk/i14;->a:Lads_mobile_sdk/r14;

    iget-object v1, p0, Lads_mobile_sdk/i14;->b:Landroidx/webkit/Profile;

    invoke-direct {p1, v1, v0, p2}, Lads_mobile_sdk/i14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/i14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lads_mobile_sdk/i14;->a:Lads_mobile_sdk/r14;

    .line 179
    iget-object p1, p1, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    const-string v11, "https://www.googletagservices.com"

    const-string v12, "https://www.gstatic.com"

    const-string v0, "https://fonts.googleapis.com"

    const-string v1, "https://googleads.g.doubleclick.net"

    const-string v2, "https://lh3.googleusercontent.com"

    const-string v3, "https://pagead2.googlesyndication.com"

    const-string v4, "https://pubads.g.doubleclick.net"

    const-string v5, "https://redirector.gvt1.com"

    const-string v6, "https://redirector.gvt1-cn.com"

    const-string v7, "https://static.doubleclick.net"

    const-string v8, "https://s0.2mdn.net"

    const-string v9, "https://s1.2mdn.net"

    const-string v10, "https://tpc.googlesyndication.com"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 197
    const-string v1, "key"

    const-string v2, "gads:webview_preconnect_domain_list"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultValue"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v1, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {p1, v2, v0, v1}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    sget-object v1, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lads_mobile_sdk/i14;->b:Landroidx/webkit/Profile;

    .line 245
    const-string v2, "profile"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    sget-object v2, Lads_mobile_sdk/az3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_6a

    goto :goto_47

    .line 389
    :cond_6a
    :try_start_6a
    invoke-interface {v1, v0}, Landroidx/webkit/Profile;->preconnect(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_47

    .line 391
    :catchall_6e
    sget-object v0, Lads_mobile_sdk/az3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_47

    .line 392
    :cond_75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
