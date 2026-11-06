###### Class com.google.android.gms.internal.play_billing.zzjm (com.google.android.gms.internal.play_billing.zzjm)
.class public final Lcom/google/android/gms/internal/play_billing/zzjm;
.super Lcom/google/android/gms/internal/play_billing/zzfe;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzjn;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjo;->zzd()Lcom/google/android/gms/internal/play_billing/zzjo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfe;-><init>(Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzjm;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzig;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjo;->zzA(Lcom/google/android/gms/internal/play_billing/zzjo;Lcom/google/android/gms/internal/play_billing/zzig;)V

    return-object p0
.end method

.method public final zzl(J)Lcom/google/android/gms/internal/play_billing/zzjm;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjo;->zzB(Lcom/google/android/gms/internal/play_billing/zzjo;J)V

    return-object p0
.end method
