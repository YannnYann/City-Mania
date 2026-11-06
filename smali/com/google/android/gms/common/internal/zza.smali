###### Class com.google.android.gms.common.internal.zza (com.google.android.gms.common.internal.zza)
.class public abstract Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzc;
.source "com.google.android.gms:play-services-basement@@18.12.0"


# instance fields
.field public final zza:I

.field public final zzb:Landroid/os/Bundle;

.field final zzc:I

.field final synthetic zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    iput p4, p0, Lcom/google/android/gms/common/internal/zza;->zzc:I

    return-void
.end method


# virtual methods
.method public abstract zza()Z
.end method

.method public abstract zzb(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;)V
    .registers 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    iget p1, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_20

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zza;->zza()Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v2, p0, Lcom/google/android/gms/common/internal/zza;->zzc:I

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(ILandroid/os/IInterface;I)Z

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1f
    return-void

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zza;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v3, p0, Lcom/google/android/gms/common/internal/zza;->zzc:I

    .line 5
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(ILandroid/os/IInterface;I)Z

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    if-eqz v3, :cond_34

    const-string v4, "pendingIntent"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    goto :goto_35

    :cond_34
    move-object v3, v1

    :goto_35
    if-eq p1, v0, :cond_3f

    const/16 v0, 0x15

    if-ne p1, v0, :cond_3d

    move p1, v0

    goto :goto_3f

    :cond_3d
    move-object v0, v1

    goto :goto_47

    .line 7
    :cond_3f
    :goto_3f
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_47
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, p1, v3, v1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
