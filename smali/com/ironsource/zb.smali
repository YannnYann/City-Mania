###### Class com.ironsource.C3966zb (com.ironsource.zb)
.class public Lcom/ironsource/zb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "zb"


# instance fields
.field private final a:Lcom/ironsource/lifecycle/b;

.field private final b:Ljava/lang/Runnable;

.field private final c:Lcom/ironsource/jg;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/Timer;

.field private final f:Lcom/ironsource/qa;


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/zb;)Lcom/ironsource/lifecycle/b;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/zb;->a:Lcom/ironsource/lifecycle/b;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/zb;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/zb;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/zb;->c:Lcom/ironsource/jg;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetf(Lcom/ironsource/zb;)Lcom/ironsource/qa;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/zb;->f:Lcom/ironsource/qa;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mb(Lcom/ironsource/zb;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/zb;->b(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mc(Lcom/ironsource/zb;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/ironsource/zb;->c()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/b;Lcom/ironsource/jg;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/zb;->d:Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/ironsource/zb$a;

    invoke-direct {v0, p0}, Lcom/ironsource/zb$a;-><init>(Lcom/ironsource/zb;)V

    iput-object v0, p0, Lcom/ironsource/zb;->f:Lcom/ironsource/qa;

    .line 15
    iput-object p1, p0, Lcom/ironsource/zb;->b:Ljava/lang/Runnable;

    .line 16
    iput-object p2, p0, Lcom/ironsource/zb;->a:Lcom/ironsource/lifecycle/b;

    .line 17
    iput-object p3, p0, Lcom/ironsource/zb;->c:Lcom/ironsource/jg;

    return-void
.end method

.method private b(J)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/ironsource/zb;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_3
    invoke-direct {p0}, Lcom/ironsource/zb;->c()V

    .line 6
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/zb;->e:Ljava/util/Timer;

    .line 7
    new-instance v2, Lcom/ironsource/zb$b;

    invoke-direct {v2, p0}, Lcom/ironsource/zb$b;-><init>(Lcom/ironsource/zb;)V

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 17
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/zb;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/zb;->e:Ljava/util/Timer;

    if-eqz v1, :cond_10

    .line 3
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/ironsource/zb;->e:Ljava/util/Timer;

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_12

    .line 6
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_e

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/zb;->a(J)V

    return-void
.end method

.method public a(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 2
    sget-object p1, Lcom/ironsource/zb;->g:Ljava/lang/String;

    const-string p2, "cannot start timer with delay < 0"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_e
    iget-object v0, p0, Lcom/ironsource/zb;->a:Lcom/ironsource/lifecycle/b;

    iget-object v1, p0, Lcom/ironsource/zb;->f:Lcom/ironsource/qa;

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->a(Lcom/ironsource/qa;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/zb;->c:Lcom/ironsource/jg;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/jg;->a(J)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/zb;->a:Lcom/ironsource/lifecycle/b;

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 8
    iget-object p1, p0, Lcom/ironsource/zb;->c:Lcom/ironsource/jg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/jg;->c(J)V

    return-void

    .line 11
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/ironsource/zb;->b(J)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/zb;->c()V

    .line 2
    iget-object v0, p0, Lcom/ironsource/zb;->a:Lcom/ironsource/lifecycle/b;

    iget-object v1, p0, Lcom/ironsource/zb;->f:Lcom/ironsource/qa;

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/qa;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/zb;->c:Lcom/ironsource/jg;

    invoke-virtual {v0}, Lcom/ironsource/jg;->b()V

    return-void
.end method

###### Class com.ironsource.C3966zb.a (com.ironsource.zb$a)
.class Lcom/ironsource/zb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/qa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/zb;


# direct methods
.method public constructor <init>(Lcom/ironsource/zb;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/jg;->c(J)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$mc(Lcom/ironsource/zb;)V

    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/jg;->b(J)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/zb$a;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/jg;->a()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/zb;->-$$Nest$mb(Lcom/ironsource/zb;J)V

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

###### Class com.ironsource.C3966zb.b (com.ironsource.zb$b)
.class Lcom/ironsource/zb$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/zb;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/zb;


# direct methods
.method public constructor <init>(Lcom/ironsource/zb;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgeta(Lcom/ironsource/zb;)Lcom/ironsource/lifecycle/b;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetf(Lcom/ironsource/zb;)Lcom/ironsource/qa;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/qa;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetc(Lcom/ironsource/zb;)Lcom/ironsource/jg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/jg;->b()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/zb$b;->a:Lcom/ironsource/zb;

    invoke-static {v0}, Lcom/ironsource/zb;->-$$Nest$fgetb(Lcom/ironsource/zb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
