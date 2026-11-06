###### Class com.android.billingclient.api.zzcb (com.android.billingclient.api.zzcb)
.class public final Lcom/android/billingclient/api/zzcb;
.super Lcom/google/android/gms/internal/play_billing/zzav;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/play_billing/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzp;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzav;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcb;->zza:Lcom/google/android/gms/internal/play_billing/zzp;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzcb;->zza:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzb(Ljava/lang/Object;)Z

    return-void
.end method
