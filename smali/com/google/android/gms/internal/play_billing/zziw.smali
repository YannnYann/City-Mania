###### Class com.google.android.gms.internal.play_billing.zziw (com.google.android.gms.internal.play_billing.zziw)
.class public final Lcom/google/android/gms/internal/play_billing/zziw;
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

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zziy;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziz;->zzd()Lcom/google/android/gms/internal/play_billing/zziz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfe;-><init>(Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/play_billing/zziw;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfe;->zza:Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zziz;->zzA(Lcom/google/android/gms/internal/play_billing/zziz;I)V

    return-object p0
.end method
