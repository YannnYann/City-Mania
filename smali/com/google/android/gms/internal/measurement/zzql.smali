###### Class com.google.android.gms.internal.measurement.zzql (com.google.android.gms.internal.measurement.zzql)
.class public final Lcom/google/android/gms/internal/measurement/zzql;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field static volatile zza:Lcom/google/android/gms/internal/measurement/zzqj;

.field private static volatile zzb:Lcom/google/android/gms/internal/measurement/zzqk;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzqk;Lcom/google/android/gms/internal/measurement/zzqj;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x21
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzql;->zzb:Lcom/google/android/gms/internal/measurement/zzqk;

    if-nez v0, :cond_47

    const-class v0, Lcom/google/android/gms/internal/measurement/zzql;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzql;->zzb:Lcom/google/android/gms/internal/measurement/zzqk;

    if-nez v1, :cond_43

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzql;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzql;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.gms.phenotype.UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3}, Lcom/android/billingclient/api/zzr$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_3f

    :catchall_2e
    move-exception p0

    goto :goto_45

    .line 5
    :cond_30
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzql;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzql;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.gms.phenotype.UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3
    :cond_3f
    :goto_3f
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzql;->zzb:Lcom/google/android/gms/internal/measurement/zzqk;

    sput-object p2, Lcom/google/android/gms/internal/measurement/zzql;->zza:Lcom/google/android/gms/internal/measurement/zzqj;

    .line 5
    :cond_43
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_2e

    throw p0

    :cond_47
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const-string p1, "com.google.android.gms.phenotype.PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string p2, "../"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "PhUpdateBroadcastRecv"

    if-nez p2, :cond_2a

    const-string p2, "/.."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_2a

    .line 5
    :cond_1c
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzql;->zzb:Lcom/google/android/gms/internal/measurement/zzqk;

    if-nez p2, :cond_26

    const-string p1, "No callback registered for P/H UPDATE broadcast. Exiting."

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_26
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/zzqk;->zza(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x44

    .line 5
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Got an invalid config package for P/H that includes \'..\': "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Exiting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
