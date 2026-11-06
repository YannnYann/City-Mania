###### Class ads_mobile_sdk.lw3 (ads_mobile_sdk.lw3)
.class public final Lads_mobile_sdk/lw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/g30;

.field public final b:Lads_mobile_sdk/ur3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lads_mobile_sdk/ur3;)V
    .registers 4

    .line 1
    const-string v0, "consentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/lw3;->a:Lads_mobile_sdk/g30;

    iput-object p2, p0, Lads_mobile_sdk/lw3;->b:Lads_mobile_sdk/ur3;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of p1, p3, Lads_mobile_sdk/kw3;

    if-eqz p1, :cond_13

    move-object p1, p3

    check-cast p1, Lads_mobile_sdk/kw3;

    iget v0, p1, Lads_mobile_sdk/kw3;->d:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lads_mobile_sdk/kw3;->d:I

    goto :goto_18

    :cond_13
    new-instance p1, Lads_mobile_sdk/kw3;

    invoke-direct {p1, p0, p3}, Lads_mobile_sdk/kw3;-><init>(Lads_mobile_sdk/lw3;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, p1, Lads_mobile_sdk/kw3;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget v1, p1, Lads_mobile_sdk/kw3;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    if-ne v1, v2, :cond_2d

    iget-object p1, p1, Lads_mobile_sdk/kw3;->a:Lads_mobile_sdk/lw3;

    :try_start_27
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catch Lads_mobile_sdk/np1; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_7e

    :catch_2b
    move-exception p2

    goto :goto_83

    .line 27
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    const-string p3, "allowlist"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_5b

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Allowlist is missing from an updateAllowlist GMSG: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x6

    invoke-static {p1, p2, p3}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 36
    :cond_5b
    :try_start_5b
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64Url()Lcom/google/common/io/BaseEncoding;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p2

    const-string p3, "decode(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_68} :catch_94

    .line 44
    :try_start_68
    iget-object p3, p0, Lads_mobile_sdk/lw3;->a:Lads_mobile_sdk/g30;

    invoke-static {p2}, Lads_mobile_sdk/u00;->a([B)Lads_mobile_sdk/u00;

    move-result-object p2

    const-string v1, "parseFrom(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lads_mobile_sdk/kw3;->a:Lads_mobile_sdk/lw3;

    iput v2, p1, Lads_mobile_sdk/kw3;->d:I

    invoke-virtual {p3, p2, p1}, Lads_mobile_sdk/g30;->b(Lads_mobile_sdk/u00;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7b
    .catch Lads_mobile_sdk/np1; {:try_start_68 .. :try_end_7b} :catch_81

    if-ne p1, v0, :cond_7e

    return-object v0

    .line 50
    :cond_7e
    :goto_7e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_81
    move-exception p2

    move-object p1, p0

    .line 51
    :goto_83
    sget-object p3, Lads_mobile_sdk/xs3;->a:Lads_mobile_sdk/xs3;

    invoke-static {p3, p2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/xs3;Ljava/lang/Exception;)V

    .line 52
    iget-object p1, p1, Lads_mobile_sdk/lw3;->b:Lads_mobile_sdk/ur3;

    check-cast p1, Lads_mobile_sdk/as3;

    const-string p3, "Allowlist proto deserialization failed."

    invoke-virtual {p1, p3, p2}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_94
    move-exception p1

    .line 54
    sget-object p2, Lads_mobile_sdk/xs3;->a:Lads_mobile_sdk/xs3;

    invoke-static {p2, p1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/xs3;Ljava/lang/Exception;)V

    .line 55
    iget-object p2, p0, Lads_mobile_sdk/lw3;->b:Lads_mobile_sdk/ur3;

    check-cast p2, Lads_mobile_sdk/as3;

    const-string p3, "Allowlist gmsg param is not a valid encoded string."

    invoke-virtual {p2, p3, p1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->m:Lads_mobile_sdk/u11;

    return-object v0
.end method
