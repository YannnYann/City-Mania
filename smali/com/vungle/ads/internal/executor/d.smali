###### Class com.vungle.ads.internal.executor.d (com.vungle.ads.internal.executor.d)
.class public final Lcom/vungle/ads/internal/executor/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/executor/a;


# instance fields
.field public a:Lcom/vungle/ads/internal/executor/j;

.field public b:Lcom/vungle/ads/internal/executor/j;

.field public c:Lcom/vungle/ads/internal/executor/j;

.field public d:Lcom/vungle/ads/internal/executor/j;

.field public e:Lcom/vungle/ads/internal/executor/j;

.field public f:Lcom/vungle/ads/internal/executor/j;

.field public g:Lcom/vungle/ads/internal/executor/j;

.field public h:Lcom/vungle/ads/internal/executor/j;

.field public i:Lcom/vungle/ads/internal/executor/j;


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 51
    new-instance v1, Lcom/vungle/ads/internal/executor/j;

    .line 55
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v6, v8

    .line 57
    new-instance v8, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_jr"

    invoke-direct {v8, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x5

    move v3, v2

    .line 58
    invoke-direct/range {v1 .. v8}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    move-object v8, v6

    iput-object v1, p0, Lcom/vungle/ads/internal/executor/d;->c:Lcom/vungle/ads/internal/executor/j;

    .line 66
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 71
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 72
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_io"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const-wide/16 v6, 0x5

    const/4 v4, 0x1

    .line 73
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->a:Lcom/vungle/ads/internal/executor/j;

    .line 81
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 86
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 87
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_api"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0xa

    .line 88
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->i:Lcom/vungle/ads/internal/executor/j;

    .line 96
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 101
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 102
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_logger"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->d:Lcom/vungle/ads/internal/executor/j;

    .line 111
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 116
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 117
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_background"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->b:Lcom/vungle/ads/internal/executor/j;

    .line 126
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 131
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 132
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_ua"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->e:Lcom/vungle/ads/internal/executor/j;

    .line 141
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 146
    new-instance v9, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 147
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_down"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    const-wide/16 v6, 0x1

    const/4 v4, 0x4

    .line 148
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->f:Lcom/vungle/ads/internal/executor/j;

    .line 156
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 161
    new-instance v9, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 162
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_pre_down"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v4, 0x2

    .line 163
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->g:Lcom/vungle/ads/internal/executor/j;

    .line 171
    new-instance v3, Lcom/vungle/ads/internal/executor/j;

    .line 176
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 177
    new-instance v10, Lcom/vungle/ads/internal/executor/c;

    const-string v0, "vng_ol"

    invoke-direct {v10, v0}, Lcom/vungle/ads/internal/executor/c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const-wide/16 v6, 0xa

    const/4 v4, 0x1

    .line 178
    invoke-direct/range {v3 .. v10}, Lcom/vungle/ads/internal/executor/j;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/internal/executor/c;)V

    iput-object v3, p0, Lcom/vungle/ads/internal/executor/d;->h:Lcom/vungle/ads/internal/executor/j;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/executor/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->i:Lcom/vungle/ads/internal/executor/j;

    return-object v0
.end method

.method public final b()Lcom/vungle/ads/internal/executor/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->b:Lcom/vungle/ads/internal/executor/j;

    return-object v0
.end method

.method public final c()Lcom/vungle/ads/internal/executor/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->a:Lcom/vungle/ads/internal/executor/j;

    return-object v0
.end method

.method public final d()Lcom/vungle/ads/internal/executor/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->c:Lcom/vungle/ads/internal/executor/j;

    return-object v0
.end method

.method public final e()Lcom/vungle/ads/internal/executor/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->d:Lcom/vungle/ads/internal/executor/j;

    return-object v0
.end method

.method public final f()Lcom/vungle/ads/internal/executor/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/executor/d;->h:Lcom/vungle/ads/internal/executor/j;

    return-object v0
.end method
