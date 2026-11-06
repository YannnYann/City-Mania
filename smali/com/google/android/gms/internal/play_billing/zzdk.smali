###### Class com.google.android.gms.internal.play_billing.zzdk (com.google.android.gms.internal.play_billing.zzdk)
.class public final Lcom/google/android/gms/internal/play_billing/zzdk;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdk;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzfn;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzdk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzdk;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzr()Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdk;->zzd:Lcom/google/android/gms/internal/play_billing/zzfn;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzdj;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzl()Lcom/google/android/gms/internal/play_billing/zzfe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdj;

    return-object v0
.end method

.method public static bridge synthetic zzc()Lcom/google/android/gms/internal/play_billing/zzdk;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/play_billing/zzdk;Ljava/lang/Iterable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdk;->zzd:Lcom/google/android/gms/internal/play_billing/zzfn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzc()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzfn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdk;->zzd:Lcom/google/android/gms/internal/play_billing/zzfn;

    :cond_13
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzdk;->zzd:Lcom/google/android/gms/internal/play_billing/zzfn;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzds;->zzg(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_32

    const/4 p2, 0x2

    if-eq p1, p2, :cond_21

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-ne p1, p2, :cond_14

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzdj;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdj;-><init>(Lcom/google/android/gms/internal/play_billing/zzdl;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzdk;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzdk;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string p1, "zzd"

    const-class p2, Lcom/google/android/gms/internal/play_billing/zzdi;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzt(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_32
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
