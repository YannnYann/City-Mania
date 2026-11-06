###### Class com.google.android.gms.internal.play_billing.zzjq (com.google.android.gms.internal.play_billing.zzjq)
.class final Lcom/google/android/gms/internal/play_billing/zzjq;
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
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjq;->zza:Lcom/google/android/gms/internal/play_billing/zzfl;

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
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    return v0
.end method
