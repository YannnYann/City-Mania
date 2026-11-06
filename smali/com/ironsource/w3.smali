###### Class com.ironsource.CallableC3904w3 (com.ironsource.w3)
.class public Lcom/ironsource/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/A3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

.field private final d:Lcom/ironsource/y3;

.field private final e:Lcom/ironsource/x3;

.field private final f:Lcom/ironsource/mediationsdk/model/NetworkSettings;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/y3;Lcom/ironsource/x3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ironsource/w3;->a:I

    .line 3
    iput-object p2, p0, Lcom/ironsource/w3;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ironsource/w3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 5
    iput-object p4, p0, Lcom/ironsource/w3;->d:Lcom/ironsource/y3;

    .line 6
    iput-object p5, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    .line 7
    iput-object p6, p0, Lcom/ironsource/w3;->f:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/A3;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/l5;

    invoke-direct {v0}, Lcom/ironsource/l5;-><init>()V

    .line 2
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/w3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fetching bidding data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 5
    new-instance v2, Lcom/ironsource/w3$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/ironsource/w3$a;-><init>(Lcom/ironsource/w3;Lcom/ironsource/l5;Ljava/util/concurrent/BlockingQueue;)V

    .line 32
    :try_start_2a
    invoke-virtual {p0}, Lcom/ironsource/w3;->b()Lcom/ironsource/y3;

    move-result-object v0

    iget-object v3, p0, Lcom/ironsource/w3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 34
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/environment/ContextProvider;->getActiveContext()Landroid/content/Context;

    move-result-object v4

    .line 35
    invoke-interface {v0, v3, v4, v2}, Lcom/ironsource/y3;->collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_3e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2a .. :try_end_3b} :catch_3c

    goto :goto_91

    :catch_3c
    move-exception v0

    goto :goto_40

    :catch_3e
    move-exception v0

    goto :goto_69

    .line 46
    :goto_40
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while calling collectBiddingData - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    if-eqz v2, :cond_91

    .line 51
    invoke-interface {v2, v0}, Lcom/ironsource/x3;->a(Ljava/lang/String;)V

    goto :goto_91

    .line 52
    :goto_69
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while calling collectBiddingData - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    if-eqz v2, :cond_91

    .line 57
    invoke-interface {v2, v0}, Lcom/ironsource/x3;->a(Ljava/lang/String;)V

    .line 69
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/ironsource/w3;->e:Lcom/ironsource/x3;

    if-eqz v0, :cond_9a

    .line 70
    iget-object v2, p0, Lcom/ironsource/w3;->f:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-interface {v0, v2}, Lcom/ironsource/x3;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 73
    :cond_9a
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A3;

    return-object v0
.end method

.method public b()Lcom/ironsource/y3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/w3;->d:Lcom/ironsource/y3;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/w3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/w3;->a()Lcom/ironsource/A3;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/w3;->a:I

    return v0
.end method

###### Class com.ironsource.CallableC3904w3.a (com.ironsource.w3$a)
.class Lcom/ironsource/w3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/w3;->a()Lcom/ironsource/A3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/l5;

.field final synthetic b:Ljava/util/concurrent/BlockingQueue;

.field final synthetic c:Lcom/ironsource/w3;


# direct methods
.method public constructor <init>(Lcom/ironsource/w3;Lcom/ironsource/l5;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/w3$a;->c:Lcom/ironsource/w3;

    iput-object p2, p0, Lcom/ironsource/w3$a;->a:Lcom/ironsource/l5;

    iput-object p3, p0, Lcom/ironsource/w3$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 9

    .line 1
    new-instance v0, Lcom/ironsource/A3;

    iget-object v1, p0, Lcom/ironsource/w3$a;->c:Lcom/ironsource/w3;

    .line 3
    invoke-virtual {v1}, Lcom/ironsource/w3;->d()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/w3$a;->c:Lcom/ironsource/w3;

    .line 4
    invoke-virtual {v2}, Lcom/ironsource/w3;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/w3$a;->a:Lcom/ironsource/l5;

    .line 6
    invoke-static {v3}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/A3;-><init>(ILjava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/ironsource/w3$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/A3;

    iget-object v1, p0, Lcom/ironsource/w3$a;->c:Lcom/ironsource/w3;

    .line 3
    invoke-virtual {v1}, Lcom/ironsource/w3;->d()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/w3$a;->c:Lcom/ironsource/w3;

    .line 4
    invoke-virtual {v2}, Lcom/ironsource/w3;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/w3$a;->a:Lcom/ironsource/l5;

    .line 6
    invoke-static {v3}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/A3;-><init>(ILjava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/ironsource/w3$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
