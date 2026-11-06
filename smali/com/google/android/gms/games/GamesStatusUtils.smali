###### Class com.google.android.gms.games.GamesStatusUtils (com.google.android.gms.games.GamesStatusUtils)
.class public final Lcom/google/android/gms/games/GamesStatusUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V
    .registers 3

    if-eqz p0, :cond_f

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_f
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/games/zzj;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_158

    const/4 v1, 0x4

    if-eq v0, v1, :cond_155

    const/4 v1, 0x5

    if-eq v0, v1, :cond_152

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14c

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_149

    const/16 v1, 0x5dd

    if-eq v0, v1, :cond_146

    sparse-switch v0, :sswitch_data_19c

    packed-switch v0, :pswitch_data_1fe

    packed-switch v0, :pswitch_data_210

    packed-switch v0, :pswitch_data_21a

    packed-switch v0, :pswitch_data_226

    packed-switch v0, :pswitch_data_238

    packed-switch v0, :pswitch_data_246

    packed-switch v0, :pswitch_data_25a

    packed-switch v0, :pswitch_data_26e

    move v1, v0

    goto/16 :goto_160

    :pswitch_43
    const/16 v1, 0x67f5

    goto/16 :goto_160

    :pswitch_47
    const/16 v1, 0x67f4

    goto/16 :goto_160

    :pswitch_4b
    const/16 v1, 0x67f3

    goto/16 :goto_160

    :pswitch_4f
    const/16 v1, 0x67f2

    goto/16 :goto_160

    :pswitch_53
    const/16 v1, 0x67ef

    goto/16 :goto_160

    :pswitch_57
    const/16 v1, 0x67ee

    goto/16 :goto_160

    :pswitch_5b
    const/16 v1, 0x67ed

    goto/16 :goto_160

    :pswitch_5f
    const/16 v1, 0x67ec

    goto/16 :goto_160

    :pswitch_63
    const/16 v1, 0x67eb

    goto/16 :goto_160

    :pswitch_67
    const/16 v1, 0x67ea

    goto/16 :goto_160

    :pswitch_6b
    const/16 v1, 0x67e9

    goto/16 :goto_160

    :pswitch_6f
    const/16 v1, 0x67e8

    goto/16 :goto_160

    :pswitch_73
    const/16 v1, 0x67e5

    goto/16 :goto_160

    :pswitch_77
    const/16 v1, 0x67e4

    goto/16 :goto_160

    :pswitch_7b
    const/16 v1, 0x67e3

    goto/16 :goto_160

    :pswitch_7f
    const/16 v1, 0x67e2

    goto/16 :goto_160

    :pswitch_83
    const/16 v1, 0x67e1

    goto/16 :goto_160

    :pswitch_87
    const/16 v1, 0x67e0

    goto/16 :goto_160

    :pswitch_8b
    const/16 v1, 0x67df

    goto/16 :goto_160

    :pswitch_8f
    const/16 v1, 0x67de

    goto/16 :goto_160

    :pswitch_93
    const/16 v1, 0x67d8

    goto/16 :goto_160

    :pswitch_97
    const/16 v1, 0x67d7

    goto/16 :goto_160

    :pswitch_9b
    const/16 v1, 0x67d6

    goto/16 :goto_160

    :pswitch_9f
    const/16 v1, 0x67d5

    goto/16 :goto_160

    :pswitch_a3
    const/16 v1, 0x67d4

    goto/16 :goto_160

    :pswitch_a7
    const/16 v1, 0x67d0

    goto/16 :goto_160

    :pswitch_ab
    const/16 v1, 0x67cf

    goto/16 :goto_160

    :pswitch_af
    const/16 v1, 0x67ce

    goto/16 :goto_160

    :pswitch_b3
    const/16 v1, 0x67cd

    goto/16 :goto_160

    :pswitch_b7
    const/16 v1, 0x67cc

    goto/16 :goto_160

    :pswitch_bb
    const/16 v1, 0x67cb

    goto/16 :goto_160

    :pswitch_bf
    const/16 v1, 0x67ca

    goto/16 :goto_160

    :pswitch_c3
    const/16 v1, 0x67c3

    goto/16 :goto_160

    :pswitch_c7
    const/16 v1, 0x67c2

    goto/16 :goto_160

    :pswitch_cb
    const/16 v1, 0x67c1

    goto/16 :goto_160

    :pswitch_cf
    const/16 v1, 0x67c0

    goto/16 :goto_160

    :pswitch_d3
    const/16 v1, 0x67b8

    goto/16 :goto_160

    :pswitch_d7
    const/16 v1, 0x67b7

    goto/16 :goto_160

    :pswitch_db
    const/16 v1, 0x67b6

    goto/16 :goto_160

    :pswitch_df
    const/16 v1, 0x67a8

    goto/16 :goto_160

    :pswitch_e3
    const/16 v1, 0x67a7

    goto/16 :goto_160

    :pswitch_e7
    const/16 v1, 0x67a6

    goto/16 :goto_160

    :pswitch_eb
    const/16 v1, 0x67a5

    goto/16 :goto_160

    :pswitch_ef
    const/16 v1, 0x67a4

    goto/16 :goto_160

    :pswitch_f3
    const/16 v1, 0x67a3

    goto/16 :goto_160

    :pswitch_f7
    const/16 v1, 0x67a2

    goto/16 :goto_160

    :sswitch_fb
    const/16 v1, 0x6850

    goto/16 :goto_160

    :sswitch_ff
    const/16 v1, 0x684f

    goto/16 :goto_160

    :sswitch_103
    const/16 v1, 0x684e

    goto/16 :goto_160

    :sswitch_107
    const/16 v1, 0x684d

    goto/16 :goto_160

    :sswitch_10b
    const/16 v1, 0x684c

    goto/16 :goto_160

    :sswitch_10f
    const/16 v1, 0x681c

    goto/16 :goto_160

    :sswitch_113
    const/16 v1, 0x681a

    goto :goto_160

    :sswitch_116
    const/16 v1, 0x6808

    goto :goto_160

    :sswitch_119
    const/16 v1, 0x6807

    goto :goto_160

    :sswitch_11c
    const/16 v1, 0x6806

    goto :goto_160

    :sswitch_11f
    const/16 v1, 0x6805

    goto :goto_160

    :sswitch_122
    const/16 v1, 0x6804

    goto :goto_160

    :sswitch_125
    const/16 v1, 0x6803

    goto :goto_160

    :sswitch_128
    const/16 v1, 0x6802

    goto :goto_160

    :sswitch_12b
    const/16 v1, 0x6801

    goto :goto_160

    :sswitch_12e
    const/16 v1, 0x6800

    goto :goto_160

    :sswitch_131
    const/16 v1, 0x67ff

    goto :goto_160

    :sswitch_134
    const/16 v1, 0x67fe

    goto :goto_160

    :sswitch_137
    const/16 v1, 0x67fd

    goto :goto_160

    :sswitch_13a
    const/16 v1, 0x67fc

    goto :goto_160

    :sswitch_13d
    const/16 v1, 0x6798

    goto :goto_160

    :sswitch_140
    const/16 v1, 0x678d

    goto :goto_160

    :sswitch_143
    const/16 v1, 0x678c

    goto :goto_160

    :cond_146
    const/16 v1, 0x67ad

    goto :goto_160

    :cond_149
    const/16 v1, 0x67ac

    goto :goto_160

    :cond_14c
    :sswitch_14c
    const/16 v1, 0x678b

    goto :goto_160

    :cond_14f
    const/16 v1, 0x678a

    goto :goto_160

    :cond_152
    const/16 v1, 0x6789

    goto :goto_160

    :cond_155
    const/16 v1, 0x6788

    goto :goto_160

    :cond_158
    const/16 v1, 0x6787

    goto :goto_160

    :cond_15b
    const/16 v1, 0x6786

    goto :goto_160

    :cond_15e
    const/16 v1, 0x8

    .line 3
    :goto_160
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_167

    goto :goto_193

    .line 4
    :cond_167
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/zzj;->zzb(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->zzb(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    goto :goto_193

    :cond_182
    packed-switch v0, :pswitch_data_27a

    :pswitch_185
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object p1, v0

    .line 9
    :goto_193
    :pswitch_193
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    nop

    :sswitch_data_19c
    .sparse-switch
        0x7 -> :sswitch_14c
        0x8 -> :sswitch_143
        0x9 -> :sswitch_140
        0x1f4 -> :sswitch_13d
        0x2328 -> :sswitch_13a
        0x2329 -> :sswitch_137
        0x232a -> :sswitch_134
        0x232b -> :sswitch_131
        0x232c -> :sswitch_12e
        0x232e -> :sswitch_12b
        0x2331 -> :sswitch_128
        0x2332 -> :sswitch_125
        0x2333 -> :sswitch_122
        0x2334 -> :sswitch_11f
        0x2338 -> :sswitch_11c
        0x2339 -> :sswitch_119
        0x233a -> :sswitch_116
        0x23f0 -> :sswitch_113
        0x23f2 -> :sswitch_10f
        0x2710 -> :sswitch_10b
        0x2711 -> :sswitch_107
        0x2712 -> :sswitch_103
        0x2713 -> :sswitch_ff
        0x2714 -> :sswitch_fb
    .end sparse-switch

    :pswitch_data_1fe
    .packed-switch 0x3e8
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x7d0
        :pswitch_db
        :pswitch_d7
        :pswitch_d3
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0xbb8
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0xfa0
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
    .end packed-switch

    :pswitch_data_238
    .packed-switch 0x1770
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
    .end packed-switch

    :pswitch_data_246
    .packed-switch 0x1964
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
    .end packed-switch

    :pswitch_data_25a
    .packed-switch 0x1b58
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
    .end packed-switch

    :pswitch_data_26e
    .packed-switch 0x1f40
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x2
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_185
        :pswitch_193
    .end packed-switch
.end method
