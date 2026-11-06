###### Class ads_mobile_sdk.gn2 (ads_mobile_sdk.gn2)
.class public final Lads_mobile_sdk/gn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ao0;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/zd3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ao0;Lads_mobile_sdk/ex0;Lads_mobile_sdk/zd3;)V
    .registers 6

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedSettingsDataStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/gn2;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/gn2;->b:Lads_mobile_sdk/ao0;

    .line 22
    iput-object p3, p0, Lads_mobile_sdk/gn2;->c:Lads_mobile_sdk/ex0;

    .line 23
    iput-object p4, p0, Lads_mobile_sdk/gn2;->d:Lads_mobile_sdk/zd3;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->O:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/fn2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/fn2;

    iget v1, v0, Lads_mobile_sdk/fn2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/fn2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/fn2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/fn2;-><init>(Lads_mobile_sdk/gn2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/fn2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lads_mobile_sdk/fn2;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object v0, v0, Lads_mobile_sdk/fn2;->a:Lads_mobile_sdk/gn2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lads_mobile_sdk/gn2;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string v2, "key"

    const-string v4, "gads:phone_orientation:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v4, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 48
    iget-object p1, p0, Lads_mobile_sdk/gn2;->d:Lads_mobile_sdk/zd3;

    iput-object p0, v0, Lads_mobile_sdk/fn2;->a:Lads_mobile_sdk/gn2;

    iput v3, v0, Lads_mobile_sdk/fn2;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {p1, v0}, Lads_mobile_sdk/zd3;->b(Lads_mobile_sdk/zd3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_62

    return-object v1

    :cond_62
    move-object v0, p0

    .line 50
    :goto_63
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6c

    goto :goto_96

    .line 53
    :cond_6c
    iget-object p1, v0, Lads_mobile_sdk/gn2;->b:Lads_mobile_sdk/ao0;

    iget-object v0, v0, Lads_mobile_sdk/gn2;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ao0;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v3, :cond_89

    const/4 v0, 0x2

    if-eq p1, v0, :cond_86

    .line 58
    sget-object p1, Lads_mobile_sdk/dn2;->b:Lads_mobile_sdk/dn2;

    goto :goto_8b

    .line 59
    :cond_86
    sget-object p1, Lads_mobile_sdk/dn2;->d:Lads_mobile_sdk/dn2;

    goto :goto_8b

    .line 60
    :cond_89
    sget-object p1, Lads_mobile_sdk/dn2;->c:Lads_mobile_sdk/dn2;

    .line 64
    :goto_8b
    new-instance v0, Lads_mobile_sdk/q01;

    new-instance v1, Lads_mobile_sdk/en2;

    invoke-direct {v1, p1}, Lads_mobile_sdk/en2;-><init>(Lads_mobile_sdk/dn2;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 65
    :cond_96
    :goto_96
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/en2;

    sget-object v1, Lads_mobile_sdk/dn2;->b:Lads_mobile_sdk/dn2;

    invoke-direct {v0, v1}, Lads_mobile_sdk/en2;-><init>(Lads_mobile_sdk/dn2;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
