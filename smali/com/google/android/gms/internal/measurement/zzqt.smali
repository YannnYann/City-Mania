###### Class com.google.android.gms.internal.measurement.zzqt (com.google.android.gms.internal.measurement.zzqt)
.class public final Lcom/google/android/gms/internal/measurement/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static zza:Ljava/lang/Boolean;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzlk;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    const-string p3, ""

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zze:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsa;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrz;

    move-result-object p1

    const-string p3, "phenotype"

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/measurement/zzrz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x4

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "/"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".pb"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzrz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzrz;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzrz;->zzd()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzc:Landroid/net/Uri;

    return-void
.end method

.method private static zzf()Z
    .registers 4

    .line 1
    const-class v0, Landroid/os/Process;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzqt;->zza:Ljava/lang/Boolean;

    if-nez v1, :cond_36

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_17

    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zza:Ljava/lang/Boolean;

    goto :goto_36

    .line 4
    :cond_17
    :try_start_17
    const-string v1, "isIsolated"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zza:Ljava/lang/Boolean;
    :try_end_31
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_17 .. :try_end_31} :catch_32

    goto :goto_36

    .line 3
    :catch_32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zza:Ljava/lang/Boolean;

    .line 1
    :cond_36
    :goto_36
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqt;->zza:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzqs;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzky;->zzb(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1d

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqs;->zza(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqt;->zzf()Z

    move-result v1

    if-nez v1, :cond_253

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzrf;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzqn;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    .line 6
    sget v6, Lcom/google/android/gms/internal/measurement/zzlg;->zza:I

    const-string v6, "#"

    .line 7
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_50

    const-string v6, "@"

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    move-object v6, v4

    goto :goto_54

    .line 52
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string v1, "Invalid package name: "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_50
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6
    :goto_54
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzqn;->zzg(Lcom/google/android/gms/internal/measurement/zzabz;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_67

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    goto/16 :goto_1d8

    .line 43
    :cond_67
    :try_start_67
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zze()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v7

    if-nez v7, :cond_9d

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    const-string v4, "Unable to get GMS application info, using defaults."

    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v1, v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v3, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    :goto_97
    move-object v1, v3

    goto/16 :goto_1d8

    :catch_9a
    move-exception v0

    goto/16 :goto_1b3

    .line 17
    :cond_9d
    invoke-virtual {v5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :cond_a5
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zzb()Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzmz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zza()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zze:Ljava/lang/String;

    .line 19
    invoke-direct {v7, v8, v4, v9}, Lcom/google/android/gms/internal/measurement/zzmz;-><init>(Lcom/google/android/gms/internal/measurement/zzacr;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/net/Uri$Builder;

    .line 20
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "file"

    .line 21
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzmz;->zza()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 24
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 25
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5, v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 26
    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 25
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_141} :catch_9a

    .line 27
    :try_start_141
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzru;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzna;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqn;->zzf()Lcom/google/android/gms/internal/measurement/zznf;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zznf;->zza()Z

    move-result v1

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/zzna;-><init>(Z)V

    .line 29
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznd;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/4 v3, 0x5

    const/4 v5, 0x2

    invoke-direct {v1, v3, v5}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v3, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V
    :try_end_164
    .catch Ljava/io/FileNotFoundException; {:try_start_141 .. :try_end_164} :catch_18f
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_141 .. :try_end_164} :catch_16b
    .catchall {:try_start_141 .. :try_end_164} :catchall_169

    .line 32
    :try_start_164
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_9a

    goto/16 :goto_97

    :catchall_169
    move-exception v0

    goto :goto_1af

    :catch_16b
    move-exception v0

    :try_start_16c
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v3

    const-string v5, "Failed to parse snapshot from shared storage for %s"

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 31
    invoke-static {v1, v3, v0, v5, v7}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V
    :try_end_18b
    .catchall {:try_start_16c .. :try_end_18b} :catchall_169

    .line 32
    :goto_18b
    :try_start_18b
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_9a

    goto :goto_1d8

    .line 38
    :catch_18f
    :try_start_18f
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v1

    const-string v3, "Shared storage file not found for %s"

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 34
    invoke-static {v0, v1, v3, v5}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V
    :try_end_1ae
    .catchall {:try_start_18f .. :try_end_1ae} :catchall_169

    goto :goto_18b

    .line 32
    :goto_1af
    :try_start_1af
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 35
    throw v0
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b3} :catch_9a

    .line 48
    :goto_1b3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Failed to read shared file for %s"

    .line 37
    invoke-static {v3, v1, v0, v5, v4}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    new-instance v3, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zznv;-><init>(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)V

    goto/16 :goto_97

    .line 6
    :goto_1d8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqo;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    if-eqz v0, :cond_1f1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqo;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqo;->zzb()Lcom/google/android/gms/internal/measurement/zzqr;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqs;->zzc(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    return-object v0

    :cond_1f1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzqo;->zzb()Lcom/google/android/gms/internal/measurement/zzqr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()I

    move-result v0

    :try_start_1f9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzru;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzc:Landroid/net/Uri;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzss;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzss;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzqv;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzqr;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    .line 43
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/zzqs;->zza(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0
    :try_end_219
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_219} :catch_21a
    .catch Ljava/lang/RuntimeException; {:try_start_1f9 .. :try_end_219} :catch_21a

    goto :goto_252

    .line 9
    :catch_21a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unable to retrieve flag snapshot for %s, using defaults."

    .line 45
    invoke-static {v1, v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzqt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_243

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznd;->zza()Lcom/google/android/gms/internal/measurement/zznd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    .line 48
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqs;->zzc(Lcom/google/android/gms/internal/measurement/zznd;Lcom/google/android/gms/internal/measurement/zzqr;)Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    goto :goto_252

    .line 49
    :cond_243
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    .line 50
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqs;->zza(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    :goto_252
    return-object v0

    .line 51
    :cond_253
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqv;->zzi()Lcom/google/android/gms/internal/measurement/zzqv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzqr;

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzqr;-><init>(II)V

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqs;->zza(Lcom/google/android/gms/internal/measurement/zzqv;Lcom/google/android/gms/internal/measurement/zzqr;)Lcom/google/android/gms/internal/measurement/zzqs;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzd()Lcom/google/android/gms/internal/measurement/zzrf;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzrf;->zzb(ZLcom/google/android/gms/internal/measurement/zzabz;)Z

    move-result v0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzqv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzqq;-><init>(Lcom/google/android/gms/internal/measurement/zzqt;Lcom/google/android/gms/internal/measurement/zzqv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p1

    .line 2
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzh()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmj;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzqp;->zza:Lcom/google/android/gms/internal/measurement/zzqp;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p1

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/measurement/zzqv;)Ljava/lang/Void;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzse;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzi()Lcom/google/android/gms/internal/measurement/zzru;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzc:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzsv;->zzb(Lcom/google/android/gms/internal/measurement/zzafc;)Lcom/google/android/gms/internal/measurement/zzsv;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzro;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzsv;->zzc([Lcom/google/android/gms/internal/measurement/zzro;)Lcom/google/android/gms/internal/measurement/zzsv;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_20} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_37

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzb:Lcom/google/android/gms/internal/measurement/zzlk;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzg()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzqt;->zzd:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to update snapshot for %s flags may be stale."

    .line 4
    invoke-static {v1, v0, p1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Ljava/util/logging/Level;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_37
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzqq (com.google.android.gms.internal.measurement.zzqq)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzqt;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzqv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzqt;Lcom/google/android/gms/internal/measurement/zzqv;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqq;->zza:Lcom/google/android/gms/internal/measurement/zzqt;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqq;->zzb:Lcom/google/android/gms/internal/measurement/zzqv;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqq;->zza:Lcom/google/android/gms/internal/measurement/zzqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzqq;->zzb:Lcom/google/android/gms/internal/measurement/zzqv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzqt;->zze(Lcom/google/android/gms/internal/measurement/zzqv;)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
