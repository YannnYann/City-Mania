###### Class io.bidmachine.AdCridThreadHandler (io.bidmachine.AdCridThreadHandler)
.class public final Lio/bidmachine/AdCridThreadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final name:Ljava/lang/String;

.field private final runnable:Ljava/lang/Runnable;

.field private final tag:Lio/bidmachine/utils/Tag;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$rw_Rb00IUJqX4D84hV7Uu-43TuI(Lio/bidmachine/AdCridThreadHandler;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/AdCridThreadHandler;->runnable$lambda$0(Lio/bidmachine/AdCridThreadHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "crid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/utils/Tag;

    const-string v1, "AdCridThreadManager"

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->tag:Lio/bidmachine/utils/Tag;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "io.bidmachine.crid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdCridThreadHandler;->name:Ljava/lang/String;

    .line 7
    new-instance v0, Lio/bidmachine/AdCridThreadHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/AdCridThreadHandler$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/AdCridThreadHandler;)V

    iput-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->runnable:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    iput-object v1, p0, Lio/bidmachine/AdCridThreadHandler;->thread:Ljava/lang/Thread;

    return-void
.end method

.method private static final runnable$lambda$0(Lio/bidmachine/AdCridThreadHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    :try_start_9
    iget-object v1, p0, Lio/bidmachine/AdCridThreadHandler;->tag:Lio/bidmachine/utils/Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lio/bidmachine/AdCridThreadHandler;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " started"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v1, 0x7fffffffffffffffL

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_29} :catch_2a

    return-void

    .line 6
    :catch_2a
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->thread:Ljava/lang/Thread;

    .line 4
    iget-object v0, p0, Lio/bidmachine/AdCridThreadHandler;->tag:Lio/bidmachine/utils/Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/bidmachine/AdCridThreadHandler;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.AdCridThreadHandler$$ExternalSyntheticLambda0 (io.bidmachine.AdCridThreadHandler$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/AdCridThreadHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdCridThreadHandler;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdCridThreadHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdCridThreadHandler$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdCridThreadHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdCridThreadHandler$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdCridThreadHandler;

    invoke-static {v0}, Lio/bidmachine/AdCridThreadHandler;->$r8$lambda$rw_Rb00IUJqX4D84hV7Uu-43TuI(Lio/bidmachine/AdCridThreadHandler;)V

    return-void
.end method
