###### Class j$.time.zone.j (j$.time.zone.j)
.class public abstract Lj$/time/zone/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private static volatile c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lj$/time/zone/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    const/16 v3, 0x200

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v1, Lj$/time/zone/j;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v2, Lj$/time/zone/h;

    invoke-direct {v2, v1}, Lj$/time/zone/h;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a()Ljava/util/Set;
    .registers 1

    .line 213
    sget-object v0, Lj$/time/zone/j;->c:Ljava/util/Set;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Lj$/time/zone/f;
    .registers 3

    .line 240
    const-string p1, "zoneId"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    sget-object p1, Lj$/time/zone/j;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/zone/j;

    if-nez v0, :cond_29

    .line 283
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 284
    new-instance p0, Lj$/time/zone/g;

    .line 88
    const-string p1, "No time-zone data files registered"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 284
    throw p0

    .line 286
    :cond_1d
    new-instance p1, Lj$/time/zone/g;

    const-string v0, "Unknown time-zone ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 286
    throw p1

    .line 241
    :cond_29
    invoke-virtual {v0, p0}, Lj$/time/zone/j;->c(Ljava/lang/String;)Lj$/time/zone/f;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lj$/time/zone/j;)V
    .registers 6

    .line 308
    const-string v0, "provider"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 0
    const-class v0, Lj$/time/zone/j;

    monitor-enter v0

    .line 320
    :try_start_8
    invoke-virtual {p0}, Lj$/time/zone/j;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 321
    const-string v3, "zoneId"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    sget-object v3, Lj$/time/zone/j;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/zone/j;

    if-nez v3, :cond_2c

    goto :goto_10

    .line 324
    :cond_2c
    new-instance v1, Lj$/time/zone/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register zone as one already registered with that ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currently loading from provider: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 324
    throw v1

    :catchall_4b
    move-exception p0

    goto :goto_65

    .line 329
    :cond_4d
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lj$/time/zone/j;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 330
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lj$/time/zone/j;->c:Ljava/util/Set;
    :try_end_5e
    .catchall {:try_start_8 .. :try_end_5e} :catchall_4b

    .line 331
    monitor-exit v0

    .line 310
    sget-object v0, Lj$/time/zone/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 331
    :goto_65
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_4b

    throw p0
.end method


# virtual methods
.method protected abstract c(Ljava/lang/String;)Lj$/time/zone/f;
.end method

.method protected abstract d()Ljava/util/Set;
.end method
