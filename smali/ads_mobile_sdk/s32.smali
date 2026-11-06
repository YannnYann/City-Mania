###### Class ads_mobile_sdk.s32 (ads_mobile_sdk.s32)
.class public final Lads_mobile_sdk/s32;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/t32;

.field public final synthetic b:Lads_mobile_sdk/o32;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/t32;Lads_mobile_sdk/o32;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/s32;->a:Lads_mobile_sdk/t32;

    iput-object p2, p0, Lads_mobile_sdk/s32;->b:Lads_mobile_sdk/o32;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/s32;

    iget-object v0, p0, Lads_mobile_sdk/s32;->a:Lads_mobile_sdk/t32;

    iget-object v1, p0, Lads_mobile_sdk/s32;->b:Lads_mobile_sdk/o32;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/s32;-><init>(Lads_mobile_sdk/t32;Lads_mobile_sdk/o32;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/s32;

    iget-object v0, p0, Lads_mobile_sdk/s32;->a:Lads_mobile_sdk/t32;

    iget-object v1, p0, Lads_mobile_sdk/s32;->b:Lads_mobile_sdk/o32;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/s32;-><init>(Lads_mobile_sdk/t32;Lads_mobile_sdk/o32;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/s32;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lads_mobile_sdk/s32;->a:Lads_mobile_sdk/t32;

    iget-object v0, p0, Lads_mobile_sdk/s32;->b:Lads_mobile_sdk/o32;

    invoke-static {p1, v0}, Lads_mobile_sdk/t32;->a(Lads_mobile_sdk/t32;Lads_mobile_sdk/o32;)V

    .line 50
    iget-object p1, p0, Lads_mobile_sdk/s32;->a:Lads_mobile_sdk/t32;

    iget-object v0, p0, Lads_mobile_sdk/s32;->b:Lads_mobile_sdk/o32;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/t32;->a(Lads_mobile_sdk/o32;)V

    .line 51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
