###### Class com.google.android.gms.internal.measurement.zzxv (com.google.android.gms.internal.measurement.zzxv)
.class final Lcom/google/android/gms/internal/measurement/zzxv;
.super Lcom/google/android/gms/internal/measurement/zzyl;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .registers 4

    .line 1
    const-string p1, "group_by"

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/zzyk;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyl;->zzd()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_25
    const/16 v0, 0x2c

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyl;->zzd()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5d

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyk;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    return-void
.end method
