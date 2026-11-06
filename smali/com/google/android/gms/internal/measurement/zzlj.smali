###### Class com.google.android.gms.internal.measurement.zzlj (com.google.android.gms.internal.measurement.zzlj)
.class public final Lcom/google/android/gms/internal/measurement/zzlj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/common/base/Supplier;

.field private zzc:Lcom/google/common/base/Supplier;

.field private zzd:Lcom/google/common/base/Supplier;

.field private zze:Lcom/google/common/base/Supplier;

.field private zzf:Lcom/google/common/base/Supplier;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzlj;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzlk;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzb:Lcom/google/common/base/Supplier;

    if-nez v0, :cond_f

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlk;->zzm()Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzb:Lcom/google/common/base/Supplier;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzc:Lcom/google/common/base/Supplier;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Landroid/content/Context;

    .line 3
    sget v1, Lcom/google/android/gms/internal/measurement/zzlk;->zza:I

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzc:Lcom/google/common/base/Supplier;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzd:Lcom/google/common/base/Supplier;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzli;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzli;-><init>(Lcom/google/android/gms/internal/measurement/zzlj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzd:Lcom/google/common/base/Supplier;

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zze:Lcom/google/common/base/Supplier;

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Landroid/content/Context;

    .line 6
    sget v1, Lcom/google/android/gms/internal/measurement/zzlk;->zza:I

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzrw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzrw;->zza()Lcom/google/android/gms/internal/measurement/zzrx;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzsd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzsd;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzsx;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    .line 9
    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlm;-><init>(Ljava/util/ArrayList;)V

    .line 11
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zze:Lcom/google/common/base/Supplier;

    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzf:Lcom/google/common/base/Supplier;

    if-nez v0, :cond_69

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzlh;-><init>(Lcom/google/android/gms/internal/measurement/zzlj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzf:Lcom/google/common/base/Supplier;

    .line 12
    :cond_69
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzb:Lcom/google/common/base/Supplier;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzc:Lcom/google/common/base/Supplier;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzd:Lcom/google/common/base/Supplier;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zze:Lcom/google/common/base/Supplier;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzf:Lcom/google/common/base/Supplier;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/measurement/zzlk;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;[B)V

    return-object v1
.end method

.method public final synthetic zzc()Lcom/google/common/base/Optional;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqi;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zzb:Lcom/google/common/base/Supplier;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzqi;-><init>(Lcom/google/common/base/Supplier;I)V

    .line 2
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzd()Lcom/google/common/base/Optional;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->zza:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/measurement/zzlk;->zza:I

    .line 2
    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v0

    .line 5
    :catch_14
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzlh (com.google.android.gms.internal.measurement.zzlh)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzlh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzlj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlj;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlh;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlh;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlj;->zzd()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzli (com.google.android.gms.internal.measurement.zzli)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzlj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlj;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzli;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzli;->zza:Lcom/google/android/gms/internal/measurement/zzlj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlj;->zzc()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzlm (com.google.android.gms.internal.measurement.zzlm)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzlm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field private final synthetic zza:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/measurement/zzlk;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzru;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlm;->zza:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzru;-><init>(Ljava/util/List;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzln (com.google.android.gms.internal.measurement.zzln)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field private final synthetic zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/measurement/zzlk;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmn;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzjx;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmn;-><init>(Lcom/google/android/gms/internal/measurement/zzkk;)V

    return-object v0
.end method
