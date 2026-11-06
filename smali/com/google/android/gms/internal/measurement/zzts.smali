###### Class com.google.android.gms.internal.measurement.zzts (com.google.android.gms.internal.measurement.zzts)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/measurement/zzts;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzts;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzts;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzts;->zza:Lcom/google/android/gms/internal/measurement/zzts;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    check-cast p1, Landroid/net/Uri;

    .line 1
    const-string p1, ""

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
