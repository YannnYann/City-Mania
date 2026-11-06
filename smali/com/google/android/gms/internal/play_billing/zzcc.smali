###### Class com.google.android.gms.internal.play_billing.zzcc (com.google.android.gms.internal.play_billing.zzcc)
.class final Lcom/google/android/gms/internal/play_billing/zzcc;
.super Lcom/google/android/gms/internal/play_billing/zzbx;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/play_billing/zzbw;

.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbw;[Ljava/lang/Object;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zza:Lcom/google/android/gms/internal/play_billing/zzbw;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zzc:I

    return-void
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/play_billing/zzcc;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zzc:I

    return p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/play_billing/zzcc;)[Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zza:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzbw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzd()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzcc;->zzc:I

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzd()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzch;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzd()Lcom/google/android/gms/internal/play_billing/zzbt;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzci;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/play_billing/zzbt;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>(Lcom/google/android/gms/internal/play_billing/zzcc;)V

    return-object v0
.end method
