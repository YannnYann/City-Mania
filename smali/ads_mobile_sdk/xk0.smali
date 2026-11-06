###### Class ads_mobile_sdk.xk0 (ads_mobile_sdk.xk0)
.class public final Lads_mobile_sdk/xk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/qn;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qn;)V
    .registers 3

    .line 1
    const-string v0, "appState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/xk0;->a:Lads_mobile_sdk/qn;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->w:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/q01;

    .line 2
    new-instance v0, Lads_mobile_sdk/wk0;

    iget-object v1, p0, Lads_mobile_sdk/xk0;->a:Lads_mobile_sdk/qn;

    .line 3
    iget-object v1, v1, Lads_mobile_sdk/qn;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/xk0;->a:Lads_mobile_sdk/qn;

    .line 5
    iget-object v2, v2, Lads_mobile_sdk/qn;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/wk0;-><init>(Ljava/lang/String;Z)V

    .line 7
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
