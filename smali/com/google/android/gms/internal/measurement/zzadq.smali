###### Class com.google.android.gms.internal.measurement.zzadq (com.google.android.gms.internal.measurement.zzadq)
.class public final Lcom/google/android/gms/internal/measurement/zzadq;
.super Lcom/google/android/gms/internal/measurement/zzacd;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzadu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzadu;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzadq;->zza:Lcom/google/android/gms/internal/measurement/zzadu;

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/internal/measurement/zzacv;Lcom/google/android/gms/internal/measurement/zzadf;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzaeh;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadq;->zza:Lcom/google/android/gms/internal/measurement/zzadu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->zzck()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v0

    .line 3
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzafl;->zza()Lcom/google/android/gms/internal/measurement/zzafl;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzafl;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;

    move-result-object v1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzacw;->zza(Lcom/google/android/gms/internal/measurement/zzacv;)Lcom/google/android/gms/internal/measurement/zzacw;

    move-result-object p1

    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzafp;->zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzafo;Lcom/google/android/gms/internal/measurement/zzadf;)V

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzafp;->zzk(Ljava/lang/Object;)V
    :try_end_1e
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_8 .. :try_end_1e} :catch_25
    .catch Lcom/google/android/gms/internal/measurement/zzafy; {:try_start_8 .. :try_end_1e} :catch_23
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception p1

    goto :goto_27

    :catch_21
    move-exception p1

    goto :goto_37

    :catch_23
    move-exception p1

    goto :goto_4c

    :catch_25
    move-exception p1

    goto :goto_51

    .line 7
    :goto_27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/zzaeh;

    if-eqz p2, :cond_36

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    throw p1

    .line 9
    :cond_36
    throw p1

    .line 10
    :goto_37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/measurement/zzaeh;

    if-eqz p2, :cond_46

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    throw p1

    .line 15
    :cond_46
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 12
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 13
    :goto_4c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzafy;->zza()Lcom/google/android/gms/internal/measurement/zzaeh;

    move-result-object p1

    throw p1

    .line 6
    :goto_51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzaeh;->zzb()Z

    move-result p2

    if-eqz p2, :cond_5d

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 14
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/io/IOException;)V

    .line 15
    throw p2

    :cond_5d
    throw p1
.end method
