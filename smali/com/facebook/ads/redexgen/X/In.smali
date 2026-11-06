###### Class com.facebook.ads.redexgen.X.BinderC1674In (com.facebook.ads.redexgen.X.In)
.class public final Lcom/facebook/ads/redexgen/X/In;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Io;->A00(Lcom/facebook/ads/redexgen/X/IX;)Lcom/facebook/ads/redexgen/X/In;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public A00:Landroid/os/Handler;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/IX;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Io;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Io;Lcom/facebook/ads/redexgen/X/IX;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 47495
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/In;->A02:Lcom/facebook/ads/redexgen/X/Io;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 47496
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47498
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/If;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/If;-><init>(Lcom/facebook/ads/redexgen/X/In;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47499
    return-void
.end method

.method public final extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 47501
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/IX;->A00(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityLayout(IIIIILandroid/os/Bundle;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47502
    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_6

    return-void

    .line 47503
    :cond_6
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Il;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Il;-><init>(Lcom/facebook/ads/redexgen/X/In;IIIIILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47504
    return-void
.end method

.method public final onActivityResized(IILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47506
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ij;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ij;-><init>(Lcom/facebook/ads/redexgen/X/In;IILandroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47507
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47509
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ig;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ig;-><init>(Lcom/facebook/ads/redexgen/X/In;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47510
    return-void
.end method

.method public final onMinimized(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47512
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Im;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Im;-><init>(Lcom/facebook/ads/redexgen/X/In;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47513
    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 5

    .line 47514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47515
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ie;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ie;-><init>(Lcom/facebook/ads/redexgen/X/In;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47516
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47518
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ih;-><init>(Lcom/facebook/ads/redexgen/X/In;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47519
    return-void
.end method

.method public final onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47521
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ii;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ii;-><init>(Lcom/facebook/ads/redexgen/X/In;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47522
    return-void
.end method

.method public final onUnminimized(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47524
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Id;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Id;-><init>(Lcom/facebook/ads/redexgen/X/In;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47525
    return-void
.end method

.method public final onWarmupCompleted(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/In;->A01:Lcom/facebook/ads/redexgen/X/IX;

    if-nez v0, :cond_5

    return-void

    .line 47527
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/In;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ik;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ik;-><init>(Lcom/facebook/ads/redexgen/X/In;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47528
    return-void
.end method
