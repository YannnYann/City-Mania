###### Class com.google.android.gms.common.zzm (com.google.android.gms.common.zzm)
.class abstract Lcom/google/android/gms/common/zzm;
.super Lcom/google/android/gms/common/zzj;
.source "com.google.android.gms:play-services-basement@@18.12.0"


# static fields
.field private static final zzb:Ljava/lang/ref/WeakReference;


# instance fields
.field private zza:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/common/zzm;->zzb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/zzj;-><init>([B)V

    sget-object p1, Lcom/google/android/gms/common/zzm;->zzb:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/common/zzm;->zza:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public abstract zzb()[B
.end method

.method public final zzc()[B
    .registers 3

    .line 1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/zzm;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_19

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzm;->zzb()[B

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/common/zzm;->zza:Ljava/lang/ref/WeakReference;

    goto :goto_19

    :catchall_17
    move-exception v0

    goto :goto_1b

    .line 4
    :cond_19
    :goto_19
    monitor-exit p0

    return-object v0

    .line 5
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_17

    throw v0
.end method
