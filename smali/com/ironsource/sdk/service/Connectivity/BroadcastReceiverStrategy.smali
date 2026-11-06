###### Class com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy (com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy)
.class public Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/v7;


# instance fields
.field private final a:Lcom/ironsource/w7;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)Lcom/ironsource/w7;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->a:Lcom/ironsource/w7;

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/w7;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$1;-><init>(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)V

    iput-object v0, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->b:Landroid/content/BroadcastReceiver;

    .line 6
    iput-object p1, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->a:Lcom/ironsource/w7;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    goto :goto_a

    :catch_8
    move-exception p1

    goto :goto_28

    .line 6
    :goto_a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterConnectionReceiver - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentValues"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 9
    :goto_28
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :goto_2f
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 4
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 2

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

###### Class com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy.AnonymousClass1 (com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy$1)
.class Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$1;->a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 4
    iget-object p1, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$1;->a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-static {p1}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->-$$Nest$fgeta(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)Lcom/ironsource/w7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/w7;->a()V

    return-void

    .line 6
    :cond_16
    iget-object p2, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$1;->a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-static {p2}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->-$$Nest$fgeta(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)Lcom/ironsource/w7;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/ironsource/w7;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
