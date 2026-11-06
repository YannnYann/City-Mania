###### Class ads_mobile_sdk.o14 (ads_mobile_sdk.o14)
.class public final Lads_mobile_sdk/o14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r14;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/o14;->a:Lads_mobile_sdk/r14;

    iput-object p2, p0, Lads_mobile_sdk/o14;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/o14;

    iget-object v0, p0, Lads_mobile_sdk/o14;->a:Lads_mobile_sdk/r14;

    iget-object v1, p0, Lads_mobile_sdk/o14;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/o14;-><init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/o14;

    iget-object v0, p0, Lads_mobile_sdk/o14;->a:Lads_mobile_sdk/r14;

    iget-object v1, p0, Lads_mobile_sdk/o14;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/o14;-><init>(Lads_mobile_sdk/r14;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/o14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 271
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 273
    :try_start_6
    iget-object p1, p0, Lads_mobile_sdk/o14;->a:Lads_mobile_sdk/r14;

    .line 274
    iget-object v0, p1, Lads_mobile_sdk/r14;->j:Lads_mobile_sdk/t04;

    .line 275
    iget-object v1, p0, Lads_mobile_sdk/o14;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "name"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Landroidx/webkit/ProfileStore;->getInstance()Landroidx/webkit/ProfileStore;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/webkit/ProfileStore;->getOrCreateProfile(Ljava/lang/String;)Landroidx/webkit/Profile;

    move-result-object v0

    const-string v1, "getOrCreateProfile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iput-object v0, p1, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_23

    .line 278
    :catchall_23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
