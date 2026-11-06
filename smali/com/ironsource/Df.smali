###### Class com.ironsource.Df (com.ironsource.Df)
.class public Lcom/ironsource/Df;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Df$a;
    }
.end annotation


# static fields
.field private static b:Lcom/ironsource/Df;


# instance fields
.field private a:Lcom/ironsource/Df$a;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/Df$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/Df$a;-><init>(Lcom/ironsource/Df;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/Df;->a:Lcom/ironsource/Df$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/Df;->a:Lcom/ironsource/Df$a;

    invoke-virtual {v0}, Lcom/ironsource/Df$a;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/ironsource/Df;
    .registers 2

    const-class v0, Lcom/ironsource/Df;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/ironsource/Df;->b:Lcom/ironsource/Df;

    if-nez v1, :cond_11

    .line 2
    new-instance v1, Lcom/ironsource/Df;

    invoke-direct {v1}, Lcom/ironsource/Df;-><init>()V

    sput-object v1, Lcom/ironsource/Df;->b:Lcom/ironsource/Df;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 5
    :cond_11
    :goto_11
    sget-object v1, Lcom/ironsource/Df;->b:Lcom/ironsource/Df;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/Df;->a:Lcom/ironsource/Df$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 10
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Lcom/ironsource/Df$a;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 13
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception p1

    goto :goto_15

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_11

    throw p1
.end method

###### Class com.ironsource.Df.a (com.ironsource.Df$a)
.class Lcom/ironsource/Df$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic b:Lcom/ironsource/Df;


# direct methods
.method public constructor <init>(Lcom/ironsource/Df;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/Df$a;->b:Lcom/ironsource/Df;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/ironsource/mediationsdk/logger/c;

    invoke-direct {p1}, Lcom/ironsource/mediationsdk/logger/c;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Df$a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public b()V
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/Df$a;->a:Landroid/os/Handler;

    return-void
.end method
