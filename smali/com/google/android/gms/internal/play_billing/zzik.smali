###### Class com.google.android.gms.internal.play_billing.zzik (com.google.android.gms.internal.play_billing.zzik)
.class final Lcom/google/android/gms/internal/play_billing/zzik;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzfl;


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_billing/zzfl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzik;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzik;->zza:Lcom/google/android/gms/internal/play_billing/zzfl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eqz p1, :cond_16

    if-eq p1, v0, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 p1, 0x0

    goto :goto_18

    :cond_d
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzil;->zzd:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_18

    :cond_10
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzil;->zzc:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_18

    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzil;->zzb:Lcom/google/android/gms/internal/play_billing/zzil;

    goto :goto_18

    :cond_16
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    :goto_18
    if-eqz p1, :cond_1b

    return v0

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method
