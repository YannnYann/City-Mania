###### Class ads_mobile_sdk.d04 (ads_mobile_sdk.d04)
.class public final Lads_mobile_sdk/d04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/r31;

.field public final b:Lads_mobile_sdk/df2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/df2;)V
    .registers 4

    .line 1
    const-string v0, "gmaWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omidMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lads_mobile_sdk/d04;->a:Lads_mobile_sdk/r31;

    iput-object p2, p0, Lads_mobile_sdk/d04;->b:Lads_mobile_sdk/df2;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/c04;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/c04;

    iget v1, v0, Lads_mobile_sdk/c04;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c04;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c04;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/c04;-><init>(Lads_mobile_sdk/d04;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/c04;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Lads_mobile_sdk/c04;->d:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_41

    if-eq v2, v5, :cond_3b

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_78

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_68

    :cond_3b
    iget-object v2, v0, Lads_mobile_sdk/c04;->a:Lads_mobile_sdk/d04;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_52

    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lads_mobile_sdk/d04;->b:Lads_mobile_sdk/df2;

    iput-object p0, v0, Lads_mobile_sdk/c04;->a:Lads_mobile_sdk/d04;

    iput v5, v0, Lads_mobile_sdk/c04;->d:I

    invoke-interface {p1, v0}, Lads_mobile_sdk/df2;->m(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_51

    goto :goto_77

    :cond_51
    move-object v2, p0

    .line 16
    :goto_52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_6b

    .line 17
    iget-object p1, v2, Lads_mobile_sdk/d04;->b:Lads_mobile_sdk/df2;

    iput-object v5, v0, Lads_mobile_sdk/c04;->a:Lads_mobile_sdk/d04;

    iput v4, v0, Lads_mobile_sdk/c04;->d:I

    invoke-interface {p1, v0}, Lads_mobile_sdk/df2;->a(Lads_mobile_sdk/c04;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_68

    goto :goto_77

    .line 21
    :cond_68
    :goto_68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 22
    :cond_6b
    iget-object p1, v2, Lads_mobile_sdk/d04;->a:Lads_mobile_sdk/r31;

    iput-object v5, v0, Lads_mobile_sdk/c04;->a:Lads_mobile_sdk/d04;

    iput v3, v0, Lads_mobile_sdk/c04;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/r31;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_78

    :goto_77
    return-object v1

    .line 24
    :cond_78
    :goto_78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
