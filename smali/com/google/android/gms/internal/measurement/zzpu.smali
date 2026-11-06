###### Class com.google.android.gms.internal.measurement.zzpu (com.google.android.gms.internal.measurement.zzpu)
.class public final Lcom/google/android/gms/internal/measurement/zzpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzvb;

.field private static final zzc:Ljava/lang/Object;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zztt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvb;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzb()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzvb;-><init>(Lcom/google/android/gms/internal/measurement/zzafc;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpu;->zzb:Lcom/google/android/gms/internal/measurement/zzvb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpu;->zzc:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpu;->zzd:Lcom/google/android/gms/internal/measurement/zztt;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zztr;->zzh()Lcom/google/android/gms/internal/measurement/zztq;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsa;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object v0

    const-string v1, "phenotype"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzrz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    const-string v1, "all_accounts.pb"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzrz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrz;->zzd()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zztq;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zztq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznu;->zzb()Lcom/google/android/gms/internal/measurement/zznu;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zztq;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zztq;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpu;->zzb:Lcom/google/android/gms/internal/measurement/zzvb;

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zztq;->zzc(Lcom/google/android/gms/internal/measurement/zztf;)Lcom/google/android/gms/internal/measurement/zztq;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zztq;->zzf(Z)Lcom/google/android/gms/internal/measurement/zztq;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zztq;->zzg()Lcom/google/android/gms/internal/measurement/zztr;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpu;->zzd:Lcom/google/android/gms/internal/measurement/zztt;

    if-nez v0, :cond_63

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzpu;->zzc:Ljava/lang/Object;

    .line 11
    monitor-enter v1

    :try_start_38
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpu;->zzd:Lcom/google/android/gms/internal/measurement/zztt;

    if-nez v0, :cond_5f

    new-instance v0, Lcom/google/android/gms/internal/measurement/zztu;

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zztu;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zztu;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/measurement/zztu;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzru;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zztu;->zzb(Lcom/google/android/gms/internal/measurement/zzru;)Lcom/google/android/gms/internal/measurement/zztu;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzui;->zza()Lcom/google/android/gms/internal/measurement/zzuw;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zztu;->zzc(Lcom/google/android/gms/internal/measurement/zzuw;)Lcom/google/android/gms/internal/measurement/zztu;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zztu;->zzd()Lcom/google/android/gms/internal/measurement/zztt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpu;->zzd:Lcom/google/android/gms/internal/measurement/zztt;

    goto :goto_5f

    :catchall_5d
    move-exception p0

    goto :goto_61

    .line 17
    :cond_5f
    :goto_5f
    monitor-exit v1

    goto :goto_63

    :goto_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_5d

    throw p0

    .line 18
    :cond_63
    :goto_63
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zztt;->zza(Lcom/google/android/gms/internal/measurement/zztr;)Lcom/google/android/gms/internal/measurement/zztp;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpt;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzpt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p0

    .line 20
    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/internal/measurement/zzut;->zzb(Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.android.gms.internal.measurement.zzpt (com.google.android.gms.internal.measurement.zzpt)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field private final synthetic zza:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/measurement/zznu;

    sget v0, Lcom/google/android/gms/internal/measurement/zzpu;->zza:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznr;->zzb()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zznr;)Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzco()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zznq;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zznq;->zza()Ljava/util/List;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zznq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zznq;

    .line 5
    :cond_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadu;->zzco()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zznt;

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zznq;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zznr;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zznt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zznr;)Lcom/google/android/gms/internal/measurement/zznt;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zznu;

    return-object p1
.end method
