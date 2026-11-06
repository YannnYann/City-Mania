###### Class com.google.android.gms.internal.play_billing.zzgp (com.google.android.gms.internal.play_billing.zzgp)
.class final Lcom/google/android/gms/internal/play_billing/zzgp;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzgl;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzhh;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzev;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzhh;Lcom/google/android/gms/internal/play_billing/zzev;Lcom/google/android/gms/internal/play_billing/zzgl;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Lcom/google/android/gms/internal/play_billing/zzhh;

    instance-of p1, p3, Lcom/google/android/gms/internal/play_billing/zzff;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:Lcom/google/android/gms/internal/play_billing/zzev;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zza:Lcom/google/android/gms/internal/play_billing/zzgl;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/play_billing/zzhh;Lcom/google/android/gms/internal/play_billing/zzev;Lcom/google/android/gms/internal/play_billing/zzgl;)Lcom/google/android/gms/internal/play_billing/zzgp;
    .registers 4

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>(Lcom/google/android/gms/internal/play_billing/zzhh;Lcom/google/android/gms/internal/play_billing/zzev;Lcom/google/android/gms/internal/play_billing/zzgl;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 4

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Z

    if-eqz v1, :cond_16

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzff;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:Lcom/google/android/gms/internal/play_billing/zzez;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzez;->zzd()I

    move-result p1

    add-int/2addr v0, p1

    :cond_16
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 4

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Z

    if-eqz v1, :cond_1a

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzff;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:Lcom/google/android/gms/internal/play_billing/zzez;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzez;->zza:Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhd;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1a
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zza:Lcom/google/android/gms/internal/play_billing/zzgl;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzo()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object v0

    return-object v0

    .line 2
    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzK()Lcom/google/android/gms/internal/play_billing/zzgk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgk;->zzg()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Lcom/google/android/gms/internal/play_billing/zzhh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhh;->zzb(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:Lcom/google/android/gms/internal/play_billing/zzev;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzev;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Lcom/google/android/gms/internal/play_billing/zzhh;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgx;->zzp(Lcom/google/android/gms/internal/play_billing/zzhh;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:Lcom/google/android/gms/internal/play_billing/zzev;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgx;->zzo(Lcom/google/android/gms/internal/play_billing/zzev;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzdw;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfi;

    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhi;->zzc()Lcom/google/android/gms/internal/play_billing/zzhi;

    move-result-object p4

    if-eq p3, p4, :cond_c

    goto :goto_12

    .line 4
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhi;->zzf()Lcom/google/android/gms/internal/play_billing/zzhi;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 3
    :goto_12
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzff;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhu;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzff;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:Lcom/google/android/gms/internal/play_billing/zzez;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzez;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzey;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zzc()Lcom/google/android/gms/internal/play_billing/zzht;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzht;->zzi:Lcom/google/android/gms/internal/play_billing/zzht;

    if-ne v3, v4, :cond_51

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zze()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zzd()Z

    move-result v3

    if-nez v3, :cond_51

    .line 13
    instance-of v3, v1, Lcom/google/android/gms/internal/play_billing/zzfs;

    if-eqz v3, :cond_45

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfs;->zza()Lcom/google/android/gms/internal/play_billing/zzfv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzb()Lcom/google/android/gms/internal/play_billing/zzei;

    move-result-object v1

    .line 8
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzw(ILjava/lang/Object;)V

    goto :goto_9

    .line 9
    :cond_45
    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzey;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzw(ILjava/lang/Object;)V

    goto :goto_9

    .line 6
    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_59
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfi;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhi;->zzk(Lcom/google/android/gms/internal/play_billing/zzhu;)V

    return-void
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfi;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Z

    if-eqz v0, :cond_23

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzff;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:Lcom/google/android/gms/internal/play_billing/zzez;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzff;

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:Lcom/google/android/gms/internal/play_billing/zzez;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzez;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzff;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzff;->zzb:Lcom/google/android/gms/internal/play_billing/zzez;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzez;->zzi()Z

    move-result p1

    return p1
.end method
