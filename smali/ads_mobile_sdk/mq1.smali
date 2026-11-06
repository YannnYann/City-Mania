###### Class ads_mobile_sdk.mq1 (ads_mobile_sdk.mq1)
.class public final Lads_mobile_sdk/mq1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic d:Lads_mobile_sdk/yq1;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lads_mobile_sdk/yq1;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mq1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lads_mobile_sdk/mq1;->d:Lads_mobile_sdk/yq1;

    iput-object p3, p0, Lads_mobile_sdk/mq1;->e:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/mq1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/mq1;

    iget-object v1, p0, Lads_mobile_sdk/mq1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lads_mobile_sdk/mq1;->d:Lads_mobile_sdk/yq1;

    iget-object v3, p0, Lads_mobile_sdk/mq1;->e:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/mq1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/mq1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lads_mobile_sdk/yq1;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mq1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mq1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/mq1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 172
    iget v1, p0, Lads_mobile_sdk/mq1;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_27

    if-eq v1, v4, :cond_23

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lads_mobile_sdk/mq1;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lads_mobile_sdk/mq1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_5c

    .line 178
    iget-object p1, p0, Lads_mobile_sdk/mq1;->d:Lads_mobile_sdk/yq1;

    .line 179
    iget-object p1, p1, Lads_mobile_sdk/yq1;->f:Lads_mobile_sdk/ex0;

    .line 180
    iget-object p1, p1, Lads_mobile_sdk/ex0;->s:Lads_mobile_sdk/eb3;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 183
    const-string v5, "key"

    const/16 v6, 0x78

    const-string v7, "gads:sdk_core_update_delay_sec"

    invoke-static {v6, v1, v7, v5}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v1

    .line 184
    sget-object v5, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {p1, v7, v1, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 185
    iput v4, p0, Lads_mobile_sdk/mq1;->b:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    goto :goto_95

    .line 188
    :cond_5c
    :goto_5c
    iget-object p1, p0, Lads_mobile_sdk/mq1;->d:Lads_mobile_sdk/yq1;

    iget-object v1, p0, Lads_mobile_sdk/mq1;->e:Ljava/lang/String;

    iput v3, p0, Lads_mobile_sdk/mq1;->b:I

    invoke-static {p1, v1, p0}, Lads_mobile_sdk/yq1;->b(Lads_mobile_sdk/yq1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_69

    goto :goto_95

    .line 189
    :cond_69
    :goto_69
    check-cast p1, Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lads_mobile_sdk/mq1;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_96

    iget-object v1, p0, Lads_mobile_sdk/mq1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_96

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    goto :goto_96

    :cond_80
    if-eqz p1, :cond_96

    .line 209
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    goto :goto_96

    .line 210
    :cond_89
    iget-object v1, p0, Lads_mobile_sdk/mq1;->d:Lads_mobile_sdk/yq1;

    iput-object p1, p0, Lads_mobile_sdk/mq1;->a:Ljava/lang/String;

    iput v2, p0, Lads_mobile_sdk/mq1;->b:I

    invoke-static {v1, p1, p0}, Lads_mobile_sdk/yq1;->a(Lads_mobile_sdk/yq1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_96

    :goto_95
    return-object v0

    :cond_96
    :goto_96
    return-object p1
.end method
