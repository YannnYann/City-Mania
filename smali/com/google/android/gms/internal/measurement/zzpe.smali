###### Class com.google.android.gms.internal.measurement.zzpe (com.google.android.gms.internal.measurement.zzpe)
.class public final Lcom/google/android/gms/internal/measurement/zzpe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpe;->zza:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpe;->zza:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzoz;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/zzoz;-><init>(Lcom/google/android/gms/internal/measurement/zzpe;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzpa;-><init>(Lcom/google/android/gms/internal/measurement/zzpe;)V

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzql;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzqk;Lcom/google/android/gms/internal/measurement/zzqj;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpe;->zza:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzoo;

    if-eqz p1, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpc;->zza:Lcom/google/android/gms/internal/measurement/zzpc;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzoo;->zzc(Lcom/google/android/gms/internal/measurement/zzpc;)V

    :cond_f
    return-void
.end method

.method public final synthetic zzb(Ljava/util/Collection;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    return v0

    .line 2
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzpe;->zza:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzoo;

    if-eqz v1, :cond_e

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzoo;->zzb()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_e

    :cond_2a
    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzoo;
    .registers 8

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzpd;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/measurement/zzpd;-><init>([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpe;->zza:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzon;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzpb;

    const-string v3, ""

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/google/android/gms/internal/measurement/zzpb;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzpd;)V

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoo;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result p3

    if-eqz p3, :cond_26

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzpe;->zzd(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;)V

    :cond_26
    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzoz (com.google.android.gms.internal.measurement.zzoz)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzoz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqk;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzpe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpe;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzoz;->zza:Lcom/google/android/gms/internal/measurement/zzpe;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzoz;->zza:Lcom/google/android/gms/internal/measurement/zzpe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzpe;->zza(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzpa (com.google.android.gms.internal.measurement.zzpa)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzpa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpe;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzpb (com.google.android.gms.internal.measurement.zzpb)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzlk;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzon;

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzpd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzpd;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpb;->zza:Lcom/google/android/gms/internal/measurement/zzlk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzpb;->zzb:Lcom/google/android/gms/internal/measurement/zzon;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzpb;->zzc:Lcom/google/android/gms/internal/measurement/zzpd;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpb;->zzb:Lcom/google/android/gms/internal/measurement/zzon;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzpb;->zza:Lcom/google/android/gms/internal/measurement/zzlk;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzpg;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcom/google/android/gms/internal/measurement/zzon;Ljava/lang/String;[B)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzoo;

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/internal/measurement/zzoo;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;[B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpb;->zzc:Lcom/google/android/gms/internal/measurement/zzpd;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzpd;->zzb(Z)V

    return-object p1
.end method
