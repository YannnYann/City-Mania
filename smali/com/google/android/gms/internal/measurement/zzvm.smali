###### Class com.google.android.gms.internal.measurement.zzvm (com.google.android.gms.internal.measurement.zzvm)
.class public final Lcom/google/android/gms/internal/measurement/zzvm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzvg;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v1, -0x80000000

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->zzi(II)J

    move-result-wide v1

    .line 2
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zze:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzf:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzvg;

    .line 7
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzvg;-><init>(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zza:Lcom/google/android/gms/internal/measurement/zzvg;

    .line 8
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private final zzh(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    if-le v1, p1, :cond_11

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateCancelledFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzvl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/zzvl;-><init>(I)V

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzvl;

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzvl;->zza()I

    move-result v5

    if-gt v5, p1, :cond_27

    goto :goto_2c

    .line 11
    :cond_27
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateCancelledFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2c
    :goto_2c
    invoke-static {v2, v4, v1}, Lads_mobile_sdk/tu2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    ushr-long v3, v4, v3

    long-to-int v0, v3

    if-le v0, p1, :cond_44

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    const/4 p1, 0x0

    .line 8
    invoke-static {v2, v1, p1}, Lads_mobile_sdk/tu2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1

    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zza:Lcom/google/android/gms/internal/measurement/zzvg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvg;->zza()Lcom/google/common/util/concurrent/AsyncCallable;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzvg;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-nez p1, :cond_53

    goto :goto_5f

    .line 10
    :cond_53
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Lcom/google/common/util/concurrent/AsyncCallable;)Lcom/google/common/util/concurrent/AsyncCallable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzvl;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-object v1

    .line 8
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzf:Lcom/google/common/util/concurrent/SettableFuture;

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzvl;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-object v1
.end method

.method private static zzi(II)J
    .registers 6

    .line 0
    int-to-long v0, p0

    int-to-long p0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzf:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_66

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v5, v1

    long-to-int v3, v3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/zzvm;->zzi(II)J

    move-result-wide v4

    .line 3
    invoke-virtual {v0, v1, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_40

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvi;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/measurement/zzvi;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Lcom/google/common/util/concurrent/AsyncCallable;)Lcom/google/common/util/concurrent/AsyncCallable;

    move-result-object v0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_51

    .line 6
    :cond_40
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzvh;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/measurement/zzvh;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zze:Ljava/util/concurrent/Executor;

    const-class v5, Ljava/lang/Throwable;

    .line 9
    invoke-static {v0, v5, v2, v4}, Lcom/google/common/util/concurrent/Futures;->catchingAsync(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 10
    :goto_51
    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvk;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzvk;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;I[B)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzvj;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzvj;-><init>(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/gms/internal/measurement/zzvk;)V

    .line 12
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_66
    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/gms/internal/measurement/zzvk;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_d

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzf:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzvk;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void

    .line 2
    :catchall_d
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzvk;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method

.method public final synthetic zzc(ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvm;->zzh(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzvm;->zzh(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze()Z
    .registers 8

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-int v3, v1

    const/16 v4, 0x20

    ushr-long v4, v1, v4

    const/high16 v6, -0x80000000

    if-eq v3, v6, :cond_29

    long-to-int v4, v4

    const v5, -0x7fffffff

    if-ne v3, v5, :cond_17

    const/4 v5, 0x1

    goto :goto_18

    :cond_17
    const/4 v5, 0x0

    :goto_18
    if-eqz v5, :cond_1c

    add-int/lit8 v4, v4, 0x1

    :cond_1c
    add-int/lit8 v3, v3, -0x1

    .line 3
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zzvm;->zzi(II)J

    move-result-wide v3

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    .line 1
    :cond_29
    new-instance v0, Ljava/lang/AssertionError;

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0xd

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Refcount is: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/measurement/zzvg;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zza:Lcom/google/android/gms/internal/measurement/zzvg;

    return-object v0
.end method

.method public final synthetic zzg()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvm;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzvh (com.google.android.gms.internal.measurement.zzvh)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzvh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzvm;

.field private final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvh;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzvh;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvh;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvh;->zzb:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzvm;->zzc(ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzvi (com.google.android.gms.internal.measurement.zzvi)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzvm;

.field private final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvi;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzvi;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic call()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvi;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzvi;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvm;->zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzvj (com.google.android.gms.internal.measurement.zzvj)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzvj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzvm;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/SettableFuture;

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzvk;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/gms/internal/measurement/zzvk;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzb:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzc:Lcom/google/android/gms/internal/measurement/zzvk;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zza:Lcom/google/android/gms/internal/measurement/zzvm;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzb:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzvj;->zzc:Lcom/google/android/gms/internal/measurement/zzvk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzvm;->zzb(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/gms/internal/measurement/zzvk;)V

    return-void
.end method
