###### Class com.android.billingclient.api.zzbf (com.android.billingclient.api.zzbf)
.class public final Lcom/android/billingclient/api/zzbf;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field public final zzb:Lcom/android/billingclient/api/BillingClientStateListener;

.field public final zzc:Lcom/google/android/gms/internal/play_billing/zzbi;

.field public final zzd:Lcom/google/android/gms/internal/play_billing/zzbi;

.field public final zze:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;ILcom/android/billingclient/api/zzbp;)V
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzbl;

    move-result-object p4

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzc(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbi;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/zzbf;->zzc:Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzbl;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzc(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbi;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzbf;->zzd:Lcom/google/android/gms/internal/play_billing/zzbi;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbf;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    iput p3, p0, Lcom/android/billingclient/api/zzbf;->zze:I

    return-void
.end method

.method public static synthetic zza(Lcom/android/billingclient/api/zzbf;)Ljava/lang/Object;
    .registers 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzw(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_17

    .line 57
    monitor-exit v2

    goto/16 :goto_1cd

    :catchall_14
    move-exception v0

    goto/16 :goto_1d1

    .line 2
    :cond_17
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v3, v6, :cond_21

    move v3, v6

    goto :goto_22

    :cond_21
    move v3, v7

    .line 3
    :goto_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_14

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    new-instance v2, Landroid/os/Bundle;

    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v8, "accountName"

    .line 6
    invoke-virtual {v2, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzx(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzy(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 8
    invoke-static {v2, v8, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    goto :goto_48

    :cond_47
    move-object v2, v4

    :goto_48
    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzw(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 9
    :try_start_4f
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzam;

    move-result-object v0

    .line 10
    monitor-exit v9
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_1ce

    if-nez v0, :cond_69

    iget-object v0, v1, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 11
    invoke-static {v0, v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzad(Lcom/android/billingclient/api/BillingClientImpl;I)V

    iget v2, v1, Lcom/android/billingclient/api/zzbf;->zze:I

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 12
    sget-object v5, Lcom/android/billingclient/api/zzcj;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v5, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzab(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 13
    invoke-virtual {v1, v5}, Lcom/android/billingclient/api/zzbf;->zzg(Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_1cd

    :cond_69
    iget-object v9, v1, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v10

    .line 14
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x19

    move v13, v5

    move v12, v11

    :goto_77
    if-lt v12, v5, :cond_a8

    if-nez v2, :cond_85

    :try_start_7b
    const-string v13, "subs"

    .line 15
    invoke-interface {v0, v12, v10, v13}, Lcom/google/android/gms/internal/play_billing/zzam;->zzw(ILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto :goto_8b

    :catch_82
    move-exception v0

    goto/16 :goto_18e

    .line 22
    :cond_85
    const-string v13, "subs"

    .line 16
    invoke-interface {v0, v12, v10, v13, v2}, Lcom/google/android/gms/internal/play_billing/zzam;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v13

    :goto_8b
    if-nez v13, :cond_a4

    .line 15
    const-string v14, "BillingClient"

    new-instance v15, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "highestLevelSupportedForSubs: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    :cond_a4
    add-int/lit8 v12, v12, -0x1

    const/4 v6, 0x1

    goto :goto_77

    :cond_a8
    move v12, v7

    :goto_a9
    const/4 v6, 0x5

    if-lt v12, v6, :cond_ae

    const/4 v6, 0x1

    goto :goto_af

    :cond_ae
    move v6, v7

    .line 18
    :goto_af
    invoke-static {v9, v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzV(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    if-lt v12, v5, :cond_b6

    const/4 v6, 0x1

    goto :goto_b7

    :cond_b6
    move v6, v7

    .line 19
    :goto_b7
    invoke-static {v9, v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzW(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    if-ge v12, v5, :cond_c5

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzie;->zzi:Lcom/google/android/gms/internal/play_billing/zzie;

    const-string v6, "BillingClient"

    const-string v12, "In-app billing API does not support subscription on this device."

    .line 20
    invoke-static {v6, v12}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    :goto_c5
    if-lt v11, v5, :cond_fb

    if-nez v2, :cond_d1

    const-string v6, "inapp"

    .line 21
    invoke-interface {v0, v11, v10, v6}, Lcom/google/android/gms/internal/play_billing/zzam;->zzw(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    :goto_cf
    move v13, v6

    goto :goto_d8

    .line 52
    :cond_d1
    const-string v6, "inapp"

    .line 22
    invoke-interface {v0, v11, v10, v6, v2}, Lcom/google/android/gms/internal/play_billing/zzam;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    goto :goto_cf

    :goto_d8
    if-nez v13, :cond_f8

    .line 23
    invoke-static {v9, v11}, Lcom/android/billingclient/api/BillingClientImpl;->zzT(Lcom/android/billingclient/api/BillingClientImpl;I)V

    const-string v0, "BillingClient"

    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHighestLevelSupportedForInApp: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fb

    :cond_f8
    add-int/lit8 v11, v11, -0x1

    goto :goto_c5

    :cond_fb
    :goto_fb
    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    .line 25
    invoke-static {v9, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzac(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    if-ge v0, v5, :cond_111

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzie;->zzJ:Lcom/google/android/gms/internal/play_billing/zzie;

    const-string v0, "BillingClient"

    const-string v2, "In-app billing API version 3 is not supported on this device."

    .line 26
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_111
    invoke-static {v9, v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzae(Lcom/android/billingclient/api/BillingClientImpl;I)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_114} :catch_82

    if-eqz v13, :cond_120

    .line 55
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzb:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1, v0, v8, v4, v3}, Lcom/android/billingclient/api/zzbf;->zzf(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/zzbf;->zzg(Lcom/android/billingclient/api/BillingResult;)V

    goto/16 :goto_1cd

    .line 38
    :cond_120
    :try_start_120
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/zzbf;->zze(Z)Ljava/lang/Long;

    move-result-object v0

    if-eqz v3, :cond_15a

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzib;->zzc()Lcom/google/android/gms/internal/play_billing/zzhz;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhz;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzhz;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjv;->zzc()Lcom/google/android/gms/internal/play_billing/zzjt;

    move-result-object v3

    iget v5, v1, Lcom/android/billingclient/api/zzbf;->zze:I

    if-lez v5, :cond_138

    const/4 v6, 0x1

    goto :goto_139

    :cond_138
    move v6, v7

    .line 41
    :goto_139
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/play_billing/zzjt;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 42
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzjt;

    if-eqz v0, :cond_14b

    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 44
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzjt;

    goto :goto_14b

    :catchall_149
    move-exception v0

    goto :goto_181

    :cond_14b
    :goto_14b
    iget-object v0, v1, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhz;->zzn(Lcom/google/android/gms/internal/play_billing/zzjt;)Lcom/google/android/gms/internal/play_billing/zzhz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzib;

    .line 46
    invoke-static {v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaa(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzib;)V

    goto :goto_188

    .line 47
    :cond_15a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjo;->zzc()Lcom/google/android/gms/internal/play_billing/zzjm;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzig;->zzc()Lcom/google/android/gms/internal/play_billing/zzic;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/play_billing/zzic;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 49
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjm;->zza(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzjm;

    if-eqz v0, :cond_171

    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 51
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjm;->zzl(J)Lcom/google/android/gms/internal/play_billing/zzjm;

    :cond_171
    iget-object v0, v1, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-interface {v0, v2}, Lcom/android/billingclient/api/zzch;->zzj(Lcom/google/android/gms/internal/play_billing/zzjo;)V
    :try_end_180
    .catchall {:try_start_120 .. :try_end_180} :catchall_149

    goto :goto_188

    .line 37
    :goto_181
    const-string v2, "BillingClient"

    const-string v3, "Unable to log."

    .line 53
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_188
    sget-object v0, Lcom/android/billingclient/api/zzcj;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/zzbf;->zzg(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_1cd

    .line 10
    :goto_18e
    const-string v2, "BillingClient"

    const-string v5, "Exception while checking if billing is supported; try to reconnect"

    .line 28
    invoke-static {v2, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_19c

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaM:Lcom/google/android/gms/internal/play_billing/zzie;

    goto :goto_1ac

    .line 30
    :cond_19c
    instance-of v2, v0, Landroid/os/RemoteException;

    if-eqz v2, :cond_1a3

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaL:Lcom/google/android/gms/internal/play_billing/zzie;

    goto :goto_1ac

    .line 31
    :cond_1a3
    instance-of v2, v0, Ljava/lang/SecurityException;

    if-eqz v2, :cond_1aa

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaN:Lcom/google/android/gms/internal/play_billing/zzie;

    goto :goto_1ac

    :cond_1aa
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzP:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 29
    :goto_1ac
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzie;->zzP:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 33
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1ba

    :cond_1b9
    move-object v5, v4

    :goto_1ba
    iget-object v6, v1, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 34
    invoke-static {v6, v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzad(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 35
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzl(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v6

    .line 36
    invoke-virtual {v1, v6, v2, v5, v3}, Lcom/android/billingclient/api/zzbf;->zzf(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Z)V

    .line 37
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzl(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/zzbf;->zzg(Lcom/android/billingclient/api/BillingResult;)V

    :goto_1cd
    return-object v4

    :catchall_1ce
    move-exception v0

    .line 10
    :try_start_1cf
    monitor-exit v9
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_1ce

    throw v0

    .line 3
    :goto_1d1
    :try_start_1d1
    monitor-exit v2
    :try_end_1d2
    .catchall {:try_start_1d1 .. :try_end_1d2} :catchall_14

    throw v0
.end method

.method public static synthetic zzb(Lcom/android/billingclient/api/zzbf;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzad(Lcom/android/billingclient/api/BillingClientImpl;I)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    sget-object v2, Lcom/android/billingclient/api/zzcj;->zzk:Lcom/android/billingclient/api/BillingResult;

    iget v3, p0, Lcom/android/billingclient/api/zzbf;->zze:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzab(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/billingclient/api/zzbf;->zzg(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 7

    .line 1
    const-string p1, "BillingClient"

    const-string v0, "Billing service died."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_8
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzai(Lcom/android/billingclient/api/BillingClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzc()Lcom/google/android/gms/internal/play_billing/zzhv;

    move-result-object v1

    const/4 v2, 0x6

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzig;->zzc()Lcom/google/android/gms/internal/play_billing/zzic;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzbf:Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzic;->zzn(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzl(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjv;->zzc()Lcom/google/android/gms/internal/play_billing/zzjt;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbf;->zze:I

    if-lez v3, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    move v4, p1

    .line 9
    :goto_33
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzjt;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzo(Lcom/google/android/gms/internal/play_billing/zzjt;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 13
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    goto :goto_5b

    :catchall_46
    move-exception v0

    goto :goto_54

    .line 20
    :cond_48
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzij;->zzd()Lcom/google/android/gms/internal/play_billing/zzij;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzch;->zzi(Lcom/google/android/gms/internal/play_billing/zzij;)V
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_46

    goto :goto_5b

    :goto_54
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_5b
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzw(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 15
    :try_start_62
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_88

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-nez v2, :cond_70

    goto :goto_88

    .line 17
    :cond_70
    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzad(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 18
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaf(Lcom/android/billingclient/api/BillingClientImpl;)V

    .line 19
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_86

    :try_start_77
    iget-object p1, p0, Lcom/android/billingclient/api/zzbf;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 20
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_7d

    goto :goto_89

    :catchall_7d
    move-exception p1

    .line 19
    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingServiceDisconnected."

    .line 21
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_86
    move-exception p1

    goto :goto_8a

    .line 16
    :cond_88
    :goto_88
    :try_start_88
    monitor-exit v1

    :goto_89
    return-void

    .line 19
    :goto_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_86

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 1
    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzw(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2
    :try_start_e
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    .line 11
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    move-object p1, v0

    goto :goto_4b

    .line 3
    :cond_1a
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzal;->zzs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzam;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzU(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzam;)V

    .line 4
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_17

    new-instance v2, Lcom/android/billingclient/api/zzbd;

    invoke-direct {v2, p0}, Lcom/android/billingclient/api/zzbd;-><init>(Lcom/android/billingclient/api/zzbf;)V

    new-instance v5, Lcom/android/billingclient/api/zzbe;

    invoke-direct {v5, p0}, Lcom/android/billingclient/api/zzbe;-><init>(Lcom/android/billingclient/api/zzbf;)V

    .line 5
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzf(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Handler;

    move-result-object v6

    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzF()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    .line 7
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzG(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p2, :cond_4a

    iget p2, p0, Lcom/android/billingclient/api/zzbf;->zze:I

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 9
    invoke-static {p1, v1, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzab(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/zzbf;->zzg(Lcom/android/billingclient/api/BillingResult;)V

    :cond_4a
    return-void

    .line 4
    :goto_4b
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_17

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7

    .line 1
    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_8
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzai(Lcom/android/billingclient/api/BillingClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzc()Lcom/google/android/gms/internal/play_billing/zzhv;

    move-result-object v1

    const/4 v2, 0x6

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzig;->zzc()Lcom/google/android/gms/internal/play_billing/zzic;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzbe:Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzic;->zzn(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzl(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjv;->zzc()Lcom/google/android/gms/internal/play_billing/zzjt;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbf;->zze:I

    if-lez v3, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    move v4, p1

    .line 9
    :goto_33
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzjt;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzo(Lcom/google/android/gms/internal/play_billing/zzjt;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 13
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    goto :goto_5b

    :catchall_46
    move-exception v0

    goto :goto_54

    .line 19
    :cond_48
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjs;->zzd()Lcom/google/android/gms/internal/play_billing/zzjs;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzch;->zzk(Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_53
    .catchall {:try_start_8 .. :try_end_53} :catchall_46

    goto :goto_5b

    :goto_54
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_5b
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zzd:Lcom/google/android/gms/internal/play_billing/zzbi;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzd()Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zze()Lcom/google/android/gms/internal/play_billing/zzbi;

    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzw(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 16
    :try_start_6a
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_75

    .line 21
    monitor-exit v1

    goto :goto_7e

    :catchall_73
    move-exception p1

    goto :goto_88

    .line 17
    :cond_75
    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzad(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 18
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_73

    :try_start_79
    iget-object p1, p0, Lcom/android/billingclient/api/zzbf;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 19
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7f

    :goto_7e
    return-void

    :catchall_7f
    move-exception p1

    .line 18
    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingServiceDisconnected."

    .line 20
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 18
    :goto_88
    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_73

    throw p1
.end method

.method public final zzc()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zzc:Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzd()Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zze()Lcom/google/android/gms/internal/play_billing/zzbi;

    return-void
.end method

.method public final zzd()Z
    .registers 2

    .line 0
    iget v0, p0, Lcom/android/billingclient/api/zzbf;->zze:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zze(Z)Ljava/lang/Long;
    .registers 4

    if-eqz p1, :cond_18

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzbf;->zzc:Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzf()Lcom/google/android/gms/internal/play_billing/zzbi;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_18
    iget-object p1, p0, Lcom/android/billingclient/api/zzbf;->zzd:Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzf()Lcom/google/android/gms/internal/play_billing/zzbi;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzf(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzig;->zzc()Lcom/google/android/gms/internal/play_billing/zzic;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzic;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzic;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzic;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzn(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzic;

    if-eqz p3, :cond_1d

    .line 5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/play_billing/zzic;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzic;

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_77

    .line 6
    :cond_1d
    :goto_1d
    invoke-virtual {p0, p4}, Lcom/android/billingclient/api/zzbf;->zze(Z)Ljava/lang/Long;

    move-result-object p1

    if-eqz p4, :cond_57

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjv;->zzc()Lcom/google/android/gms/internal/play_billing/zzjt;

    move-result-object p2

    iget p3, p0, Lcom/android/billingclient/api/zzbf;->zze:I

    if-lez p3, :cond_2d

    const/4 p4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p4, 0x0

    .line 8
    :goto_2e
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/play_billing/zzjt;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzjt;

    if-eqz p1, :cond_3d

    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 11
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzjt;

    :cond_3d
    iget-object p1, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzc()Lcom/google/android/gms/internal/play_billing/zzhv;

    move-result-object p3

    .line 13
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzl(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzhv;

    const/4 p4, 0x6

    .line 14
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 15
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzo(Lcom/google/android/gms/internal/play_billing/zzjt;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 17
    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzZ(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzhx;)V

    return-void

    .line 18
    :cond_57
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjo;->zzc()Lcom/google/android/gms/internal/play_billing/zzjm;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzjm;->zza(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzjm;

    if-eqz p1, :cond_67

    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 20
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzjm;->zzl(J)Lcom/google/android/gms/internal/play_billing/zzjm;

    :cond_67
    iget-object p1, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzch;

    move-result-object p1

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzch;->zzj(Lcom/google/android/gms/internal/play_billing/zzjo;)V
    :try_end_76
    .catchall {:try_start_0 .. :try_end_76} :catchall_1b

    return-void

    :goto_77
    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 22
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzg(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzw(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 2
    monitor-exit v1

    return-void

    :catchall_10
    move-exception p1

    goto :goto_22

    .line 3
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_10

    :try_start_13
    iget-object v0, p0, Lcom/android/billingclient/api/zzbf;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 4
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception p1

    .line 3
    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingSetupFinished."

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :goto_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_10

    throw p1
.end method

###### Class com.android.billingclient.api.zzbd (com.android.billingclient.api.zzbd)
.class public final synthetic Lcom/android/billingclient/api/zzbd;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzbf;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbf;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbd;->zza:Lcom/android/billingclient/api/zzbf;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbd;->zza:Lcom/android/billingclient/api/zzbf;

    invoke-static {v0}, Lcom/android/billingclient/api/zzbf;->zza(Lcom/android/billingclient/api/zzbf;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.android.billingclient.api.zzbe (com.android.billingclient.api.zzbe)
.class public final synthetic Lcom/android/billingclient/api/zzbe;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzbf;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbf;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbe;->zza:Lcom/android/billingclient/api/zzbf;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/billingclient/api/zzbe;->zza:Lcom/android/billingclient/api/zzbf;

    invoke-static {v0}, Lcom/android/billingclient/api/zzbf;->zzb(Lcom/android/billingclient/api/zzbf;)V

    return-void
.end method
