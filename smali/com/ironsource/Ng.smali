###### Class com.ironsource.Ng (com.ironsource.Ng)
.class public Lcom/ironsource/Ng;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Smash:",
        "Lcom/ironsource/p3<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TSmash;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field d:Lcom/ironsource/p3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/p3<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Ljava/util/Timer;

.field h:Lcom/ironsource/Og;

.field private final i:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILcom/ironsource/Og;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ironsource/Og;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Ng;->g:Ljava/util/Timer;

    const/4 v0, 0x5

    .line 23
    iput v0, p0, Lcom/ironsource/Ng;->i:I

    .line 29
    iput-object p1, p0, Lcom/ironsource/Ng;->e:Ljava/util/List;

    .line 30
    iput p2, p0, Lcom/ironsource/Ng;->f:I

    .line 31
    iput-object p3, p0, Lcom/ironsource/Ng;->h:Lcom/ironsource/Og;

    return-void
.end method

.method private a()V
    .registers 4

    .line 129
    invoke-virtual {p0}, Lcom/ironsource/Ng;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/p3;

    .line 130
    iget-object v2, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 131
    invoke-virtual {v1}, Lcom/ironsource/p3;->M()V

    goto :goto_8

    :cond_20
    return-void
.end method

.method private declared-synchronized e()Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/p3;->C()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/p3;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :catchall_1b
    move-exception v0

    goto :goto_20

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    monitor-exit p0

    return v0

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1b

    throw v0
.end method


# virtual methods
.method public a(Lcom/ironsource/M0$a;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/M0$a;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TSmash;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating new waterfall with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/ironsource/Ng;->a()V

    .line 41
    sget-object v1, Lcom/ironsource/M0$a;->e:Lcom/ironsource/M0$a;

    if-eq p1, v1, :cond_2d

    sget-object v1, Lcom/ironsource/M0$a;->c:Lcom/ironsource/M0$a;

    if-ne p1, v1, :cond_22

    goto :goto_2d

    .line 81
    :cond_22
    iget-object p1, p0, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 82
    iget-object p1, p0, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 83
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7c

    .line 90
    invoke-direct {p0}, Lcom/ironsource/Ng;->e()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ad from previous waterfall "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is still showing - the current waterfall "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " will be deleted instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    .line 98
    iget-object p2, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    .line 101
    :cond_6d
    iget-object p1, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    .line 103
    iget-object p2, p0, Lcom/ironsource/Ng;->g:Ljava/util/Timer;

    new-instance v0, Lcom/ironsource/Ng$a;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/Ng$a;-><init>(Lcom/ironsource/Ng;Ljava/lang/String;)V

    iget p1, p0, Lcom/ironsource/Ng;->f:I

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 124
    :cond_7c
    :goto_7c
    iget-object p1, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/Ng;->c:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_96

    .line 128
    iget-object p1, p0, Lcom/ironsource/Ng;->h:Lcom/ironsource/Og;

    iget-object p2, p0, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/ironsource/Og;->a(I)V

    :cond_96
    return-void
.end method

.method public declared-synchronized a(Lcom/ironsource/p3;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 3
    iget-object p1, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    invoke-virtual {p1}, Lcom/ironsource/p3;->M()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_1a

    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_16

    throw p1
.end method

.method public declared-synchronized a(Lcom/ironsource/M0$a;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$a;)Z
    .registers 7

    monitor-enter p0

    .line 4
    :try_start_1
    invoke-virtual {p0, p5, p6, p2}, Lcom/ironsource/Ng;->a(Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_8

    goto :goto_48

    .line 8
    :cond_8
    sget-object p5, Lcom/ironsource/M0$a;->e:Lcom/ironsource/M0$a;

    const/4 p6, 0x1

    if-eq p1, p5, :cond_14

    sget-object p5, Lcom/ironsource/M0$a;->c:Lcom/ironsource/M0$a;

    if-eq p1, p5, :cond_14

    goto :goto_49

    :catchall_12
    move-exception p1

    goto :goto_63

    .line 13
    :cond_14
    iget-object p1, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/ironsource/p3;->C()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_49

    .line 17
    :cond_1f
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->LOAD_WHILE_SHOW_BY_NETWORK:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    if-ne p4, p1, :cond_30

    iget-object p1, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    .line 18
    invoke-virtual {p1}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_48

    .line 22
    :cond_30
    sget-object p1, Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;->NONE:Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    if-eq p4, p1, :cond_3c

    iget-object p1, p0, Lcom/ironsource/Ng;->e:Ljava/util/List;

    .line 23
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    :cond_3c
    iget-object p1, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    .line 24
    invoke-virtual {p1}, Lcom/ironsource/p3;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    :goto_48
    const/4 p6, 0x0

    :cond_49
    :goto_49
    if-nez p6, :cond_61

    .line 30
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " will not be added to the auction request"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_12

    :cond_61
    monitor-exit p0

    return p6

    :goto_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_12

    throw p1
.end method

.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/lang/String;)Z
    .registers 6

    .line 31
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 33
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_35

    instance-of v1, p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    if-eqz v1, :cond_35

    check-cast p1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;

    .line 36
    invoke-static {p2}, Lcom/ironsource/If;->a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;->isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - is using activity before impression and activity is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_35
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TSmash;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_11

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :cond_11
    return-object v0
.end method

.method public declared-synchronized b(Lcom/ironsource/p3;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/p3<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ng;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ironsource/p3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/p3<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ng;->d:Lcom/ironsource/p3;

    return-object v0
.end method

###### Class com.ironsource.Ng.a (com.ironsource.Ng$a)
.class Lcom/ironsource/Ng$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ng;->a(Lcom/ironsource/M0$a;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/Ng;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ng;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ng$a;->b:Lcom/ironsource/Ng;

    iput-object p2, p0, Lcom/ironsource/Ng$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing waterfall with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/Ng$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/ironsource/Ng$a;->b:Lcom/ironsource/Ng;

    iget-object v1, v1, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/ironsource/Ng$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waterfall size is currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/Ng$a;->b:Lcom/ironsource/Ng;

    iget-object v2, v2, Lcom/ironsource/Ng;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_46

    .line 6
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void

    :catchall_46
    move-exception v0

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    .line 7
    throw v0
.end method
