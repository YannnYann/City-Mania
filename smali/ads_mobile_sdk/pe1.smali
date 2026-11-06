###### Class ads_mobile_sdk.pe1 (ads_mobile_sdk.pe1)
.class public final Lads_mobile_sdk/pe1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/if1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/pe1;->b:Lads_mobile_sdk/if1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;)V
    .registers 1

    .line 0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/pe1;

    iget-object v0, p0, Lads_mobile_sdk/pe1;->b:Lads_mobile_sdk/if1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/pe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/pe1;

    iget-object v0, p0, Lads_mobile_sdk/pe1;->b:Lads_mobile_sdk/if1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/pe1;-><init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/pe1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 351
    iget v1, p0, Lads_mobile_sdk/pe1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/pe1;->b:Lads_mobile_sdk/if1;

    sget-object v1, Lads_mobile_sdk/ae1;->c:Lads_mobile_sdk/ae1;

    new-instance v3, Lads_mobile_sdk/pe1$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lads_mobile_sdk/pe1$$ExternalSyntheticLambda0;-><init>()V

    iput v2, p0, Lads_mobile_sdk/pe1;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    invoke-static {p1, v1, v3, p0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lads_mobile_sdk/ae1;Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2f

    return-object v0

    .line 353
    :cond_2f
    :goto_2f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class ads_mobile_sdk.pe1$$ExternalSyntheticLambda0 (ads_mobile_sdk.pe1$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/pe1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/OnAdInspectorClosedListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdInspectorClosed(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;)V
    .registers 2

    .line 0
    invoke-static {p1}, Lads_mobile_sdk/pe1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdInspectorError;)V

    return-void
.end method
