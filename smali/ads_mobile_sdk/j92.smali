###### Class ads_mobile_sdk.j92 (ads_mobile_sdk.j92)
.class public final Lads_mobile_sdk/j92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/b24;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lads_mobile_sdk/km;

.field public final e:Ljava/util/Optional;

.field public final f:Lads_mobile_sdk/tx;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Lads_mobile_sdk/i92;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/km;Ljava/util/Optional;Lads_mobile_sdk/tx;)V
    .registers 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afmaVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionalGmaWebView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lads_mobile_sdk/j92;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lads_mobile_sdk/j92;->b:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lads_mobile_sdk/j92;->c:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lads_mobile_sdk/j92;->d:Lads_mobile_sdk/km;

    .line 40
    iput-object p5, p0, Lads_mobile_sdk/j92;->e:Ljava/util/Optional;

    .line 41
    iput-object p6, p0, Lads_mobile_sdk/j92;->f:Lads_mobile_sdk/tx;

    .line 44
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/j92;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/j92;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance p1, Lads_mobile_sdk/i92;

    invoke-direct {p1}, Lads_mobile_sdk/i92;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/j92;->i:Lads_mobile_sdk/i92;

    return-void
.end method


# virtual methods
.method public final b(Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 81
    iget-object v0, p0, Lads_mobile_sdk/j92;->i:Lads_mobile_sdk/i92;

    .line 82
    iget-object v1, p0, Lads_mobile_sdk/j92;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget-boolean v1, p1, Lads_mobile_sdk/ey3;->b:Z

    .line 83
    :goto_e
    iput-boolean v1, v0, Lads_mobile_sdk/i92;->a:Z

    .line 85
    iget-object v0, p0, Lads_mobile_sdk/j92;->i:Lads_mobile_sdk/i92;

    iget-object v1, p0, Lads_mobile_sdk/j92;->f:Lads_mobile_sdk/tx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 87
    iput-wide v1, v0, Lads_mobile_sdk/i92;->d:J

    .line 88
    iget-object v0, p0, Lads_mobile_sdk/j92;->i:Lads_mobile_sdk/i92;

    iput-object p1, v0, Lads_mobile_sdk/i92;->f:Lads_mobile_sdk/ey3;

    .line 92
    iget-object p1, p0, Lads_mobile_sdk/j92;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-virtual {p0, p2}, Lads_mobile_sdk/j92;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_34

    return-object p1

    :cond_34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 93
    :cond_37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 75
    iget-object v0, p0, Lads_mobile_sdk/j92;->e:Ljava/util/Optional;

    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/r31;

    if-nez v0, :cond_d

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 76
    :cond_d
    iget-object v1, p0, Lads_mobile_sdk/j92;->i:Lads_mobile_sdk/i92;

    iget-object v2, p0, Lads_mobile_sdk/j92;->a:Landroid/content/Context;

    iget-object v3, p0, Lads_mobile_sdk/j92;->b:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/j92;->c:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/j92;->d:Lads_mobile_sdk/km;

    invoke-virtual {v1, v2, v3, v4, v5}, Lads_mobile_sdk/i92;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/km;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 77
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling: AFMA_updateActiveView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 79
    const-string v2, "AFMA_updateActiveView"

    invoke-virtual {v0, v1, v2, p1}, Lads_mobile_sdk/r31;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_43

    return-object p1

    :cond_43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
