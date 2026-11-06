###### Class com.google.android.gms.internal.measurement.zzahk (com.google.android.gms.internal.measurement.zzahk)
.class public final Lcom/google/android/gms/internal/measurement/zzahk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzahk;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzahk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzahk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzahk;->zza:Lcom/google/android/gms/internal/measurement/zzahk;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzahm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzahm;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzahk;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzahk;->zza:Lcom/google/android/gms/internal/measurement/zzahk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzahk;->zzd()Lcom/google/android/gms/internal/measurement/zzahl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzahl;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzahk;->zza:Lcom/google/android/gms/internal/measurement/zzahk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzahk;->zzd()Lcom/google/android/gms/internal/measurement/zzahl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzahl;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzahk;->zza:Lcom/google/android/gms/internal/measurement/zzahk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzahk;->zzd()Lcom/google/android/gms/internal/measurement/zzahl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzahl;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzahk;->zzd()Lcom/google/android/gms/internal/measurement/zzahl;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzahl;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzahk;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzahl;

    return-object v0
.end method
