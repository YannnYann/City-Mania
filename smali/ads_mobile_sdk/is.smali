###### Class ads_mobile_sdk.is (ads_mobile_sdk.is)
.class public final Lads_mobile_sdk/is;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ox0;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lads_mobile_sdk/f0;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lads_mobile_sdk/f0;)V
    .registers 4

    .line 1
    const-string v0, "monitorReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lads_mobile_sdk/is;->a:Ljava/lang/ref/WeakReference;

    .line 374
    iput-object p2, p0, Lads_mobile_sdk/is;->b:Lads_mobile_sdk/f0;

    return-void
.end method


# virtual methods
.method public final b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 378
    iget-object v0, p0, Lads_mobile_sdk/is;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ms;

    if-eqz v0, :cond_18

    .line 380
    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/ms;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 382
    :cond_18
    iget-object p1, p0, Lads_mobile_sdk/is;->b:Lads_mobile_sdk/f0;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/f0;->a(Lads_mobile_sdk/ox0;)V

    .line 384
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 387
    iget-object v0, p0, Lads_mobile_sdk/is;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ms;

    if-eqz v0, :cond_18

    .line 389
    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/ms;->d(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 391
    :cond_18
    iget-object p1, p0, Lads_mobile_sdk/is;->b:Lads_mobile_sdk/f0;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/f0;->a(Lads_mobile_sdk/ox0;)V

    .line 393
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
