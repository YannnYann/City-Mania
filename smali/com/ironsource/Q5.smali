###### Class com.ironsource.Q5 (com.ironsource.Q5)
.class public final Lcom/ironsource/Q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Hf;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$RhOujrYrOruKPoS_wJvKMfZkgKw(Ljava/util/concurrent/ScheduledFuture;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/Q5;->a(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 3

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Q5;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static final a(Ljava/util/concurrent/ScheduledFuture;)V
    .registers 2

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lcom/ironsource/Hf$a;
    .registers 6

    const-string v0, "runnable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Q5;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/ironsource/Q5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/ironsource/Q5$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    return-object p2
.end method

###### Class com.ironsource.Q5$$ExternalSyntheticLambda0 (com.ironsource.Q5$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Q5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/Hf$a;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Q5$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Q5$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0}, Lcom/ironsource/Q5;->$r8$lambda$RhOujrYrOruKPoS_wJvKMfZkgKw(Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
