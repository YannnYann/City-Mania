###### Class ads_mobile_sdk.be2 (ads_mobile_sdk.be2)
.class public final Lads_mobile_sdk/be2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/je2;

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/je2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/be2;->c:Lads_mobile_sdk/je2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/je2;Z)V
    .registers 8

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/je2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 3
    new-instance p1, Lads_mobile_sdk/ae2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lads_mobile_sdk/ae2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    move-object p0, v1

    .line 4
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, p1, p0}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/be2;

    iget-object v0, p0, Lads_mobile_sdk/be2;->c:Lads_mobile_sdk/je2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/be2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/be2;

    iget-object v0, p0, Lads_mobile_sdk/be2;->c:Lads_mobile_sdk/je2;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/be2;-><init>(Lads_mobile_sdk/je2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/be2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 151
    iget v1, p0, Lads_mobile_sdk/be2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_31

    if-eq v1, v6, :cond_2d

    if-eq v1, v7, :cond_28

    if-eq v1, v5, :cond_21

    if-eq v1, v4, :cond_28

    if-ne v1, v3, :cond_19

    goto :goto_28

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    iget-object v1, p0, Lads_mobile_sdk/be2;->a:Lads_mobile_sdk/je2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ab

    :cond_28
    :goto_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c7

    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lads_mobile_sdk/be2;->c:Lads_mobile_sdk/je2;

    .line 153
    iget-object p1, p1, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    .line 154
    iput v6, p0, Lads_mobile_sdk/be2;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {p1, p0}, Lads_mobile_sdk/ze2;->a(Lads_mobile_sdk/ze2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_45

    goto/16 :goto_c6

    .line 156
    :cond_45
    :goto_45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 157
    iget-object p1, p0, Lads_mobile_sdk/be2;->c:Lads_mobile_sdk/je2;

    .line 158
    iget-object v1, p1, Lads_mobile_sdk/je2;->g:Lads_mobile_sdk/ze2;

    .line 159
    new-instance v2, Lads_mobile_sdk/be2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lads_mobile_sdk/be2$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/je2;)V

    iput v7, p0, Lads_mobile_sdk/be2;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    invoke-static {v1, v2, p0}, Lads_mobile_sdk/ze2;->a(Lads_mobile_sdk/ze2;Lads_mobile_sdk/zp1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c7

    goto :goto_c6

    .line 161
    :cond_62
    iget-object v1, p0, Lads_mobile_sdk/be2;->c:Lads_mobile_sdk/je2;

    .line 162
    iget-object p1, v1, Lads_mobile_sdk/je2;->i:Lads_mobile_sdk/k9;

    if-eqz p1, :cond_ba

    .line 163
    iget-object v3, v1, Lads_mobile_sdk/je2;->e:Lads_mobile_sdk/kd2;

    .line 164
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    const-string v6, "adSession"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object v3, v3, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v6, Lads_mobile_sdk/zc2;

    invoke-direct {v6, p1}, Lads_mobile_sdk/zc2;-><init>(Lads_mobile_sdk/k9;)V

    const-string p1, "FinishOmidSession"

    invoke-interface {v3, p1, v6}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 302
    iput-object v2, v1, Lads_mobile_sdk/je2;->i:Lads_mobile_sdk/k9;

    .line 303
    iget-object p1, v1, Lads_mobile_sdk/es;->a:Lads_mobile_sdk/ex0;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 306
    const-string v6, "key"

    const-string v8, "gads:omid:destroy_webview_delay"

    invoke-static {v7, v3, v8, v6}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v3

    .line 307
    sget-object v6, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {p1, v8, v3, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v6

    .line 308
    iput-object v1, p0, Lads_mobile_sdk/be2;->a:Lads_mobile_sdk/je2;

    iput v5, p0, Lads_mobile_sdk/be2;->b:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_ab

    goto :goto_c6

    .line 309
    :cond_ab
    :goto_ab
    iget-object p1, v1, Lads_mobile_sdk/je2;->f:Lads_mobile_sdk/h41;

    .line 310
    iget-object p1, p1, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    .line 311
    iput-object v2, p0, Lads_mobile_sdk/be2;->a:Lads_mobile_sdk/je2;

    iput v4, p0, Lads_mobile_sdk/be2;->b:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/r31;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c7

    goto :goto_c6

    .line 312
    :cond_ba
    iget-object p1, v1, Lads_mobile_sdk/je2;->f:Lads_mobile_sdk/h41;

    .line 313
    iget-object p1, p1, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    .line 314
    iput v3, p0, Lads_mobile_sdk/be2;->b:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/r31;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c7

    :goto_c6
    return-object v0

    .line 316
    :cond_c7
    :goto_c7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class ads_mobile_sdk.be2$$ExternalSyntheticLambda0 (ads_mobile_sdk.be2$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/be2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/zp1;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/je2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/je2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/be2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/je2;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/be2$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/je2;

    invoke-static {v0, p1}, Lads_mobile_sdk/be2;->a(Lads_mobile_sdk/je2;Z)V

    return-void
.end method
