###### Class ads_mobile_sdk.at0 (ads_mobile_sdk.at0)
.class public interface abstract Lads_mobile_sdk/at0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lads_mobile_sdk/at0;Lads_mobile_sdk/h41;Lads_mobile_sdk/i2;Lads_mobile_sdk/tk0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p4, Lads_mobile_sdk/zs0;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lads_mobile_sdk/zs0;

    iget v1, v0, Lads_mobile_sdk/zs0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zs0;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zs0;

    invoke-direct {v0, p0, p4}, Lads_mobile_sdk/zs0;-><init>(Lads_mobile_sdk/at0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lads_mobile_sdk/zs0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lads_mobile_sdk/zs0;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p3, v0, Lads_mobile_sdk/zs0;->c:Lads_mobile_sdk/tk0;

    iget-object p2, v0, Lads_mobile_sdk/zs0;->b:Lads_mobile_sdk/i2;

    iget-object p1, v0, Lads_mobile_sdk/zs0;->a:Lads_mobile_sdk/h41;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object p4, p1, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    .line 29
    iput-object p1, v0, Lads_mobile_sdk/zs0;->a:Lads_mobile_sdk/h41;

    iput-object p2, v0, Lads_mobile_sdk/zs0;->b:Lads_mobile_sdk/i2;

    iput-object p3, v0, Lads_mobile_sdk/zs0;->c:Lads_mobile_sdk/tk0;

    iput v3, v0, Lads_mobile_sdk/zs0;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 31
    invoke-interface {p0}, Lads_mobile_sdk/at0;->a()Lads_mobile_sdk/km;

    move-result-object v3

    .line 32
    iget-boolean v3, v3, Lads_mobile_sdk/km;->d:Z

    .line 33
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_muted"

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lads_mobile_sdk/at0;->a()Lads_mobile_sdk/km;

    move-result-object p0

    .line 35
    iget p0, p0, Lads_mobile_sdk/km;->c:F

    .line 36
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const-string v3, "app_volume"

    invoke-virtual {v2, v3, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p0, "volume"

    invoke-virtual {p4, v2, p0, v0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p4

    if-ne p0, p4, :cond_77

    goto :goto_79

    :cond_77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_79
    if-ne p0, v1, :cond_7c

    return-object v1

    .line 39
    :cond_7c
    :goto_7c
    iput-object p3, p1, Lads_mobile_sdk/h41;->b:Lads_mobile_sdk/nr3;

    .line 40
    iget-boolean p0, p2, Lads_mobile_sdk/i2;->d0:Z

    if-eqz p0, :cond_9e

    .line 41
    new-instance p0, Lads_mobile_sdk/zn3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lads_mobile_sdk/zn3;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x31

    const/4 p4, -0x2

    invoke-direct {p2, p4, p4, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 44
    :cond_9e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abstract a()Lads_mobile_sdk/km;
.end method
