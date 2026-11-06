###### Class ads_mobile_sdk.iz0 (ads_mobile_sdk.iz0)
.class public final Lads_mobile_sdk/iz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;
.implements Lads_mobile_sdk/pc1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ts3;

.field public final c:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final d:Lads_mobile_sdk/na;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lads_mobile_sdk/hz0;

.field public final g:Lads_mobile_sdk/ja3;

.field public h:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ts3;Lcom/google/common/util/concurrent/ListeningExecutorService;Lads_mobile_sdk/na;Lads_mobile_sdk/hz0;Lads_mobile_sdk/ja3;)V
    .registers 9

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lads_mobile_sdk/iz0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 79
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/iz0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 105
    iput-object p1, p0, Lads_mobile_sdk/iz0;->a:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lads_mobile_sdk/iz0;->b:Lads_mobile_sdk/ts3;

    .line 107
    iput-object p3, p0, Lads_mobile_sdk/iz0;->c:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 108
    iput-object p4, p0, Lads_mobile_sdk/iz0;->d:Lads_mobile_sdk/na;

    .line 109
    iput-object p5, p0, Lads_mobile_sdk/iz0;->f:Lads_mobile_sdk/hz0;

    .line 110
    iput-object p6, p0, Lads_mobile_sdk/iz0;->g:Lads_mobile_sdk/ja3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ts3;Lcom/google/common/util/concurrent/ListeningExecutorService;Lads_mobile_sdk/na;Lads_mobile_sdk/ja3;)V
    .registers 13

    .line 168
    new-instance v5, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/iz0;-><init>(Landroid/content/Context;Lads_mobile_sdk/ts3;Lcom/google/common/util/concurrent/ListeningExecutorService;Lads_mobile_sdk/na;Lads_mobile_sdk/hz0;Lads_mobile_sdk/ja3;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 125
    iget-object v0, p0, Lads_mobile_sdk/iz0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 128
    :cond_e
    iget-object v0, p0, Lads_mobile_sdk/iz0;->d:Lads_mobile_sdk/na;

    invoke-virtual {v0}, Lads_mobile_sdk/na;->D()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 129
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 132
    :cond_1b
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 133
    iput-object v0, p0, Lads_mobile_sdk/iz0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 135
    iget-object v1, p0, Lads_mobile_sdk/iz0;->b:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->i:Lads_mobile_sdk/lq0;

    new-instance v3, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V

    .line 138
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/common/util/concurrent/SettableFuture;)V
    .registers 5

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 234
    invoke-virtual {p0, p1, v0, v1, v2}, Lads_mobile_sdk/iz0;->a(Lcom/google/common/util/concurrent/SettableFuture;IJ)V

    return-void
.end method

.method public final a(Lcom/google/common/util/concurrent/SettableFuture;IJ)V
    .registers 11

    .line 6
    new-instance v0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;IJ)V

    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    if-lez p1, :cond_15

    .line 38
    iget-object p1, v1, Lads_mobile_sdk/iz0;->g:Lads_mobile_sdk/ja3;

    invoke-interface {p1, v0, v4, v5}, Lads_mobile_sdk/ja3;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 40
    :cond_15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/iz0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "gs"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 4
    iget-object p2, p0, Lads_mobile_sdk/iz0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string p3, "gs"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/google/common/util/concurrent/SettableFuture;IJ)V
    .registers 10

    .line 116
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/iz0;->a:Landroid/content/Context;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/iz0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lads_mobile_sdk/iz0;->f:Lads_mobile_sdk/hz0;

    iget-object v2, p0, Lads_mobile_sdk/iz0;->a:Landroid/content/Context;

    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-interface {v1, v2, v3, v0}, Lads_mobile_sdk/hz0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/fh;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 124
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->B()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 125
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->x()J

    move-result-wide v1

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3a

    .line 126
    :cond_36
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    :cond_3a
    const/4 v0, 0x3

    if-ge p2, v0, :cond_4b

    const/4 v0, 0x1

    if-ne p2, v0, :cond_43

    const-wide/16 p3, 0x64

    goto :goto_46

    :cond_43
    const-wide/16 v1, 0x2

    mul-long/2addr p3, v1

    :goto_46
    add-int/2addr p2, v0

    .line 137
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/iz0;->a(Lcom/google/common/util/concurrent/SettableFuture;IJ)V

    goto :goto_4f

    :cond_4b
    const/4 p2, 0x0

    .line 139
    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_4f
    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/iz0;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "gs"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic c(Lcom/google/common/util/concurrent/SettableFuture;IJ)V
    .registers 12

    .line 111
    iget-object v0, p0, Lads_mobile_sdk/iz0;->c:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;-><init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class ads_mobile_sdk.iz0$$ExternalSyntheticLambda0 (ads_mobile_sdk.iz0$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/iz0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/hz0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/fh;
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/gz0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/fh;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.iz0$$ExternalSyntheticLambda1 (ads_mobile_sdk.iz0$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/iz0$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/iz0;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/iz0;

    iput-object p2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/iz0;

    iget-object v1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/iz0;->a(Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method

###### Class ads_mobile_sdk.iz0$$ExternalSyntheticLambda2 (ads_mobile_sdk.iz0$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/iz0;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;IJ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/iz0;

    iput-object p2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iput p3, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$2:I

    iput-wide p4, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$0:Lads_mobile_sdk/iz0;

    iget-object v1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iget v2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$2:I

    iget-wide v3, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda2;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lads_mobile_sdk/iz0;->c(Lcom/google/common/util/concurrent/SettableFuture;IJ)V

    return-void
.end method

###### Class ads_mobile_sdk.iz0$$ExternalSyntheticLambda3 (ads_mobile_sdk.iz0$$ExternalSyntheticLambda3)
.class public final synthetic Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/iz0;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/iz0;Lcom/google/common/util/concurrent/SettableFuture;IJ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/iz0;

    iput-object p2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iput p3, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$2:I

    iput-wide p4, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$0:Lads_mobile_sdk/iz0;

    iget-object v1, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iget v2, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$2:I

    iget-wide v3, p0, Lads_mobile_sdk/iz0$$ExternalSyntheticLambda3;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lads_mobile_sdk/iz0;->b(Lcom/google/common/util/concurrent/SettableFuture;IJ)V

    return-void
.end method
