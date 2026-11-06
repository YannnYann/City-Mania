###### Class ads_mobile_sdk.qr3 (ads_mobile_sdk.qr3)
.class public final Lads_mobile_sdk/qr3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/lq0;

.field public final b:Lads_mobile_sdk/qt1;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:J

.field public f:J

.field public g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lads_mobile_sdk/qr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lads_mobile_sdk/qr3;->e:J

    .line 43
    iput-wide v0, p0, Lads_mobile_sdk/qr3;->f:J

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lads_mobile_sdk/qr3;->g:Ljava/lang/Throwable;

    .line 48
    iput-object p1, p0, Lads_mobile_sdk/qr3;->a:Lads_mobile_sdk/lq0;

    .line 49
    iput-object p3, p0, Lads_mobile_sdk/qr3;->b:Lads_mobile_sdk/qt1;

    .line 50
    iput-object p2, p0, Lads_mobile_sdk/qr3;->c:Lads_mobile_sdk/tx;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    .line 68
    iget-object v0, p0, Lads_mobile_sdk/qr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_36

    .line 72
    iget-object v0, p0, Lads_mobile_sdk/qr3;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 74
    iput-wide v0, p0, Lads_mobile_sdk/qr3;->f:J

    .line 76
    iget-object v0, p0, Lads_mobile_sdk/qr3;->b:Lads_mobile_sdk/qt1;

    iget-object v1, p0, Lads_mobile_sdk/qr3;->a:Lads_mobile_sdk/lq0;

    .line 77
    iget v3, v1, Lads_mobile_sdk/lq0;->a:I

    .line 78
    iget-object v1, p0, Lads_mobile_sdk/qr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-wide v1, p0, Lads_mobile_sdk/qr3;->f:J

    iget-wide v4, p0, Lads_mobile_sdk/qr3;->e:J

    sub-long/2addr v1, v4

    :goto_27
    move-wide v4, v1

    goto :goto_2c

    :cond_29
    const-wide/16 v1, -0x1

    goto :goto_27

    .line 79
    :goto_2c
    iget-object v6, p0, Lads_mobile_sdk/qr3;->g:Ljava/lang/Throwable;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/st1;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Finished trace."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lads_mobile_sdk/qr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 143
    iput-object p1, p0, Lads_mobile_sdk/qr3;->g:Ljava/lang/Throwable;

    return-void

    .line 144
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Finished trace."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .registers 3

    .line 46
    iget-object v0, p0, Lads_mobile_sdk/qr3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    .line 50
    iget-object v0, p0, Lads_mobile_sdk/qr3;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lads_mobile_sdk/qr3;->e:J

    return-void

    .line 53
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Finished trace."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
