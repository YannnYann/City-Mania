###### Class io.bidmachine.rendering.internal.state.c (io.bidmachine.rendering.internal.state.c)
.class public Lio/bidmachine/rendering/internal/state/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/state/a;


# instance fields
.field public final a:Lio/bidmachine/util/Tag;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/bidmachine/util/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdStateImpl ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->a:Lio/bidmachine/util/Tag;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    .line 55
    new-instance p1, Lio/bidmachine/rendering/internal/state/c$a;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/state/c$a;-><init>(Lio/bidmachine/rendering/internal/state/c;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$b;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/state/c;)Lio/bidmachine/util/Tag;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/state/c;->a:Lio/bidmachine/util/Tag;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/state/a$a;)V
    .registers 5

    .line 23
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    monitor-enter v0

    .line 24
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/rendering/internal/state/a$b;

    .line 35
    invoke-interface {v2, p0, p1}, Lio/bidmachine/rendering/internal/state/a$b;->a(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/state/a$a;)V

    goto :goto_9

    :catchall_19
    move-exception p1

    goto :goto_1f

    .line 40
    :cond_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_19

    .line 41
    monitor-exit v0

    return-void

    .line 42
    :goto_1f
    monitor-exit v0

    throw p1
.end method

.method public final a(Lio/bidmachine/rendering/internal/state/a$b;)V
    .registers 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/state/c;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 6
    :cond_c
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    monitor-enter v0

    .line 7
    :try_start_f
    iget-object v1, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    .line 8
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method

.method public a()Z
    .registers 4

    .line 10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->a:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public a(Z)Z
    .registers 5

    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/state/c;->l()Z

    move-result v0

    if-nez v0, :cond_1b

    move v1, v2

    :cond_1b
    if-eqz v1, :cond_27

    if-eqz p1, :cond_22

    .line 19
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->b:Lio/bidmachine/rendering/internal/state/a$a;

    goto :goto_24

    .line 21
    :cond_22
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->c:Lio/bidmachine/rendering/internal/state/a$a;

    .line 22
    :goto_24
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_27
    return v1
.end method

.method public final b(Lio/bidmachine/rendering/internal/state/a$b;)V
    .registers 4

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    .line 4
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    .line 5
    monitor-exit v0

    throw p1
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b(Z)Z
    .registers 4

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_f

    .line 10
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->j:Lio/bidmachine/rendering/internal/state/a$a;

    goto :goto_11

    .line 12
    :cond_f
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->k:Lio/bidmachine/rendering/internal/state/a$a;

    .line 13
    :goto_11
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_14
    return v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/state/c;->l()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    sget-object v0, Lio/bidmachine/rendering/internal/state/a$a;->p:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 19
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    monitor-enter v0

    .line 20
    :try_start_55
    iget-object v1, p0, Lio/bidmachine/rendering/internal/state/c;->q:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 21
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5e

    .line 22
    monitor-exit v0

    return-void

    :catchall_5e
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1
.end method

.method public e()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->i:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public f()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->h:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public g()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->f:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public h()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->e:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->g:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public o()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->l:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public p()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->m:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public q()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->o:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public r()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->n:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_f
    return v0
.end method

.method public s()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    sget-object v0, Lio/bidmachine/rendering/internal/state/a$a;->d:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/a$a;)V

    return-void
.end method

.method public t()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.rendering.internal.state.c.a (io.bidmachine.rendering.internal.state.c$a)
.class public final Lio/bidmachine/rendering/internal/state/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/state/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/state/c;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/state/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/state/c;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c$a;->a:Lio/bidmachine/rendering/internal/state/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/state/a$a;)V
    .registers 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/state/c$a;->a:Lio/bidmachine/rendering/internal/state/c;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/state/c;->a(Lio/bidmachine/rendering/internal/state/c;)Lio/bidmachine/util/Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
