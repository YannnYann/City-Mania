###### Class com.google.android.gms.internal.play_billing.zzjo (com.google.android.gms.internal.play_billing.zzjo)
.class public final Lcom/google/android/gms/internal/play_billing/zzjo;
.super Lcom/google/android/gms/internal/play_billing/zzfi;
.source "com.android.billingclient:billing@@8.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgm;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjo;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/play_billing/zzig;

.field private zzf:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzb:Lcom/google/android/gms/internal/play_billing/zzjo;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;-><init>()V

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zzjo;Lcom/google/android/gms/internal/play_billing/zzig;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjo;->zze:Lcom/google/android/gms/internal/play_billing/zzig;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzd:I

    return-void
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/play_billing/zzjo;J)V
    .registers 4

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzf:J

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zzjm;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzb:Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzl()Lcom/google/android/gms/internal/play_billing/zzfe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjm;

    return-object v0
.end method

.method public static bridge synthetic zzd()Lcom/google/android/gms/internal/play_billing/zzjo;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjo;->zzb:Lcom/google/android/gms/internal/play_billing/zzjo;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_34

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjo;->zzb:Lcom/google/android/gms/internal/play_billing/zzjo;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjm;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjm;-><init>(Lcom/google/android/gms/internal/play_billing/zzjn;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzjo;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzd"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjo;->zzb:Lcom/google/android/gms/internal/play_billing/zzjo;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1002\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzt(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_34
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
