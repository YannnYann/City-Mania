###### Class com.google.android.gms.internal.consent_sdk.zzy (com.google.android.gms.internal.consent_sdk.zzy)
.class final Lcom/google/android/gms/internal/consent_sdk/zzy;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzcn;

.field private final zzc:Lcom/google/android/gms/internal/consent_sdk/zzcr;

.field private zzd:I

.field private zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zzcn;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    sget-object v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->UNKNOWN:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzab;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzg;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcn;

    iget v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzg:I

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v2, v3, :cond_c

    move v3, v4

    goto :goto_d

    :cond_c
    move v3, v0

    :goto_d
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzh(Z)V

    add-int/lit8 v3, v2, -0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_da

    const/4 v2, 0x3

    const-string v7, "Invalid response from server."

    const/4 v8, 0x2

    packed-switch v3, :pswitch_data_dc

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 14
    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_28
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzc:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Publisher misconfiguration: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1
    :pswitch_3a
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzc:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid response from server: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_4c
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    goto :goto_54

    .line 6
    :pswitch_4f
    iput v8, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    goto :goto_54

    :pswitch_52
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    .line 4
    :goto_54
    iget v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzh:I

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_d9

    if-eq v3, v4, :cond_69

    if-ne v3, v8, :cond_63

    .line 6
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    goto :goto_6d

    .line 5
    :cond_63
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 13
    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw v0

    .line 7
    :cond_69
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    iput-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    :goto_6d
    iget-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zza:Ljava/lang/String;

    if-nez v2, :cond_73

    move-object v3, v6

    goto :goto_7a

    .line 12
    :cond_73
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbs;

    iget-object v7, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzb:Ljava/lang/String;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_7a
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    iget-object v7, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzf:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzk(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    move-result-object v2

    new-instance v7, Ljava/util/HashSet;

    iget-object v9, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zzd:Ljava/util/List;

    .line 9
    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzj(Ljava/util/Set;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzcn;->zze:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_95
    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;

    .line 11
    iget v7, v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zzb:I

    add-int/lit8 v9, v7, -0x1

    if-eqz v7, :cond_ce

    if-eqz v9, :cond_b9

    if-eq v9, v4, :cond_b6

    if-ne v9, v8, :cond_b0

    .line 12
    const-string v7, "clear"

    goto :goto_ba

    .line 6
    :cond_b0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    invoke-direct {v0, v6, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_b6
    const-string v7, "write"

    goto :goto_ba

    :cond_b9
    move-object v7, v6

    :goto_ba
    if-eqz v7, :cond_95

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zza(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zze;

    move-result-object v9

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzao;

    move-result-object v10

    new-array v11, v4, [Lcom/google/android/gms/internal/consent_sdk/zzd;

    aput-object v10, v11, v0

    invoke-virtual {v9, v7, v2, v11}, Lcom/google/android/gms/internal/consent_sdk/zze;->zzb(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/zzd;)V

    goto :goto_95

    .line 11
    :cond_ce
    throw v6

    .line 12
    :cond_cf
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzab;

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:I

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zze:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/consent_sdk/zzab;-><init>(ILcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;Lcom/google/android/gms/internal/consent_sdk/zzbs;Lcom/google/android/gms/internal/consent_sdk/zzaa;)V

    return-object v0

    .line 5
    :cond_d9
    throw v6

    .line 2
    :cond_da
    throw v6

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_3a
        :pswitch_28
    .end packed-switch
.end method
