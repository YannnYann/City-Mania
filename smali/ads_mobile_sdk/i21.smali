###### Class ads_mobile_sdk.i21 (ads_mobile_sdk.i21)
.class public final Lads_mobile_sdk/i21;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/v24;


# instance fields
.field public final a:Lkotlinx/coroutines/TimeoutCancellationException;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/TimeoutCancellationException;)V
    .registers 3

    .line 1
    const-string v0, "timeoutException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lads_mobile_sdk/i21;->a:Lkotlinx/coroutines/TimeoutCancellationException;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/i21;->a:Lkotlinx/coroutines/TimeoutCancellationException;

    return-object v0
.end method
