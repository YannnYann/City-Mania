###### Class com.ironsource.O0 (com.ironsource.O0)
.class public Lcom/ironsource/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/M0;

.field private final b:Lcom/ironsource/Kb;

.field private final c:Lcom/ironsource/zb;

.field private d:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/O0;)Lcom/ironsource/Kb;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/O0;->b:Lcom/ironsource/Kb;

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/M0;Lcom/ironsource/Kb;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/O0;->b:Lcom/ironsource/Kb;

    .line 4
    invoke-direct {p0}, Lcom/ironsource/O0;->c()Lcom/ironsource/zb;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/O0;->c:Lcom/ironsource/zb;

    return-void
.end method

.method private declared-synchronized b(J)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/O0;->j()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/O0;->d:Ljava/util/Timer;

    .line 3
    new-instance v1, Lcom/ironsource/O0$b;

    invoke-direct {v1, p0}, Lcom/ironsource/O0$b;-><init>(Lcom/ironsource/O0;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private c()Lcom/ironsource/zb;
    .registers 5

    .line 1
    new-instance v0, Lcom/ironsource/zb;

    new-instance v1, Lcom/ironsource/O0$a;

    invoke-direct {v1, p0}, Lcom/ironsource/O0$a;-><init>(Lcom/ironsource/O0;)V

    .line 8
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v2

    new-instance v3, Lcom/ironsource/jg;

    invoke-direct {v3}, Lcom/ironsource/jg;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/zb;-><init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/b;Lcom/ironsource/jg;)V

    return-object v0
.end method

.method private declared-synchronized j()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/O0;->d:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/O0;->d:Ljava/util/Timer;
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


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->b:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_12

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/O0;->i()V

    :cond_12
    return-void
.end method

.method public a(J)V
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/ironsource/O0;->c:Lcom/ironsource/zb;

    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/zb;->a(J)V

    :cond_7
    return-void
.end method

.method public b()Lcom/ironsource/M0;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    return-object v0
.end method

.method public d()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_16
    return-void
.end method

.method public f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->d:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_18

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_18
    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_12
    return-void
.end method

.method public h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->e:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/M0;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_24
    return-void
.end method

.method public i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->c:Lcom/ironsource/zb;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/zb;->b()V

    :cond_7
    return-void
.end method

.method public k()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->b:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/M0;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/O0;->a(J)V

    :cond_24
    return-void
.end method

###### Class com.ironsource.O0.a (com.ironsource.O0$a)
.class Lcom/ironsource/O0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/O0;->c()Lcom/ironsource/zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/O0;


# direct methods
.method public constructor <init>(Lcom/ironsource/O0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/O0$a;->a:Lcom/ironsource/O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0$a;->a:Lcom/ironsource/O0;

    invoke-static {v0}, Lcom/ironsource/O0;->-$$Nest$fgetb(Lcom/ironsource/O0;)Lcom/ironsource/Kb;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Kb;->b()V

    return-void
.end method

###### Class com.ironsource.O0.b (com.ironsource.O0$b)
.class Lcom/ironsource/O0$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/O0;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/O0;


# direct methods
.method public constructor <init>(Lcom/ironsource/O0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/O0$b;->a:Lcom/ironsource/O0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0$b;->a:Lcom/ironsource/O0;

    invoke-static {v0}, Lcom/ironsource/O0;->-$$Nest$fgetb(Lcom/ironsource/O0;)Lcom/ironsource/Kb;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/Kb;->b()V

    return-void
.end method
