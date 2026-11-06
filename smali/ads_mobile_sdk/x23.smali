###### Class ads_mobile_sdk.x23 (ads_mobile_sdk.x23)
.class public final Lads_mobile_sdk/x23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x23;->a:Lkotlinx/coroutines/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 450
    check-cast p1, Lkotlin/Unit;

    .line 451
    iget-object p1, p0, Lads_mobile_sdk/x23;->a:Lkotlinx/coroutines/Job;

    .line 452
    new-instance p2, Lads_mobile_sdk/dz2;

    .line 453
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Ad request cancelled by publisher action."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-direct {p2, v0}, Lads_mobile_sdk/dz2;-><init>(Ljava/util/concurrent/CancellationException;)V

    .line 455
    invoke-interface {p1, p2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 460
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
