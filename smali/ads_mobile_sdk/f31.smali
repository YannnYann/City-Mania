###### Class ads_mobile_sdk.f31 (ads_mobile_sdk.f31)
.class public final Lads_mobile_sdk/f31;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r31;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/f31;->a:Lads_mobile_sdk/r31;

    iput-object p3, p0, Lads_mobile_sdk/f31;->b:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/f31;->c:Ljava/lang/String;

    iput-object p5, p0, Lads_mobile_sdk/f31;->d:Ljava/lang/String;

    iput-object p6, p0, Lads_mobile_sdk/f31;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/f31;

    iget-object v1, p0, Lads_mobile_sdk/f31;->a:Lads_mobile_sdk/r31;

    iget-object v3, p0, Lads_mobile_sdk/f31;->b:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/f31;->c:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/f31;->d:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/f31;->e:Ljava/lang/String;

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/f31;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/f31;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/f31;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/f31;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lads_mobile_sdk/f31;->a:Lads_mobile_sdk/r31;

    .line 582
    iget-object v1, p0, Lads_mobile_sdk/f31;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/f31;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/f31;->d:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/f31;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
