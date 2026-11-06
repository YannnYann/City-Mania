###### Class io.bidmachine.BidMachineInitProvider (io.bidmachine.BidMachineInitProvider)
.class public final Lio/bidmachine/BidMachineInitProvider;
.super Lio/bidmachine/internal/d;
.source "SourceFile"


# instance fields
.field private final startupWatcherThread:Lio/bidmachine/internal/K;


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 1
    invoke-direct {p0}, Lio/bidmachine/internal/d;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/internal/K;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/internal/K;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/bidmachine/BidMachineInitProvider;->startupWatcherThread:Lio/bidmachine/internal/K;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lio/bidmachine/BidMachineInitProvider;->startupWatcherThread:Lio/bidmachine/internal/K;

    invoke-virtual {v1, v0}, Lio/bidmachine/internal/K;->a(Landroid/content/Context;)V

    .line 2
    :cond_b
    iget-object v0, p0, Lio/bidmachine/BidMachineInitProvider;->startupWatcherThread:Lio/bidmachine/internal/K;

    invoke-virtual {v0}, Lio/bidmachine/internal/K;->d()V

    .line 3
    invoke-super {p0}, Lio/bidmachine/internal/d;->onCreate()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lio/bidmachine/BidMachineInitProvider;->startupWatcherThread:Lio/bidmachine/internal/K;

    invoke-virtual {v1}, Lio/bidmachine/internal/K;->c()V

    return v0
.end method

.method public preInitialize(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/k;->k(Landroid/content/Context;)V

    return-void
.end method
