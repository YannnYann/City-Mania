###### Class com.google.android.gms.internal.measurement.zzagq (com.google.android.gms.internal.measurement.zzagq)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzagq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/measurement/zzagq;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzagq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzagq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzagq;->zza:Lcom/google/android/gms/internal/measurement/zzagq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzagr;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
