###### Class com.google.android.gms.internal.measurement.zzaet (com.google.android.gms.internal.measurement.zzaet)
.class final Lcom/google/android/gms/internal/measurement/zzaet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.2.0"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzafa;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzafa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaet;->zzb:Lcom/google/android/gms/internal/measurement/zzafa;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaes;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzado;->zza()Lcom/google/android/gms/internal/measurement/zzado;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzafa;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaet;->zzb:Lcom/google/android/gms/internal/measurement/zzafa;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaes;-><init>([Lcom/google/android/gms/internal/measurement/zzafa;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaet;->zza:Lcom/google/android/gms/internal/measurement/zzafa;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;
    .registers 10

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zzafq;->zza:I

    const-class v0, Lcom/google/android/gms/internal/measurement/zzadu;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaet;->zza:Lcom/google/android/gms/internal/measurement/zzafa;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzafa;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzaez;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaez;->zza()Z

    move-result v0

    if-nez v0, :cond_41

    .line 5
    sget v0, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzafi;->zza()Lcom/google/android/gms/internal/measurement/zzafh;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaep;->zza()Lcom/google/android/gms/internal/measurement/zzaeo;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzafq;->zzB()Lcom/google/android/gms/internal/measurement/zzafz;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaez;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadi;->zza()Lcom/google/android/gms/internal/measurement/zzadg;

    move-result-object v0

    :goto_33
    move-object v6, v0

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_33

    .line 10
    :goto_37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaey;->zza()Lcom/google/android/gms/internal/measurement/zzaex;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzaff;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzaez;Lcom/google/android/gms/internal/measurement/zzafh;Lcom/google/android/gms/internal/measurement/zzaeo;Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadg;Lcom/google/android/gms/internal/measurement/zzaex;)Lcom/google/android/gms/internal/measurement/zzaff;

    move-result-object p1

    return-object p1

    .line 12
    :cond_41
    sget p1, Lcom/google/android/gms/internal/measurement/zzacf;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzafq;->zzB()Lcom/google/android/gms/internal/measurement/zzafz;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadi;->zza()Lcom/google/android/gms/internal/measurement/zzadg;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaez;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzafg;->zzh(Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadg;Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzafg;

    move-result-object p1

    return-object p1
.end method
