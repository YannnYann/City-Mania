###### Class io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda0 (io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/BidMachineAd$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/AdCridThreadHandler;

    invoke-virtual {p1}, Lio/bidmachine/AdCridThreadHandler;->destroy()V

    return-void
.end method
