###### Class com.ironsource.Ab (com.ironsource.Ab)
.class public Lcom/ironsource/Ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/qa;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Timer;

.field private c:Z

.field private d:Ljava/lang/Long;

.field private e:J

.field private f:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetf(Lcom/ironsource/Ab;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/Ab;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(JLjava/lang/Runnable;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "INTERNAL"

    iput-object v0, p0, Lcom/ironsource/Ab;->a:Ljava/lang/String;

    .line 27
    iput-wide p1, p0, Lcom/ironsource/Ab;->e:J

    .line 28
    iput-object p3, p0, Lcom/ironsource/Ab;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/ironsource/Ab;->c:Z

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    if-eqz p4, :cond_16

    .line 32
    invoke-virtual {p0}, Lcom/ironsource/Ab;->g()V

    :cond_16
    return-void
.end method

.method private declared-synchronized f()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_10

    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_c

    throw v0
.end method

.method private declared-synchronized h()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-nez v0, :cond_26

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    .line 3
    new-instance v1, Lcom/ironsource/Ab$a;

    invoke-direct {v1, p0}, Lcom/ironsource/Ab$a;-><init>(Lcom/ironsource/Ab;)V

    iget-wide v2, p0, Lcom/ironsource/Ab;->e:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    move-exception v0

    goto :goto_28

    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_24

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/ironsource/Ab;->f()V

    :cond_7
    return-void
.end method

.method public b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-eqz v0, :cond_5

    goto :goto_26

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    if-eqz v0, :cond_26

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ironsource/Ab;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_23

    .line 11
    invoke-virtual {p0}, Lcom/ironsource/Ab;->e()V

    .line 12
    iget-object v0, p0, Lcom/ironsource/Ab;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 14
    :cond_23
    invoke-direct {p0}, Lcom/ironsource/Ab;->h()V

    :cond_26
    :goto_26
    return-void
.end method

.method public c()V
    .registers 1

    .line 0
    return-void
.end method

.method public d()V
    .registers 1

    .line 0
    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Ab;->f()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/Ab;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    .line 4
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/qa;)V

    return-void
.end method

.method public g()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Ab;->c:Z

    if-eqz v0, :cond_5

    goto :goto_29

    :cond_5
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/Ab;->c:Z

    .line 6
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/lifecycle/b;->a(Lcom/ironsource/qa;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/Ab;->e:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    .line 12
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/b;->e()Z

    move-result v0

    if-nez v0, :cond_29

    .line 13
    invoke-direct {p0}, Lcom/ironsource/Ab;->h()V

    :cond_29
    :goto_29
    return-void
.end method

###### Class com.ironsource.Ab.a (com.ironsource.Ab$a)
.class Lcom/ironsource/Ab$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ab;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Ab;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ab;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ab$a;->a:Lcom/ironsource/Ab;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ab$a;->a:Lcom/ironsource/Ab;

    invoke-static {v0}, Lcom/ironsource/Ab;->-$$Nest$fgetf(Lcom/ironsource/Ab;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
