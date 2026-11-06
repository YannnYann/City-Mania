###### Class ads_mobile_sdk.d02 (ads_mobile_sdk.d02)
.class public final Lads_mobile_sdk/d02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/j2;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/j2;

.field public final synthetic b:Lads_mobile_sdk/e02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j2;Lads_mobile_sdk/e02;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/d02;->a:Lads_mobile_sdk/j2;

    iput-object p2, p0, Lads_mobile_sdk/d02;->b:Lads_mobile_sdk/e02;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/c02;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/c02;

    iget v1, v0, Lads_mobile_sdk/c02;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c02;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/c02;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/c02;-><init>(Lads_mobile_sdk/d02;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/c02;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 130
    iget v2, v0, Lads_mobile_sdk/c02;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/c02;->a:Lads_mobile_sdk/d02;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_44

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    iget-object p3, p0, Lads_mobile_sdk/d02;->a:Lads_mobile_sdk/j2;

    .line 136
    iput-object p0, v0, Lads_mobile_sdk/c02;->a:Lads_mobile_sdk/d02;

    iput v3, v0, Lads_mobile_sdk/c02;->d:I

    invoke-interface {p3, p1, p2, v0}, Lads_mobile_sdk/j2;->a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_43

    return-object v1

    :cond_43
    move-object p1, p0

    .line 137
    :goto_44
    check-cast p3, Lads_mobile_sdk/v01;

    .line 165
    instance-of p2, p3, Lads_mobile_sdk/i01;

    if-eqz p2, :cond_4d

    check-cast p3, Lads_mobile_sdk/i01;

    return-object p3

    .line 166
    :cond_4d
    const-string p2, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lads_mobile_sdk/q01;

    .line 167
    iget-object p2, p3, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 168
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 169
    iget-object p1, p1, Lads_mobile_sdk/d02;->b:Lads_mobile_sdk/e02;

    .line 191
    new-instance p3, Lads_mobile_sdk/b02;

    invoke-direct {p3, p2, p1}, Lads_mobile_sdk/b02;-><init>(Lkotlinx/coroutines/flow/Flow;Lads_mobile_sdk/e02;)V

    .line 192
    new-instance p1, Lads_mobile_sdk/q01;

    invoke-direct {p1, p3}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final b()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lads_mobile_sdk/d02;->a:Lads_mobile_sdk/j2;

    invoke-interface {v0}, Lads_mobile_sdk/j2;->b()Z

    move-result v0

    return v0
.end method
