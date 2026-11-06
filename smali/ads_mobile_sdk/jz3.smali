###### Class ads_mobile_sdk.jz3 (ads_mobile_sdk.jz3)
.class public final Lads_mobile_sdk/jz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vm2;


# instance fields
.field public final a:Lads_mobile_sdk/qn;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qn;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    .line 1
    const-string v0, "appState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isLiveCountDecremented"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lads_mobile_sdk/jz3;->a:Lads_mobile_sdk/qn;

    .line 67
    iput-object p2, p0, Lads_mobile_sdk/jz3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 70
    iget-object p1, p0, Lads_mobile_sdk/jz3;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_17

    .line 71
    iget-object p1, p0, Lads_mobile_sdk/jz3;->a:Lads_mobile_sdk/qn;

    .line 72
    iget-object p1, p1, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 73
    check-cast p1, Lads_mobile_sdk/rs1;

    .line 74
    iget-object v0, p1, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 76
    iput v0, p1, Lads_mobile_sdk/rs1;->c:I

    .line 77
    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
