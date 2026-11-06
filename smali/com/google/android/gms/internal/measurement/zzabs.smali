###### Class com.google.android.gms.internal.measurement.zzabs (com.google.android.gms.internal.measurement.zzabs)
.class final Lcom/google/android/gms/internal/measurement/zzabs;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzabt;-><init>()V

    return-object v0
.end method
