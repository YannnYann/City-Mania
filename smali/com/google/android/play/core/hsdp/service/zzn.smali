###### Class com.google.android.play.core.hsdp.service.zzn (com.google.android.play.core.hsdp.service.zzn)
.class public abstract Lcom/google/android/play/core/hsdp/service/zzn;
.super Lcom/google/android/play/core/hsdp/protocol/zzd;
.source "com.google.android.play:hsdp@@2.0.1"


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzo;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/protocol/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "statusCode"

    const/16 v1, 0x2436

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x2441

    if-eq p1, v0, :cond_37

    const/16 v0, 0x2442

    if-eq p1, v0, :cond_33

    packed-switch p1, :pswitch_data_40

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzn;->zzf(I)V

    return-void

    .line 4
    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zzg()V

    return-void

    .line 5
    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zze()V

    return-void

    .line 6
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zzk()V

    return-void

    .line 7
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zzc()V

    return-void

    .line 8
    :pswitch_27
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zzj()V

    return-void

    .line 9
    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zzh()V

    return-void

    .line 10
    :pswitch_2f
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zzi()V

    return-void

    .line 2
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzn;->zzd()V

    return-void

    :cond_37
    const-string p1, "HpoaClientImpl"

    const-string v0, "onStateChange: HPOA_SERVICE_NO_OP"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x2437
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
    .end packed-switch
.end method

.method public abstract zzc()V
.end method

.method public abstract zzd()V
.end method

.method public abstract zze()V
.end method

.method public abstract zzf(I)V
.end method

.method public abstract zzg()V
.end method

.method public abstract zzh()V
.end method

.method public abstract zzi()V
.end method

.method public abstract zzj()V
.end method

.method public abstract zzk()V
.end method
