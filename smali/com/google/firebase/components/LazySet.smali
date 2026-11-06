###### Class com.google.firebase.components.LazySet (com.google.firebase.components.LazySet)
.class public Lcom/google/firebase/components/LazySet;
.super Ljava/lang/Object;
.source "LazySet.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inject/Provider<",
        "Ljava/util/Set<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public volatile actualSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile providers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    .line 38
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static fromCollection(Ljava/util/Collection;)Lcom/google/firebase/components/LazySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;)",
            "Lcom/google/firebase/components/LazySet<",
            "*>;"
        }
    .end annotation

    .line 43
    check-cast p0, Ljava/util/Set;

    .line 44
    new-instance v0, Lcom/google/firebase/components/LazySet;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/LazySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/firebase/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_d

    .line 62
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_b
    move-exception p1

    goto :goto_18

    .line 64
    :cond_d
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_b

    .line 66
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_b

    throw p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/components/LazySet;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_1e

    .line 50
    monitor-enter p0

    .line 51
    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_1a

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 53
    invoke-virtual {p0}, Lcom/google/firebase/components/LazySet;->updateSet()V

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_1c

    .line 55
    :cond_1a
    :goto_1a
    monitor-exit p0

    goto :goto_1e

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_18

    throw v0

    .line 57
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized updateSet()V
    .registers 4

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inject/Provider;

    .line 70
    iget-object v2, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_1d
    move-exception v0

    goto :goto_24

    :cond_1f
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_1d

    .line 73
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1d

    throw v0
.end method
