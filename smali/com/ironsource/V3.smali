###### Class com.ironsource.V3 (com.ironsource.V3)
.class public abstract Lcom/ironsource/V3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/w7;


# instance fields
.field private a:Lcom/ironsource/v7;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ironsource/V3;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/ironsource/v7;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/V3;->a:Lcom/ironsource/v7;

    .line 4
    const-class p1, Lcom/ironsource/V3;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "created ConnectivityAdapter with strategy "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ironsource/V3;->a:Lcom/ironsource/v7;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/ironsource/v7;
    .registers 4

    .line 4
    const-string v0, "connectivityStrategy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 7
    new-instance p1, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-direct {p1, p0}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;-><init>(Lcom/ironsource/w7;)V

    return-object p1

    .line 12
    :cond_f
    const-string p1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p2, p1}, Lcom/ironsource/M1;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 20
    new-instance p1, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-direct {p1, p0}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;-><init>(Lcom/ironsource/w7;)V

    return-object p1

    .line 19
    :cond_1d
    new-instance p1, Lcom/ironsource/oc;

    invoke-direct {p1, p0}, Lcom/ironsource/oc;-><init>(Lcom/ironsource/w7;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/V3;->a:Lcom/ironsource/v7;

    invoke-interface {v0, p1}, Lcom/ironsource/v7;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 1

    .line 0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    return-void
.end method

.method public b()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/V3;->a:Lcom/ironsource/v7;

    invoke-interface {v0}, Lcom/ironsource/v7;->a()V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/V3;->a:Lcom/ironsource/v7;

    invoke-interface {v0, p1}, Lcom/ironsource/v7;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/V3;->a:Lcom/ironsource/v7;

    invoke-interface {v0, p1}, Lcom/ironsource/v7;->a(Landroid/content/Context;)V

    return-void
.end method
