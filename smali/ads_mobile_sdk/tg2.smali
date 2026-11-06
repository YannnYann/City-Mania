###### Class ads_mobile_sdk.tg2 (ads_mobile_sdk.tg2)
.class public final Lads_mobile_sdk/tg2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ah2;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ah2;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tg2;->a:Lads_mobile_sdk/ah2;

    iput-object p2, p0, Lads_mobile_sdk/tg2;->b:Ljava/lang/Exception;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/tg2;

    iget-object v0, p0, Lads_mobile_sdk/tg2;->a:Lads_mobile_sdk/ah2;

    iget-object v1, p0, Lads_mobile_sdk/tg2;->b:Ljava/lang/Exception;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/tg2;-><init>(Lads_mobile_sdk/ah2;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/tg2;

    iget-object v0, p0, Lads_mobile_sdk/tg2;->a:Lads_mobile_sdk/ah2;

    iget-object v1, p0, Lads_mobile_sdk/tg2;->b:Ljava/lang/Exception;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/tg2;-><init>(Lads_mobile_sdk/ah2;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/tg2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 695
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 696
    iget-object p1, p0, Lads_mobile_sdk/tg2;->a:Lads_mobile_sdk/ah2;

    .line 697
    iget-object p1, p1, Lads_mobile_sdk/ah2;->r:Lads_mobile_sdk/ur3;

    .line 698
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lads_mobile_sdk/tg2;->b:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lads_mobile_sdk/as3;

    const-string v1, "CustomTabsClient.newSession"

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
