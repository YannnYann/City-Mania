###### Class io.bidmachine.rendering.internal.G (io.bidmachine.rendering.internal.G)
.class public abstract Lio/bidmachine/rendering/internal/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/C;
.implements Lio/bidmachine/rendering/internal/y;
.implements Lio/bidmachine/rendering/internal/w;
.implements Lio/bidmachine/rendering/internal/A;
.implements Lio/bidmachine/rendering/internal/z;
.implements Lio/bidmachine/rendering/internal/F;
.implements Lio/bidmachine/rendering/internal/E;
.implements Lio/bidmachine/rendering/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/G$a;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/event/a;

.field public final b:Ljava/util/List;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/event/a;)V
    .registers 3

    const-string v0, "eventCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/G;->a:Lio/bidmachine/rendering/internal/event/a;

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/G;->b:Ljava/util/List;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/G;->c:Z

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/G;)Ljava/util/List;
    .registers 1

    .line 4
    iget-object p0, p0, Lio/bidmachine/rendering/internal/G;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .registers 4

    .line 5
    new-instance v0, Lio/bidmachine/rendering/internal/G$a;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/G$a;-><init>(Lio/bidmachine/rendering/internal/G;)V

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/G$a;->a(J)V

    return-void
.end method

.method public a(JJF)V
    .registers 6

    .line 0
    return-void
.end method

.method public a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/bidmachine/rendering/internal/event/a;->a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    .line 0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .line 7
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/G;->c:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/G;->c:Z

    if-eqz p1, :cond_f

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/G;->f()V

    goto :goto_12

    .line 12
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/G;->h()V

    :goto_12
    if-eqz v0, :cond_17

    .line 15
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/G;->b(Z)V

    :cond_17
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .registers 2

    .line 0
    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public c()V
    .registers 1

    .line 0
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/G;->b:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/G$a;

    .line 54
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/G$a;->a()V

    goto :goto_6

    .line 56
    :cond_16
    iget-object v0, p0, Lio/bidmachine/rendering/internal/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/G;->b:Ljava/util/List;

    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/G$a;

    .line 125
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/G$a;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/G;->b:Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/G$a;

    .line 121
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/G$a;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public l()V
    .registers 1

    .line 0
    return-void
.end method

.method public n()V
    .registers 1

    .line 0
    return-void
.end method

.method public pause()V
    .registers 1

    .line 0
    return-void
.end method

.method public play()V
    .registers 1

    .line 0
    return-void
.end method

.method public q()Lio/bidmachine/rendering/internal/event/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/G;->a:Lio/bidmachine/rendering/internal/event/a;

    return-object v0
.end method

.method public abstract r()Ljava/lang/String;
.end method

###### Class io.bidmachine.rendering.internal.G.a (io.bidmachine.rendering.internal.G$a)
.class public final Lio/bidmachine/rendering/internal/G$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public final synthetic c:Lio/bidmachine/rendering/internal/G;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/G;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/G$a;->c:Lio/bidmachine/rendering/internal/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lio/bidmachine/rendering/internal/G;->a(Lio/bidmachine/rendering/internal/G;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/G$a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/G$a;->a:J

    .line 5
    invoke-static {p0}, Lio/bidmachine/rendering/utils/UiUtils;->cancelOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(J)V
    .registers 5

    .line 1
    iput-wide p1, p0, Lio/bidmachine/rendering/internal/G$a;->a:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/bidmachine/rendering/internal/G$a;->b:J

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/G$a;->b()V

    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/G$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    .line 2
    invoke-static {p0, v0, v1}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;J)V

    return-void

    .line 4
    :cond_c
    invoke-static {p0}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/internal/G$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public onRun()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/G$a;->c:Lio/bidmachine/rendering/internal/G;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/G;->q()Lio/bidmachine/rendering/internal/event/a;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/event/a;->l()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/G$a;->c:Lio/bidmachine/rendering/internal/G;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/G;->a(Lio/bidmachine/rendering/internal/G;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
