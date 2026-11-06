###### Class ads_mobile_sdk.h4 (ads_mobile_sdk.h4)
.class public final Lads_mobile_sdk/h4;
.super Lads_mobile_sdk/pl3;
.source "SourceFile"


# instance fields
.field public final d:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;)V
    .registers 3

    .line 1
    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lads_mobile_sdk/s11;->s:Lads_mobile_sdk/s11;

    invoke-direct {p0, v0}, Lads_mobile_sdk/pl3;-><init>(Lads_mobile_sdk/s11;)V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/h4;->d:Lads_mobile_sdk/g30;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->e:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/g4;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/g4;

    iget v1, v0, Lads_mobile_sdk/g4;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/g4;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/g4;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/g4;-><init>(Lads_mobile_sdk/h4;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/g4;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lads_mobile_sdk/g4;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4c

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lads_mobile_sdk/h4;->d:Lads_mobile_sdk/g30;

    iput v3, v0, Lads_mobile_sdk/g4;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v0, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object p1, p1, Lads_mobile_sdk/g30;->c:Landroid/content/Context;

    const-string v0, "com.google.android.gms.permission.AD_ID"

    invoke-static {p1, v0}, Lads_mobile_sdk/m21;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-ne p1, v1, :cond_4c

    return-object v1

    .line 21
    :cond_4c
    :goto_4c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Lads_mobile_sdk/f4;

    invoke-direct {v0, p1}, Lads_mobile_sdk/f4;-><init>(Z)V

    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
