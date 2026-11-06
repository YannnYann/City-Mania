###### Class ads_mobile_sdk.a63 (ads_mobile_sdk.a63)
.class public final Lads_mobile_sdk/a63;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/c63;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lads_mobile_sdk/i2;

.field public final synthetic e:Lads_mobile_sdk/zy;

.field public final synthetic f:Lads_mobile_sdk/v3;

.field public final synthetic g:Ljava/lang/Boolean;

.field public final synthetic h:Lads_mobile_sdk/ks3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/a63;->b:Lads_mobile_sdk/c63;

    iput-object p2, p0, Lads_mobile_sdk/a63;->c:Landroid/net/Uri;

    iput-object p3, p0, Lads_mobile_sdk/a63;->d:Lads_mobile_sdk/i2;

    iput-object p4, p0, Lads_mobile_sdk/a63;->e:Lads_mobile_sdk/zy;

    iput-object p5, p0, Lads_mobile_sdk/a63;->f:Lads_mobile_sdk/v3;

    iput-object p6, p0, Lads_mobile_sdk/a63;->g:Ljava/lang/Boolean;

    iput-object p7, p0, Lads_mobile_sdk/a63;->h:Lads_mobile_sdk/ks3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12

    .line 1
    new-instance v0, Lads_mobile_sdk/a63;

    iget-object v1, p0, Lads_mobile_sdk/a63;->b:Lads_mobile_sdk/c63;

    iget-object v2, p0, Lads_mobile_sdk/a63;->c:Landroid/net/Uri;

    iget-object v3, p0, Lads_mobile_sdk/a63;->d:Lads_mobile_sdk/i2;

    iget-object v4, p0, Lads_mobile_sdk/a63;->e:Lads_mobile_sdk/zy;

    iget-object v5, p0, Lads_mobile_sdk/a63;->f:Lads_mobile_sdk/v3;

    iget-object v6, p0, Lads_mobile_sdk/a63;->g:Ljava/lang/Boolean;

    iget-object v7, p0, Lads_mobile_sdk/a63;->h:Lads_mobile_sdk/ks3;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lads_mobile_sdk/a63;-><init>(Lads_mobile_sdk/c63;Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/a63;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/a63;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/a63;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 137
    iget v1, p0, Lads_mobile_sdk/a63;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_52

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lads_mobile_sdk/a63;->b:Lads_mobile_sdk/c63;

    move p1, v2

    .line 139
    iget-object v2, p0, Lads_mobile_sdk/a63;->c:Landroid/net/Uri;

    .line 140
    iget-object v3, p0, Lads_mobile_sdk/a63;->d:Lads_mobile_sdk/i2;

    iget-object v3, v3, Lads_mobile_sdk/i2;->x0:Lads_mobile_sdk/ga2;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lads_mobile_sdk/ga2;->a:Lads_mobile_sdk/ha2;

    .line 142
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    .line 143
    iget-object v4, p0, Lads_mobile_sdk/a63;->e:Lads_mobile_sdk/zy;

    iget-object v7, v4, Lads_mobile_sdk/zy;->h:Ljava/lang/String;

    .line 144
    iget-object v4, p0, Lads_mobile_sdk/a63;->b:Lads_mobile_sdk/c63;

    iget-object v8, p0, Lads_mobile_sdk/a63;->c:Landroid/net/Uri;

    .line 145
    iget-object v4, v4, Lads_mobile_sdk/c63;->g:Lads_mobile_sdk/uv;

    .line 146
    invoke-virtual {v4, v8}, Lads_mobile_sdk/uv;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v8

    .line 147
    iget-object v9, p0, Lads_mobile_sdk/a63;->f:Lads_mobile_sdk/v3;

    .line 148
    iget-object v10, p0, Lads_mobile_sdk/a63;->d:Lads_mobile_sdk/i2;

    .line 149
    iget-object v11, p0, Lads_mobile_sdk/a63;->g:Ljava/lang/Boolean;

    .line 150
    iget-object v12, p0, Lads_mobile_sdk/a63;->h:Lads_mobile_sdk/ks3;

    .line 151
    iput p1, p0, Lads_mobile_sdk/a63;->a:I

    const/4 v4, 0x1

    move-object v13, p0

    .line 152
    invoke-virtual/range {v1 .. v13}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_52

    return-object v0

    .line 153
    :cond_52
    :goto_52
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
