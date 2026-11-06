###### Class ads_mobile_sdk.sj3 (ads_mobile_sdk.sj3)
.class public final Lads_mobile_sdk/sj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/tj3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tj3;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lads_mobile_sdk/sj3;->a:Lads_mobile_sdk/tj3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 79
    check-cast p1, Lads_mobile_sdk/qj3;

    if-eqz p1, :cond_9

    .line 80
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 82
    :cond_9
    iget-object p1, p0, Lads_mobile_sdk/sj3;->a:Lads_mobile_sdk/tj3;

    iget-object p1, p1, Lads_mobile_sdk/tj3;->f:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->g:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 83
    iget-object p1, p0, Lads_mobile_sdk/sj3;->a:Lads_mobile_sdk/tj3;

    iget-object v0, p1, Lads_mobile_sdk/tj3;->g:Lads_mobile_sdk/kb;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/tj3;->a(Lads_mobile_sdk/kb;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1

    return-object p1
.end method
