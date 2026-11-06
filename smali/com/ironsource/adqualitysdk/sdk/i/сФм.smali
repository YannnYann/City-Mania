###### Class com.ironsource.adqualitysdk.sdk.i.C0570 (com.ironsource.adqualitysdk.sdk.i.ᔬ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ḻ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ḻ;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 2
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 2
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    .line 3
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ᓙ;

    invoke-direct {v2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᓙ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;Landroid/app/Activity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 2
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾒ:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾒ:Z

    .line 4
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;

    .line 5
    invoke-interface {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ꮠ;->ﾇ(Landroid/app/Activity;)V

    .line 6
    :cond_e
    iget-object p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 2
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 2
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᔬ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;

    .line 2
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒹ;->ｋ:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
