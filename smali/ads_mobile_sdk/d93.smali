###### Class ads_mobile_sdk.d93 (ads_mobile_sdk.d93)
.class public final Lads_mobile_sdk/d93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xd;


# instance fields
.field public final a:Lads_mobile_sdk/v3;

.field public final b:Lads_mobile_sdk/i2;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;)V
    .registers 4

    .line 1
    const-string v0, "adEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lads_mobile_sdk/d93;->a:Lads_mobile_sdk/v3;

    .line 17
    iput-object p2, p0, Lads_mobile_sdk/d93;->b:Lads_mobile_sdk/i2;

    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/d93;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    if-eqz p1, :cond_34

    .line 23
    iget-object p1, p0, Lads_mobile_sdk/d93;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 25
    iget-object p1, p0, Lads_mobile_sdk/d93;->b:Lads_mobile_sdk/i2;

    iget-object p1, p1, Lads_mobile_sdk/i2;->q0:Lads_mobile_sdk/h2;

    sget-object v0, Lads_mobile_sdk/h2;->g:Lads_mobile_sdk/h2;

    if-ne p1, v0, :cond_24

    .line 27
    iget-object p1, p0, Lads_mobile_sdk/d93;->a:Lads_mobile_sdk/v3;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/v3;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_21

    return-object p1

    :cond_21
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 29
    :cond_24
    iget-object p1, p0, Lads_mobile_sdk/d93;->a:Lads_mobile_sdk/v3;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/v3;->r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_31

    return-object p1

    :cond_31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 33
    :cond_34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
