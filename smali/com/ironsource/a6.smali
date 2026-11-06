###### Class com.ironsource.HandlerC3463a6 (com.ironsource.a6)
.class public Lcom/ironsource/a6;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/Vc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/a6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x3f8

    if-eq p1, v0, :cond_b

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ironsource/Vc;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 1
    iget-object v0, p0, Lcom/ironsource/a6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D8;

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/ironsource/a6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/Vc;

    if-nez v2, :cond_13

    goto :goto_45

    .line 8
    :cond_13
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3}, Lcom/ironsource/a6;->a(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 9
    invoke-interface {v2, v0}, Lcom/ironsource/Vc;->a(Lcom/ironsource/D8;)V

    goto :goto_2f

    :catchall_1f
    move-exception p1

    goto :goto_35

    .line 11
    :cond_21
    new-instance v3, Lcom/ironsource/u8;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/ironsource/wg;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/ironsource/u8;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-interface {v2, v0, v3}, Lcom/ironsource/Vc;->a(Lcom/ironsource/D8;Lcom/ironsource/u8;)V

    .line 14
    :goto_2f
    iget-object p1, p0, Lcom/ironsource/a6;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_1f

    return-void

    .line 16
    :goto_35
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 17
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_45
    return-void
.end method
