###### Class com.google.android.gms.internal.play_billing.zzgs (com.google.android.gms.internal.play_billing.zzgs)
.class final Lcom/google/android/gms/internal/play_billing/zzgs;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzgs;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/play_billing/zzgw;

.field private final zzd:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb:Lcom/google/android/gms/internal/play_billing/zzgs;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzd:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzgd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzc:Lcom/google/android/gms/internal/play_billing/zzgw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzgs;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb:Lcom/google/android/gms/internal/play_billing/zzgs;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;
    .registers 5

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfo;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzd:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgv;

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzgs;->zzc:Lcom/google/android/gms/internal/play_billing/zzgw;

    .line 3
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzgw;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object v2

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfo;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgv;

    if-eqz p1, :cond_21

    return-object p1

    :cond_21
    return-object v2
.end method
