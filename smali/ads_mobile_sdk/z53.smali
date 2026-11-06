###### Class ads_mobile_sdk.z53 (ads_mobile_sdk.z53)
.class public final Lads_mobile_sdk/z53;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/c63;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lads_mobile_sdk/v3;

.field public final synthetic e:Lads_mobile_sdk/ks3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/z53;->b:Lads_mobile_sdk/c63;

    iput-object p2, p0, Lads_mobile_sdk/z53;->c:Landroid/net/Uri;

    iput-object p3, p0, Lads_mobile_sdk/z53;->d:Lads_mobile_sdk/v3;

    iput-object p4, p0, Lads_mobile_sdk/z53;->e:Lads_mobile_sdk/ks3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 1
    new-instance v0, Lads_mobile_sdk/z53;

    iget-object v1, p0, Lads_mobile_sdk/z53;->b:Lads_mobile_sdk/c63;

    iget-object v2, p0, Lads_mobile_sdk/z53;->c:Landroid/net/Uri;

    iget-object v3, p0, Lads_mobile_sdk/z53;->d:Lads_mobile_sdk/v3;

    iget-object v4, p0, Lads_mobile_sdk/z53;->e:Lads_mobile_sdk/ks3;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/z53;-><init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/z53;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/z53;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/z53;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 115
    iget v1, p0, Lads_mobile_sdk/z53;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_20

    if-ne v1, v2, :cond_18

    :try_start_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_14

    :cond_11
    move-object v8, p0

    goto/16 :goto_91

    :catch_14
    move-exception v0

    move-object p1, v0

    move-object v8, p0

    goto :goto_6d

    .line 116
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :try_start_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_14

    goto :goto_4c

    .line 117
    :cond_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    :try_start_27
    iget-object p1, p0, Lads_mobile_sdk/z53;->b:Lads_mobile_sdk/c63;

    iget-object v1, p0, Lads_mobile_sdk/z53;->c:Landroid/net/Uri;

    invoke-static {p1, v1}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 120
    iget-object v1, p0, Lads_mobile_sdk/z53;->b:Lads_mobile_sdk/c63;

    invoke-static {v1}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;)Lads_mobile_sdk/e01;

    move-result-object v1

    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lads_mobile_sdk/z53;->c:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lads_mobile_sdk/z53;->a:I

    const/16 v3, 0x1a

    invoke-static {v1, v4, p1, p0, v3}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Ljava/net/URL;Ljava/util/Map;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4c

    move-object v8, p0

    goto :goto_66

    .line 121
    :cond_4c
    :goto_4c
    check-cast p1, Lads_mobile_sdk/v01;

    .line 125
    instance-of v1, p1, Lads_mobile_sdk/q01;

    if-eqz v1, :cond_11

    .line 126
    iget-object v3, p0, Lads_mobile_sdk/z53;->b:Lads_mobile_sdk/c63;

    .line 127
    iget-object v4, p0, Lads_mobile_sdk/z53;->c:Landroid/net/Uri;

    .line 128
    move-object v5, p1

    check-cast v5, Lads_mobile_sdk/q01;

    .line 129
    iget-object v6, p0, Lads_mobile_sdk/z53;->d:Lads_mobile_sdk/v3;

    .line 130
    iget-object v7, p0, Lads_mobile_sdk/z53;->e:Lads_mobile_sdk/ks3;

    .line 131
    iput v2, p0, Lads_mobile_sdk/z53;->a:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5f} :catch_6a

    move-object v8, p0

    :try_start_60
    invoke-static/range {v3 .. v8}, Lads_mobile_sdk/c63;->a(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/q01;Lads_mobile_sdk/v3;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_64} :catch_67

    if-ne p1, v0, :cond_91

    :goto_66
    return-object v0

    :catch_67
    move-exception v0

    :goto_68
    move-object p1, v0

    goto :goto_6d

    :catch_6a
    move-exception v0

    move-object v8, p0

    goto :goto_68

    .line 139
    :goto_6d
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object v0, v8, Lads_mobile_sdk/z53;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while pinging URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 141
    :cond_91
    :goto_91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
