###### Class com.ironsource.environment.NetworkStateReceiver (com.ironsource.environment.NetworkStateReceiver)
.class public Lcom/ironsource/environment/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/ConnectivityManager;

.field private b:Lcom/ironsource/Jc;

.field private c:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/environment/NetworkStateReceiver;)Lcom/ironsource/Jc;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->b:Lcom/ironsource/Jc;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/environment/NetworkStateReceiver;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->c:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/Jc;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->c:Z

    .line 5
    iput-object p2, p0, Lcom/ironsource/environment/NetworkStateReceiver;->b:Lcom/ironsource/Jc;

    if-eqz p1, :cond_14

    .line 7
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->a:Landroid/net/ConnectivityManager;

    .line 9
    :cond_14
    invoke-direct {p0}, Lcom/ironsource/environment/NetworkStateReceiver;->a()Z

    return-void
.end method

.method private a()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->c:Z

    .line 2
    iget-object v1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->a:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    .line 4
    :try_start_8
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :catch_16
    move-exception v1

    goto :goto_1c

    :cond_18
    move v1, v3

    .line 8
    :goto_19
    iput-boolean v1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->c:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_16

    goto :goto_28

    .line 10
    :goto_1c
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 11
    iput-boolean v3, p0, Lcom/ironsource/environment/NetworkStateReceiver;->c:Z

    goto :goto_28

    .line 14
    :cond_26
    iput-boolean v3, p0, Lcom/ironsource/environment/NetworkStateReceiver;->c:Z

    .line 16
    :goto_28
    iget-boolean v1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->c:Z

    if-eq v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    return v2
.end method

.method private b()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/environment/NetworkStateReceiver$a;

    invoke-direct {v1, p0}, Lcom/ironsource/environment/NetworkStateReceiver$a;-><init>(Lcom/ironsource/environment/NetworkStateReceiver;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_12

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_12

    .line 3
    :cond_9
    invoke-direct {p0}, Lcom/ironsource/environment/NetworkStateReceiver;->a()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/ironsource/environment/NetworkStateReceiver;->b()V

    :cond_12
    :goto_12
    return-void
.end method

###### Class com.ironsource.environment.NetworkStateReceiver.a (com.ironsource.environment.NetworkStateReceiver$a)
.class Lcom/ironsource/environment/NetworkStateReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/environment/NetworkStateReceiver;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/environment/NetworkStateReceiver;


# direct methods
.method public constructor <init>(Lcom/ironsource/environment/NetworkStateReceiver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/environment/NetworkStateReceiver$a;->a:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/NetworkStateReceiver$a;->a:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-static {v0}, Lcom/ironsource/environment/NetworkStateReceiver;->-$$Nest$fgetb(Lcom/ironsource/environment/NetworkStateReceiver;)Lcom/ironsource/Jc;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2
    invoke-static {v0}, Lcom/ironsource/environment/NetworkStateReceiver;->-$$Nest$fgetc(Lcom/ironsource/environment/NetworkStateReceiver;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/ironsource/Jc;->a(Z)V

    :cond_f
    return-void
.end method
