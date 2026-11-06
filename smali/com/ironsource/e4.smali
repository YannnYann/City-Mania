###### Class com.ironsource.C3577e4 (com.ironsource.e4)
.class public Lcom/ironsource/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/MutableContextWrapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/ironsource/e4;->a:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/e4;->a:Landroid/content/MutableContextWrapper;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/e4;->a:Landroid/content/MutableContextWrapper;

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_16

    .line 4
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/ironsource/e4;->a:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_d

    monitor-exit p0

    return-void

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_d

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-object v0, p0, Lcom/ironsource/e4;->a:Landroid/content/MutableContextWrapper;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method
