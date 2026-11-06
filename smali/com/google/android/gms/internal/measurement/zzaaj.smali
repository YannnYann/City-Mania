###### Class com.google.android.gms.internal.measurement.zzaaj (com.google.android.gms.internal.measurement.zzaaj)
.class public final Lcom/google/android/gms/internal/measurement/zzaaj;
.super Lcom/google/android/gms/internal/measurement/zzaad;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Z

.field private static final zzb:Z

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzaac;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaj$zza;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzaaj;->zza:Z

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const-string v2, "robolectric"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzaaj;->zzb:Z

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaaj$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaaj$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaj;->zzc:Lcom/google/android/gms/internal/measurement/zzaac;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaad;-><init>()V

    return-void
.end method

.method public static zzp()Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "dalvik.system.VMStack"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackClass2"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaj;->zzq()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/measurement/zzaaj$zza;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1c

    :catchall_1c
    return v0
.end method

.method public static zzq()Ljava/lang/String;
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzr()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic zzs()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzaaj;->zza:Z

    return v0
.end method

.method public static synthetic zzt()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzaaj;->zzb:Z

    return v0
.end method


# virtual methods
.method public zzc()Lcom/google/android/gms/internal/measurement/zzaac;
    .registers 2

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaaj;->zzc:Lcom/google/android/gms/internal/measurement/zzaac;

    return-object v0
.end method

.method public zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaao;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    return-object p1
.end method

.method public zzg()Lcom/google/android/gms/internal/measurement/zzaat;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaap;->zza()Lcom/google/android/gms/internal/measurement/zzaap;

    move-result-object v0

    return-object v0
.end method

.method public zzn()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "platform: Android"

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzaaj.AnonymousClass1 (com.google.android.gms.internal.measurement.zzaaj$1)
.class Lcom/google/android/gms/internal/measurement/zzaaj$1;
.super Lcom/google/android/gms/internal/measurement/zzaac;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzaaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaac;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzxi<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaj;->zzs()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaj;->zzr()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaj;->zzt()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzabq;->zza(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 6
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method public zzb(Ljava/lang/Class;I)Lcom/google/android/gms/internal/measurement/zzyc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lcom/google/android/gms/internal/measurement/zzyc;"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzyc;->zza:Lcom/google/android/gms/internal/measurement/zzyc;

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzaaj.zza (com.google.android.gms.internal.measurement.zzaaj$zza)
.class final Lcom/google/android/gms/internal/measurement/zzaaj$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaj;->zzp()Z

    move-result v0

    return v0
.end method
