###### Class ads_mobile_sdk.b02 (ads_mobile_sdk.b02)
.class public final Lads_mobile_sdk/b02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic b:Lads_mobile_sdk/e02;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lads_mobile_sdk/e02;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/b02;->a:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lads_mobile_sdk/b02;->b:Lads_mobile_sdk/e02;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 110
    iget-object v0, p0, Lads_mobile_sdk/b02;->a:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lads_mobile_sdk/a02;

    iget-object v2, p0, Lads_mobile_sdk/b02;->b:Lads_mobile_sdk/e02;

    invoke-direct {v1, p1, v2}, Lads_mobile_sdk/a02;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lads_mobile_sdk/e02;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_14

    return-object p1

    .line 111
    :cond_14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
