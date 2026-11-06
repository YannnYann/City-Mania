###### Class ads_mobile_sdk.bc0 (ads_mobile_sdk.bc0)
.class public final Lads_mobile_sdk/bc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;)V
    .registers 3

    .line 1
    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lads_mobile_sdk/bc0;->a:Lads_mobile_sdk/g30;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->v:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ac0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ac0;

    iget v1, v0, Lads_mobile_sdk/ac0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ac0;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ac0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ac0;-><init>(Lads_mobile_sdk/bc0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ac0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lads_mobile_sdk/ac0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_42

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lads_mobile_sdk/bc0;->a:Lads_mobile_sdk/g30;

    iput v3, v0, Lads_mobile_sdk/ac0;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {p1, v0}, Lads_mobile_sdk/g30;->c(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_42

    return-object v1

    .line 21
    :cond_42
    :goto_42
    check-cast p1, Lcom/google/gson/JsonObject;

    new-instance v0, Lads_mobile_sdk/zb0;

    invoke-direct {v0, p1}, Lads_mobile_sdk/zb0;-><init>(Lcom/google/gson/JsonObject;)V

    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
