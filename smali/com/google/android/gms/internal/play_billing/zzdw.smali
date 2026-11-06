###### Class com.google.android.gms.internal.play_billing.zzdw (com.google.android.gms.internal.play_billing.zzdw)
.class final Lcom/google/android/gms/internal/play_billing/zzdw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/play_billing/zzeu;

.field public zze:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/play_billing/zzeu;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzeu;->zza:Lcom/google/android/gms/internal/play_billing/zzeu;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd:Lcom/google/android/gms/internal/play_billing/zzeu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzeu;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdw;->zzd:Lcom/google/android/gms/internal/play_billing/zzeu;

    return-void
.end method
