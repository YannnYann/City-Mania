###### Class io.bidmachine.media3.exoplayer.util.ReleasableExecutor (io.bidmachine.media3.exoplayer.util.ReleasableExecutor)
.class public interface abstract Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;
.super Ljava/lang/Object;
.source "ReleasableExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public static from(Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/util/Consumer;)Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/concurrent/Executor;",
            ">(TT;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "TT;>;)",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;"
        }
    .end annotation

    .line 46
    new-instance v0, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;-><init>(Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/util/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public abstract release()V
.end method

###### Class io.bidmachine.media3.exoplayer.util.ReleasableExecutor.AnonymousClass1 (io.bidmachine.media3.exoplayer.util.ReleasableExecutor$1)
.class public Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;
.super Ljava/lang/Object;
.source "ReleasableExecutor.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;->from(Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/util/Consumer;)Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$executor:Ljava/util/concurrent/Executor;

.field public final synthetic val$releaseCallback:Lio/bidmachine/media3/common/util/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;->val$releaseCallback:Lio/bidmachine/media3/common/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 54
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;->val$releaseCallback:Lio/bidmachine/media3/common/util/Consumer;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
