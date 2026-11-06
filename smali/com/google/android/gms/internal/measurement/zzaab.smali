###### Class com.google.android.gms.internal.measurement.zzaab (com.google.android.gms.internal.measurement.zzaab)
.class final Lcom/google/android/gms/internal/measurement/zzaab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzaad;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzo()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzaab;->zzb([Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzaad;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaab;->zza:Lcom/google/android/gms/internal/measurement/zzaad;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/measurement/zzaad;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaab;->zza:Lcom/google/android/gms/internal/measurement/zzaad;

    return-object v0
.end method

.method private static zzb([Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzaad;
    .registers 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaak;->zza:Lcom/google/android/gms/internal/measurement/zzaaj;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_42

    aget-object v4, p0, v3

    .line 3
    :try_start_13
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaad;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    return-object v5

    :catchall_26
    move-exception v5

    const/16 v6, 0xa

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    instance-of v4, v5, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v4, :cond_3c

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    :cond_3c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "No logging platforms found:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
