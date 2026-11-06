###### Class ads_mobile_sdk.yn2 (ads_mobile_sdk.yn2)
.class public final Lads_mobile_sdk/yn2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/do2;

.field public final synthetic d:Lads_mobile_sdk/ao2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/do2;Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yn2;->c:Lads_mobile_sdk/do2;

    iput-object p2, p0, Lads_mobile_sdk/yn2;->d:Lads_mobile_sdk/ao2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/yn2;

    iget-object v0, p0, Lads_mobile_sdk/yn2;->c:Lads_mobile_sdk/do2;

    iget-object v1, p0, Lads_mobile_sdk/yn2;->d:Lads_mobile_sdk/ao2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/yn2;-><init>(Lads_mobile_sdk/do2;Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/yn2;

    iget-object v0, p0, Lads_mobile_sdk/yn2;->c:Lads_mobile_sdk/do2;

    iget-object v1, p0, Lads_mobile_sdk/yn2;->d:Lads_mobile_sdk/ao2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/yn2;-><init>(Lads_mobile_sdk/do2;Lads_mobile_sdk/ao2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/yn2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 269
    iget v1, p0, Lads_mobile_sdk/yn2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget v1, p0, Lads_mobile_sdk/yn2;->a:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 270
    iget-object p1, p0, Lads_mobile_sdk/yn2;->c:Lads_mobile_sdk/do2;

    .line 271
    iget-object p1, p1, Lads_mobile_sdk/do2;->i:Lads_mobile_sdk/sn2;

    if-eqz p1, :cond_23

    goto :goto_73

    .line 272
    :cond_23
    iget-object p1, p0, Lads_mobile_sdk/yn2;->d:Lads_mobile_sdk/ao2;

    .line 273
    iget-object p1, p1, Lads_mobile_sdk/ao2;->h:Lads_mobile_sdk/qn2;

    .line 274
    iget-object p1, p1, Lads_mobile_sdk/qn2;->a:Lads_mobile_sdk/ex0;

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 277
    const-string v3, "key"

    const/16 v4, 0xbb8

    const-string v5, "gads:picture_in_picture:close_button_delay_ms"

    invoke-static {v4, v1, v5, v3}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 278
    sget-object v3, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, v5, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 279
    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v3

    long-to-int p1, v3

    if-lez p1, :cond_73

    move v1, p1

    :goto_4e
    if-lez v1, :cond_65

    .line 282
    iget-object p1, p0, Lads_mobile_sdk/yn2;->c:Lads_mobile_sdk/do2;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/do2;->b(I)V

    .line 283
    iput v1, p0, Lads_mobile_sdk/yn2;->a:I

    iput v2, p0, Lads_mobile_sdk/yn2;->b:I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_62

    return-object v0

    :cond_62
    :goto_62
    add-int/lit8 v1, v1, -0x1

    goto :goto_4e

    .line 285
    :cond_65
    iget-object p1, p0, Lads_mobile_sdk/yn2;->c:Lads_mobile_sdk/do2;

    .line 286
    iget-object v0, p1, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    if-eqz v0, :cond_73

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p1, Lads_mobile_sdk/do2;->j:Lads_mobile_sdk/sn2;

    .line 289
    iput-object v0, p1, Lads_mobile_sdk/do2;->k:Landroid/widget/TextView;

    .line 290
    :cond_73
    :goto_73
    iget-object p1, p0, Lads_mobile_sdk/yn2;->c:Lads_mobile_sdk/do2;

    new-instance v0, Lads_mobile_sdk/xn2;

    iget-object v1, p0, Lads_mobile_sdk/yn2;->d:Lads_mobile_sdk/ao2;

    invoke-direct {v0, v1}, Lads_mobile_sdk/xn2;-><init>(Lads_mobile_sdk/ao2;)V

    invoke-virtual {p1, v0}, Lads_mobile_sdk/do2;->a(Lads_mobile_sdk/xn2;)V

    .line 299
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
