###### Class ads_mobile_sdk.s21 (ads_mobile_sdk.s21)
.class public final Lads_mobile_sdk/s21;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/u21;

.field public final synthetic c:Landroid/webkit/ConsoleMessage;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/u21;Landroid/webkit/ConsoleMessage;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/s21;->b:Lads_mobile_sdk/u21;

    iput-object p2, p0, Lads_mobile_sdk/s21;->c:Landroid/webkit/ConsoleMessage;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/s21;

    iget-object v0, p0, Lads_mobile_sdk/s21;->b:Lads_mobile_sdk/u21;

    iget-object v1, p0, Lads_mobile_sdk/s21;->c:Landroid/webkit/ConsoleMessage;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/s21;-><init>(Lads_mobile_sdk/u21;Landroid/webkit/ConsoleMessage;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/s21;

    iget-object v0, p0, Lads_mobile_sdk/s21;->b:Lads_mobile_sdk/u21;

    iget-object v1, p0, Lads_mobile_sdk/s21;->c:Landroid/webkit/ConsoleMessage;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/s21;-><init>(Lads_mobile_sdk/u21;Landroid/webkit/ConsoleMessage;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/s21;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 83
    iget v1, p0, Lads_mobile_sdk/s21;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lads_mobile_sdk/s21;->b:Lads_mobile_sdk/u21;

    .line 85
    iget-object p1, p1, Lads_mobile_sdk/u21;->b:Lads_mobile_sdk/vk0;

    if-eqz p1, :cond_77

    .line 86
    iput v2, p0, Lads_mobile_sdk/s21;->a:I

    check-cast p1, Lads_mobile_sdk/if1;

    .line 87
    invoke-static {p1, p0}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    .line 88
    :cond_2b
    :goto_2b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v2, :cond_77

    .line 90
    iget-object p1, p0, Lads_mobile_sdk/s21;->c:Landroid/webkit/ConsoleMessage;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object p1

    if-nez p1, :cond_3d

    const/4 p1, -0x1

    goto :goto_45

    :cond_3d
    sget-object v0, Lads_mobile_sdk/r21;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_45
    if-eq p1, v2, :cond_56

    const/4 v0, 0x2

    if-eq p1, v0, :cond_53

    const/4 v0, 0x3

    if-eq p1, v0, :cond_50

    .line 94
    sget-object p1, Lads_mobile_sdk/cq1;->d:Lads_mobile_sdk/cq1;

    goto :goto_58

    .line 95
    :cond_50
    sget-object p1, Lads_mobile_sdk/cq1;->c:Lads_mobile_sdk/cq1;

    goto :goto_58

    .line 96
    :cond_53
    sget-object p1, Lads_mobile_sdk/cq1;->b:Lads_mobile_sdk/cq1;

    goto :goto_58

    .line 97
    :cond_56
    sget-object p1, Lads_mobile_sdk/cq1;->a:Lads_mobile_sdk/cq1;

    .line 104
    :goto_58
    iget-object v0, p0, Lads_mobile_sdk/s21;->c:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lads_mobile_sdk/s21;->c:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    .line 106
    iget-object v2, p0, Lads_mobile_sdk/s21;->c:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {v0, v1, v2, p1}, Lads_mobile_sdk/dq1;->a(Ljava/lang/String;ILjava/lang/String;Lads_mobile_sdk/cq1;)V

    .line 114
    :cond_77
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
