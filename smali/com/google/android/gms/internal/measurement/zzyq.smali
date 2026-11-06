###### Class com.google.android.gms.internal.measurement.zzyq (com.google.android.gms.internal.measurement.zzyq)
.class public abstract Lcom/google/android/gms/internal/measurement/zzyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzyq;

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzyq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzym;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzym;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzym;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzym;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzyq;->zzd:Lcom/google/android/gms/internal/measurement/zzyq;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyq;)Lcom/google/android/gms/internal/measurement/zzyq;
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    goto :goto_1b

    .line 1
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    if-eq p0, v0, :cond_1b

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzyq;->zzd:Lcom/google/android/gms/internal/measurement/zzyq;

    if-ne p1, v1, :cond_f

    goto :goto_1b

    :cond_f
    if-eq p1, v0, :cond_1a

    if-ne p0, v1, :cond_14

    goto :goto_1a

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzyn;-><init>(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyq;)V

    return-object v0

    :cond_1a
    :goto_1a
    return-object p1

    :cond_1b
    :goto_1b
    return-object p0
.end method


# virtual methods
.method public abstract zzb()V
.end method
