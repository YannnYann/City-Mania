###### Class io.bidmachine.rendering.internal.adform.video.player.a (io.bidmachine.rendering.internal.adform.video.player.a)
.class public abstract Lio/bidmachine/rendering/internal/adform/video/player/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/adform/video/player/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/video/player/a$a;,
        Lio/bidmachine/rendering/internal/adform/video/player/a$b;
    }
.end annotation


# static fields
.field public static final m:Lio/bidmachine/rendering/internal/adform/video/player/a$a;


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/adform/video/player/a$b;

.field public final b:Lio/bidmachine/util/AudioFocusManager;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:Lio/bidmachine/rendering/internal/adform/video/player/d;

.field public volatile i:Z

.field public j:Landroid/net/Uri;

.field public k:J

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/player/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/adform/video/player/a;->m:Lio/bidmachine/rendering/internal/adform/video/player/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;

    const-wide/16 v1, 0x10

    invoke-direct {v0, p0, v1, v2}, Lio/bidmachine/rendering/internal/adform/video/player/a$b;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/a;J)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->a:Lio/bidmachine/rendering/internal/adform/video/player/a$b;

    .line 8
    new-instance v0, Lio/bidmachine/util/AudioFocusManager;

    invoke-direct {v0, p1}, Lio/bidmachine/util/AudioFocusManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->b:Lio/bidmachine/util/AudioFocusManager;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    iput-wide v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->k:J

    return-void
.end method


# virtual methods
.method public A()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->i()V

    return-void
.end method

.method public B()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->j()V

    return-void
.end method

.method public C()Z
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->w()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->x()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method

.method public E()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->c(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public F()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->d(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public G()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->b(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public H()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_14

    .line 5
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->f(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public I()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_19

    .line 5
    :cond_b
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->b:Lio/bidmachine/util/AudioFocusManager;

    invoke-virtual {v0}, Lio/bidmachine/util/AudioFocusManager;->release()V

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->i(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public J()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->a(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public K()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->h(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public L()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->g(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public M()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 5
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/adform/video/player/d;->e(Lio/bidmachine/rendering/internal/adform/video/player/b;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public N()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5
    :cond_9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->a:Lio/bidmachine/rendering/internal/adform/video/player/a$b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->c()V

    return-void
.end method

.method public final O()V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->k:J

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_8

    :catchall_8
    return-void
.end method

.method public abstract a()J
.end method

.method public abstract a(F)V
.end method

.method public abstract a(J)V
.end method

.method public a(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "videoUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_5
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(Landroid/net/Uri;)V

    .line 3
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->j:Landroid/net/Uri;

    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_c

    :catchall_c
    return-void
.end method

.method public a(Lio/bidmachine/rendering/internal/adform/video/player/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->h:Lio/bidmachine/rendering/internal/adform/video/player/d;

    return-void
.end method

.method public a(Lio/bidmachine/util/Error;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->i:Z

    if-eqz v0, :cond_d

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Lio/bidmachine/util/Error;)V

    return-void

    .line 11
    :cond_d
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 5
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->b:Lio/bidmachine/util/AudioFocusManager;

    invoke-virtual {p1}, Lio/bidmachine/util/AudioFocusManager;->request()Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->e(F)V

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 4

    .line 17
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->D()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(ZLjava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lio/bidmachine/util/ErrorKt;->toError(Ljava/lang/Throwable;)Lio/bidmachine/util/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 12
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 16
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/d;->a(Lio/bidmachine/rendering/internal/adform/video/player/b;Z)V

    :cond_12
    :goto_12
    return-void
.end method

.method public final a(ZLjava/lang/Long;)V
    .registers 5

    if-eqz p2, :cond_b

    .line 19
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->l:J

    goto :goto_b

    :catch_9
    move-exception p1

    goto :goto_28

    :cond_b
    :goto_b
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_16

    .line 23
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(J)V

    .line 25
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->z()V

    return-void

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->B()V

    .line 28
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->j:Landroid/net/Uri;

    if-eqz p1, :cond_24

    .line 29
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(Landroid/net/Uri;)V

    .line 31
    :cond_24
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->A()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_9

    return-void

    .line 34
    :goto_28
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract b()J
.end method

.method public b(F)V
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->f(F)V

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->d(F)V

    return-void
.end method

.method public b(J)V
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(J)V

    return-void
.end method

.method public abstract b(Landroid/net/Uri;)V
.end method

.method public b(Lio/bidmachine/util/Error;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 11
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/d;->a(Lio/bidmachine/rendering/internal/adform/video/player/b;Lio/bidmachine/util/Error;)V

    .line 13
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->I()V

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->b:Lio/bidmachine/util/AudioFocusManager;

    invoke-virtual {p1}, Lio/bidmachine/util/AudioFocusManager;->release()V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->e(F)V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .registers 6

    if-eqz p1, :cond_2a

    .line 14
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    .line 15
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_2a

    .line 19
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lio/bidmachine/rendering/internal/adform/video/player/d;->a(Lio/bidmachine/rendering/internal/adform/video/player/b;J)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lio/bidmachine/util/ErrorKt;->toError(Ljava/lang/Throwable;)Lio/bidmachine/util/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public abstract c()F
.end method

.method public c(F)V
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(F)V

    return-void
.end method

.method public c(J)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(J)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public c(Landroid/net/Uri;)V
    .registers 3

    const-string v0, "videoUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Landroid/net/Uri;)V

    return-void
.end method

.method public c(Lio/bidmachine/util/Error;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_17

    .line 10
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/d;->b(Lio/bidmachine/rendering/internal/adform/video/player/b;Lio/bidmachine/util/Error;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lio/bidmachine/util/ErrorKt;->toError(Ljava/lang/Throwable;)Lio/bidmachine/util/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->k:J

    return-wide v0
.end method

.method public d(F)V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 6
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->p()Lio/bidmachine/rendering/internal/adform/video/player/d;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/d;->a(Lio/bidmachine/rendering/internal/adform/video/player/b;F)V

    :cond_12
    :goto_12
    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->h:Lio/bidmachine/rendering/internal/adform/video/player/d;

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->b:Lio/bidmachine/util/AudioFocusManager;

    invoke-virtual {v0}, Lio/bidmachine/util/AudioFocusManager;->release()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->k()V

    return-void
.end method

.method public e(F)V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(F)V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    return-void
.end method

.method public abstract e()Z
.end method

.method public f(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1
    :goto_8
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 5
    :cond_13
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(Z)V

    return-void
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public getVolume()F
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->v()F

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public k()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->a:Lio/bidmachine/rendering/internal/adform/video/player/a$b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d()V

    return-void
.end method

.method public l()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->a:Lio/bidmachine/rendering/internal/adform/video/player/a$b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->b()V

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(Ljava/lang/Long;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public m()Ljava/lang/Long;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->i:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->pause()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(J)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->F()V

    :cond_19
    return-void
.end method

.method public final p()Lio/bidmachine/rendering/internal/adform/video/player/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->h:Lio/bidmachine/rendering/internal/adform/video/player/d;

    return-object v0
.end method

.method public pause()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->y()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->l:J

    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    return-void
.end method

.method public play()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    :try_start_1
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->i:Z

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_17

    :catch_14
    move-exception v0

    goto :goto_1b

    :cond_16
    const/4 v0, 0x0

    .line 7
    :goto_17
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(Ljava/lang/Long;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_14

    return-void

    .line 15
    :goto_1b
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public prepare()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->A()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public q()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->b:Lio/bidmachine/util/AudioFocusManager;

    invoke-virtual {v0}, Lio/bidmachine/util/AudioFocusManager;->pause()V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->E()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->k()V

    return-void
.end method

.method public r()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->b:Lio/bidmachine/util/AudioFocusManager;

    invoke-virtual {v0}, Lio/bidmachine/util/AudioFocusManager;->resume()Z

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->G()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->N()V

    return-void
.end method

.method public s()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->O()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a;->l:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a(ZLjava/lang/Long;)V

    .line 5
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->H()V

    return-void
.end method

.method public t()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->c()F

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->e()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->f()Z

    move-result v0

    return v0
.end method

.method public y()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->g()V

    return-void
.end method

.method public z()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->h()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.a.C1171a (io.bidmachine.rendering.internal.adform.video.player.a$a)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.adform.video.player.a.b (io.bidmachine.rendering.internal.adform.video.player.a$b)
.class public final Lio/bidmachine/rendering/internal/adform/video/player/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Lio/bidmachine/rendering/internal/adform/video/player/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/a;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->a:J

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->m()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/adform/video/player/a;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_19

    goto :goto_60

    :cond_19
    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 7
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    int-to-float v4, v3

    sub-float/2addr v2, v4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_60

    if-eqz v1, :cond_56

    if-eq v1, v3, :cond_50

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_44

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3e

    goto :goto_5b

    .line 27
    :cond_3e
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->I()V

    goto :goto_5b

    .line 28
    :cond_44
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->M()V

    goto :goto_5b

    .line 29
    :cond_4a
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->K()V

    goto :goto_5b

    .line 30
    :cond_50
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->J()V

    goto :goto_5b

    .line 31
    :cond_56
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->L()V

    .line 50
    :goto_5b
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_60
    :goto_60
    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-static {p0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-static {p0}, Lio/bidmachine/rendering/utils/UiUtils;->cancelOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRun()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->C()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->a()V

    .line 8
    :cond_14
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->d:Lio/bidmachine/rendering/internal/adform/video/player/a;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/a;->m()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/adform/video/player/a;->b(Ljava/lang/Long;)V

    .line 9
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/a$b;->a:J

    invoke-static {p0, v0, v1}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method
