###### Class com.ironsource.environment.ContextProvider (com.ironsource.environment.ContextProvider)
.class public Lcom/ironsource/environment/ContextProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/ironsource/environment/ContextProvider;


# instance fields
.field private a:Lcom/ironsource/f4;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/Cf;

    invoke-direct {v0}, Lcom/ironsource/Cf;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    return-void
.end method

.method public static getInstance()Lcom/ironsource/environment/ContextProvider;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/environment/ContextProvider;->b:Lcom/ironsource/environment/ContextProvider;

    if-nez v0, :cond_19

    .line 4
    const-class v0, Lcom/ironsource/environment/ContextProvider;

    monitor-enter v0

    .line 7
    :try_start_7
    sget-object v1, Lcom/ironsource/environment/ContextProvider;->b:Lcom/ironsource/environment/ContextProvider;

    if-nez v1, :cond_15

    .line 8
    new-instance v1, Lcom/ironsource/environment/ContextProvider;

    invoke-direct {v1}, Lcom/ironsource/environment/ContextProvider;-><init>()V

    sput-object v1, Lcom/ironsource/environment/ContextProvider;->b:Lcom/ironsource/environment/ContextProvider;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 10
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 12
    :cond_19
    :goto_19
    sget-object v0, Lcom/ironsource/environment/ContextProvider;->b:Lcom/ironsource/environment/ContextProvider;

    return-object v0
.end method


# virtual methods
.method public getActiveContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v0}, Lcom/ironsource/f4;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v0}, Lcom/ironsource/f4;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v0}, Lcom/ironsource/f4;->b()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v1}, Lcom/ironsource/f4;->a()Landroid/app/Activity;

    move-result-object v1

    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public getCurrentActiveActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v0}, Lcom/ironsource/f4;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v0, p1}, Lcom/ironsource/f4;->a(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public updateAppContext(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v0, p1}, Lcom/ironsource/f4;->a(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public updateStrategyIfNeeded()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/u5;->w()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5
    :cond_f
    new-instance v0, Lcom/ironsource/ah;

    iget-object v1, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    .line 6
    invoke-interface {v1}, Lcom/ironsource/f4;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    invoke-interface {v2}, Lcom/ironsource/f4;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/ah;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/environment/ContextProvider;->a:Lcom/ironsource/f4;

    return-void
.end method
