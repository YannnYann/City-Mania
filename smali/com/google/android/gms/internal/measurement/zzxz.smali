###### Class com.google.android.gms.internal.measurement.zzxz (com.google.android.gms.internal.measurement.zzxz)
.class public abstract Lcom/google/android/gms/internal/measurement/zzxz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzyi;
.implements Lcom/google/android/gms/internal/measurement/zzzd;


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/util/logging/Level;

.field private final zzc:J

.field private zzd:Lcom/google/android/gms/internal/measurement/zzxy;

.field private zze:Lcom/google/android/gms/internal/measurement/zzyc;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzyq;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzaaf;

.field private zzh:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxz;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Z)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzk()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zze:Lcom/google/android/gms/internal/measurement/zzyc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzf:Lcom/google/android/gms/internal/measurement/zzyq;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzg:Lcom/google/android/gms/internal/measurement/zzaaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzh:[Ljava/lang/Object;

    const-string p2, "level"

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzb:Ljava/util/logging/Level;

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzc:J

    return-void
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/measurement/zzabn;
.end method

.method public zzb(Lcom/google/android/gms/internal/measurement/zzyd;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    const/4 v1, 0x1

    if-eqz v0, :cond_5a

    if-eqz p1, :cond_29

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzc:J

    invoke-static {v0, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzxn;->zza(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzyd;J)Lcom/google/android/gms/internal/measurement/zzyq;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    .line 2
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/zzxk;->zza(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzyd;)Lcom/google/android/gms/internal/measurement/zzyq;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzyq;->zzc(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyq;)Lcom/google/android/gms/internal/measurement/zzyq;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    .line 3
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/measurement/zzyt;->zza(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzyd;)Lcom/google/android/gms/internal/measurement/zzyq;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzyq;->zzc(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyq;)Lcom/google/android/gms/internal/measurement/zzyq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzf:Lcom/google/android/gms/internal/measurement/zzyq;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    if-ne p1, v0, :cond_29

    const/4 p1, 0x0

    return p1

    :cond_29
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->zzi:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzxy;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyv;

    if-eqz p1, :cond_5a

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v2, :cond_3c

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzxy;->zzf(Lcom/google/android/gms/internal/measurement/zzyl;)V

    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzxx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-class v4, Lcom/google/android/gms/internal/measurement/zzxz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyv;->zza()I

    move-result v5

    .line 7
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/measurement/zzabq;->zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-direct {v0, v2, p1, v4}, Lcom/google/android/gms/internal/measurement/zzyg;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/measurement/zzyv;[Ljava/lang/StackTraceElement;)V

    .line 8
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzm(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_5a
    return v1
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/measurement/zzxi;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/measurement/zzyi;
.end method

.method public final zze()Ljava/util/logging/Level;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzb:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final zzf()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzc:J

    return-wide v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzyc;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zze:Lcom/google/android/gms/internal/measurement/zzyc;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot request log site information prior to postProcess()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/measurement/zzaaf;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzg:Lcom/google/android/gms/internal/measurement/zzaaf;

    return-object v0
.end method

.method public final zzi()[Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzg:Lcom/google/android/gms/internal/measurement/zzaaf;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "cannot get arguments unless a template context exists"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzabr;->zzc(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzh:[Ljava/lang/Object;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get arguments before calling log()"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzj()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzg:Lcom/google/android/gms/internal/measurement/zzaaf;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-string v2, "cannot get literal argument if a template context exists"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->zzc(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzh:[Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 3
    aget-object v0, v0, v1

    return-object v0

    .line 1
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot get literal argument before calling log()"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v0, :cond_14

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzxx;->zzg:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzxy;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/measurement/zzzj;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzj;->zzg()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzxy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzxy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzxy;->zze(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/measurement/zzyi;
    .registers 11

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzyc;->zza:Lcom/google/android/gms/internal/measurement/zzyc;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyb;

    const/16 v3, 0x2c

    const/4 v5, 0x0

    const-string v1, "com/google/android/libraries/phenotype/client/Phlogger"

    const-string v2, "logInternal"

    const-string v4, "Phlogger.java"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzyb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zze:Lcom/google/android/gms/internal/measurement/zzyc;

    if-nez p1, :cond_16

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zze:Lcom/google/android/gms/internal/measurement/zzyc;

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzd()Lcom/google/android/gms/internal/measurement/zzyi;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/measurement/zzyi;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "metadata key"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzxz;->zzm(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzd()Lcom/google/android/gms/internal/measurement/zzyi;

    move-result-object p1

    return-object p1
.end method

.method public final zzp(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zze:Lcom/google/android/gms/internal/measurement/zzyc;

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzb()Lcom/google/android/gms/internal/measurement/zzaac;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/measurement/zzxz;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaac;->zzb(Ljava/lang/Class;I)Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zze:Lcom/google/android/gms/internal/measurement/zzyc;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zze:Lcom/google/android/gms/internal/measurement/zzyc;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzyc;->zza:Lcom/google/android/gms/internal/measurement/zzyc;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_50

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzxy;->zza()I

    move-result v4

    if-lez v4, :cond_51

    const-string v4, "logSiteKey"

    .line 4
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result v4

    move v5, v3

    :goto_2c
    if-ge v5, v4, :cond_51

    .line 5
    sget-object v6, Lcom/google/android/gms/internal/measurement/zzxx;->zzf:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 6
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/measurement/zzyj;

    if-eqz v7, :cond_49

    .line 7
    check-cast v6, Lcom/google/android/gms/internal/measurement/zzyj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzyj;->zzb()Lcom/google/android/gms/internal/measurement/zzyd;

    move-result-object v0

    goto :goto_4d

    .line 8
    :cond_49
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/measurement/zzyu;->zza(Lcom/google/android/gms/internal/measurement/zzyd;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzyd;

    move-result-object v0

    :cond_4d
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_50
    const/4 v0, 0x0

    .line 9
    :cond_51
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzb(Lcom/google/android/gms/internal/measurement/zzyd;)Z

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzf:Lcom/google/android/gms/internal/measurement/zzyq;

    if-eqz v4, :cond_75

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    .line 10
    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/measurement/zzyp;->zza(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)I

    move-result v0

    if-eqz v2, :cond_70

    if-lez v0, :cond_70

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzd:Lcom/google/android/gms/internal/measurement/zzxy;

    if-eqz v4, :cond_70

    .line 11
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzxx;->zze:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzxy;->zze(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_70
    if-ltz v0, :cond_73

    goto :goto_74

    :cond_73
    move v1, v3

    :goto_74
    and-int/2addr v2, v1

    :cond_75
    if-eqz v2, :cond_c7

    array-length v0, p2

    .line 12
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzh:[Ljava/lang/Object;

    .line 13
    :goto_7e
    array-length v0, p2

    if-ge v3, v0, :cond_92

    .line 14
    aget-object v0, p2, v3

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzxu;

    if-eqz v1, :cond_8f

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zza()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v3

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_92
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzxz;->zza:Ljava/lang/String;

    if-eq p1, p2, :cond_a1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzaaf;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zza()Lcom/google/android/gms/internal/measurement/zzabn;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaaf;-><init>(Lcom/google/android/gms/internal/measurement/zzabn;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->zzg:Lcom/google/android/gms/internal/measurement/zzaaf;

    .line 17
    :cond_a1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzi()Lcom/google/android/gms/internal/measurement/zzabe;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabe;->zzc()Z

    move-result p2

    if-nez p2, :cond_c0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object p2

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->zzh:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzabe;

    if-eqz p2, :cond_bd

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzabe;->zzd(Lcom/google/android/gms/internal/measurement/zzabe;)Lcom/google/android/gms/internal/measurement/zzabe;

    move-result-object p1

    .line 21
    :cond_bd
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzxz;->zzm(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_c0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzc()Lcom/google/android/gms/internal/measurement/zzxi;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzxi;->zzc(Lcom/google/android/gms/internal/measurement/zzzd;)V

    :cond_c7
    return-void
.end method
