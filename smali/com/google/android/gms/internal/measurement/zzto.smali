###### Class com.google.android.gms.internal.measurement.zzto (com.google.android.gms.internal.measurement.zzto)
.class public final Lcom/google/android/gms/internal/measurement/zzto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# static fields
.field public static final synthetic zza:I


# instance fields
.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzto;->zzb:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzto;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zza(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/measurement/zzto;
    .registers 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzto;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzto;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzto;->zzb:Ljava/util/List;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzth;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zztj;

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zztj;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 6
    :cond_25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zztn;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zztn;-><init>(Lcom/google/android/gms/internal/measurement/zzto;Ljava/util/List;I)V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 9
    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzth;->zza(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zztk;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zztk;-><init>(Lcom/google/android/gms/internal/measurement/zzto;ILjava/util/List;)V

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzb(Ljava/util/List;ILcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zztl;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zztl;-><init>(Lcom/google/android/gms/internal/measurement/zzto;Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/List;)V

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Lcom/google/common/util/concurrent/AsyncCallable;)Lcom/google/common/util/concurrent/AsyncCallable;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzto;->zzc:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->callAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(ILjava/util/List;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_2c

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzto;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zztj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zztj;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4
    :cond_2c
    invoke-static {p3}, Lcom/google/common/util/concurrent/Futures;->whenAllSucceed(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    invoke-static {p2}, Lcom/google/common/util/concurrent/Callables;->returning(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_35

    .line 2
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzto;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zztj;

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/measurement/zztm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/zztm;-><init>(Lcom/google/android/gms/internal/measurement/zztj;)V

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 7
    invoke-static {p1, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_35
    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zztk (com.google.android.gms.internal.measurement.zztk)
.class final synthetic Lcom/google/android/gms/internal/measurement/zztk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzto;

.field private final synthetic zzb:I

.field private final synthetic zzc:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzto;ILjava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztk;->zza:Lcom/google/android/gms/internal/measurement/zzto;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zztk;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zztk;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztk;->zza:Lcom/google/android/gms/internal/measurement/zzto;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zztk;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zztk;->zzc:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzto;->zzc(ILjava/util/List;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zztl (com.google.android.gms.internal.measurement.zztl)
.class final synthetic Lcom/google/android/gms/internal/measurement/zztl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzto;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzafc;

.field private final synthetic zzc:I

.field private final synthetic zzd:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzto;Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztl;->zza:Lcom/google/android/gms/internal/measurement/zzto;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztl;->zzb:Lcom/google/android/gms/internal/measurement/zzafc;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zztl;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zztl;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic call()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztl;->zza:Lcom/google/android/gms/internal/measurement/zzto;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zztl;->zzb:Lcom/google/android/gms/internal/measurement/zzafc;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zztl;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztl;->zzd:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzto;->zzd(Lcom/google/android/gms/internal/measurement/zzafc;ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zztm (com.google.android.gms.internal.measurement.zztm)
.class final synthetic Lcom/google/android/gms/internal/measurement/zztm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zztj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zztj;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztm;->zza:Lcom/google/android/gms/internal/measurement/zztj;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zztm;->zza:Lcom/google/android/gms/internal/measurement/zztj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zztj;->zzc()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zztn (com.google.android.gms.internal.measurement.zztn)
.class final synthetic Lcom/google/android/gms/internal/measurement/zztn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzto;

.field private final synthetic zzb:Ljava/util/List;

.field private final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzto;Ljava/util/List;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztn;->zza:Lcom/google/android/gms/internal/measurement/zzto;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztn;->zzb:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zztn;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztn;->zza:Lcom/google/android/gms/internal/measurement/zzto;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zztn;->zzb:Ljava/util/List;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zztn;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzto;->zzb(Ljava/util/List;ILcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
