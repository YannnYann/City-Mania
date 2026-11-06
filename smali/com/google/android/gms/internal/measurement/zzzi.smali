###### Class com.google.android.gms.internal.measurement.zzzi (com.google.android.gms.internal.measurement.zzzi)
.class final Lcom/google/android/gms/internal/measurement/zzzi;
.super Lcom/google/android/gms/internal/measurement/zzzj;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzzi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzi;->zza:Lcom/google/android/gms/internal/measurement/zzzi;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(I)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method
