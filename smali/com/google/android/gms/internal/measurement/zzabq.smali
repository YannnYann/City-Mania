###### Class com.google.android.gms.internal.measurement.zzabq (com.google.android.gms.internal.measurement.zzabq)
.class public final Lcom/google/android/gms/internal/measurement/zzabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzabu;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "com.google.common.flogger.util.StackWalkerStackGetter"

    const-string v1, "com.google.common.flogger.util.JavaLangAccessStackGetter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabq;->zza:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_33

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzabq;->zza:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1
    :try_start_13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/measurement/zzabu;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzabu;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_2c

    goto :goto_2d

    :catchall_2c
    const/4 v2, 0x0

    :goto_2d
    if-eqz v2, :cond_30

    goto :goto_38

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_33
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzabv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzabv;-><init>()V

    :goto_38
    sput-object v2, Lcom/google/android/gms/internal/measurement/zzabq;->zzb:Lcom/google/android/gms/internal/measurement/zzabu;

    return-void
.end method

.method public static zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .registers 3

    .line 1
    const-string p1, "target"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzabq;->zzb:Lcom/google/android/gms/internal/measurement/zzabu;

    const/4 v0, 0x2

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzabu;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .registers 4

    if-gtz p1, :cond_e

    const/4 p2, -0x1

    if-ne p1, p2, :cond_6

    goto :goto_e

    .line 2
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid maximum depth: 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_e
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzabq;->zzb:Lcom/google/android/gms/internal/measurement/zzabu;

    const/4 v0, 0x2

    .line 1
    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzabu;->zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
