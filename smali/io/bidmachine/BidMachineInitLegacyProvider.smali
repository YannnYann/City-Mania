###### Class io.bidmachine.BidMachineInitLegacyProvider (io.bidmachine.BidMachineInitLegacyProvider)
.class public final Lio/bidmachine/BidMachineInitLegacyProvider;
.super Lio/bidmachine/internal/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method public preInitialize(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/k;->k(Landroid/content/Context;)V

    return-void
.end method
