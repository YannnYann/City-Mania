###### Class com.google.android.gms.internal.play_billing.zzfi (com.google.android.gms.internal.play_billing.zzfi)
.class public abstract Lcom/google/android/gms/internal/play_billing/zzfi;
.super Lcom/google/android/gms/internal/play_billing/zzds;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzfi<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzfe<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_billing/zzds<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzds;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhi;->zzc()Lcom/google/android/gms/internal/play_billing/zzhi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc:Lcom/google/android/gms/internal/play_billing/zzhi;

    return-void
.end method

.method private static final zzA(Lcom/google/android/gms/internal/play_billing/zzfi;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_f

    return v0

    :cond_f
    if-nez v2, :cond_13

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza()Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object v2

    .line 2
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzk(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_2e

    if-eq v0, v2, :cond_29

    move-object p1, v1

    goto :goto_2a

    :cond_29
    move-object p1, p0

    :goto_2a
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return v2
.end method

.method private final zzc(Lcom/google/android/gms/internal/play_billing/zzgv;)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza()Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzgv;->zza(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static zzd(Lcom/google/android/gms/internal/play_billing/zzfi;[BIILcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzfi;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzfq;
        }
    .end annotation

    if-nez p3, :cond_3

    return-object p0

    .line 1
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzo()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object v1

    .line 2
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza()Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object p0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzdw;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/play_billing/zzdw;-><init>(Lcom/google/android/gms/internal/play_billing/zzeu;)V

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzdw;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzf(Ljava/lang/Object;)V
    :try_end_21
    .catch Lcom/google/android/gms/internal/play_billing/zzfq; {:try_start_7 .. :try_end_21} :catch_48
    .catch Lcom/google/android/gms/internal/play_billing/zzhg; {:try_start_7 .. :try_end_21} :catch_41
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_21} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_21} :catch_22

    return-object v1

    .line 9
    :catch_22
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzfq;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfq;-><init>(Ljava/lang/String;)V

    .line 7
    throw p0

    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/play_billing/zzfq;

    if-eqz p1, :cond_3b

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzfq;

    throw p0

    .line 11
    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfq;

    .line 10
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfq;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_41
    move-exception v0

    move-object p0, v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zza()Lcom/google/android/gms/internal/play_billing/zzfq;

    move-result-object p0

    throw p0

    :catch_48
    move-exception v0

    move-object p0, v0

    .line 12
    throw p0
.end method

.method public static zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzfi;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfi;

    if-nez v1, :cond_26

    .line 2
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1d

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfi;

    goto :goto_26

    :catch_1d
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_26
    :goto_26
    if-nez v1, :cond_42

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzho;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfi;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzfi;

    if-eqz v1, :cond_3c

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 6
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_42
    return-object v1
.end method

.method public static zzp(Lcom/google/android/gms/internal/play_billing/zzfi;[BLcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzfi;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzfq;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd(Lcom/google/android/gms/internal/play_billing/zzfi;[BIILcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p1, 0x1

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzA(Lcom/google/android/gms/internal/play_billing/zzfi;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_1a

    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhg;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzhg;-><init>(Lcom/google/android/gms/internal/play_billing/zzgl;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zza()Lcom/google/android/gms/internal/play_billing/zzfq;

    move-result-object p0

    .line 6
    throw p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static zzq()Lcom/google/android/gms/internal/play_billing/zzfm;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzf()Lcom/google/android/gms/internal/play_billing/zzfj;

    move-result-object v0

    return-object v0
.end method

.method public static zzr()Lcom/google/android/gms/internal/play_billing/zzfn;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgt;->zze()Lcom/google/android/gms/internal/play_billing/zzgt;

    move-result-object v0

    return-object v0
.end method

.method public static varargs zzs(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzt(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzgu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzgu;-><init>(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzw(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfi;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzv()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic zzy(Lcom/google/android/gms/internal/play_billing/zzfi;Z)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzA(Lcom/google/android/gms/internal/play_billing/zzfi;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza()Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfi;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzz()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzds;->zza:I

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzi()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzds;->zza:I

    :cond_10
    return v0

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzi()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgn;->zza(Lcom/google/android/gms/internal/play_billing/zzgl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzK()Lcom/google/android/gms/internal/play_billing/zzgk;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfe;

    return-object v0
.end method

.method public final zzL(Lcom/google/android/gms/internal/play_billing/zzep;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza()Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza(Lcom/google/android/gms/internal/play_billing/zzep;)Lcom/google/android/gms/internal/play_billing/zzeq;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzhu;)V

    return-void
.end method

.method public abstract zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zze(Lcom/google/android/gms/internal/play_billing/zzgv;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzz()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_24

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzgv;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    return p1

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_50

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzgv;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3b

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    return p1

    .line 3
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    return v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/play_billing/zzgl;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    return-object v0
.end method

.method public final zzi()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza()Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzj()I
    .registers 5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzz()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc(Lcom/google/android/gms/internal/play_billing/zzgv;)I

    move-result v0

    if-ltz v0, :cond_10

    return v0

    :cond_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2e

    return v0

    .line 1
    :cond_2e
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzc(Lcom/google/android/gms/internal/play_billing/zzgv;)I

    move-result v0

    if-ltz v0, :cond_3d

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    return v0

    .line 1
    :cond_3d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzk()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzA(Lcom/google/android/gms/internal/play_billing/zzfi;Z)Z

    move-result v0

    return v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/play_billing/zzfe;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfe;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/play_billing/zzfe;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfe;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzfe;->zzd(Lcom/google/android/gms/internal/play_billing/zzfi;)Lcom/google/android/gms/internal/play_billing/zzfe;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/play_billing/zzfi;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfi;

    return-object v0
.end method

.method public final zzu()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza()Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgs;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgv;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzf(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzv()V

    return-void
.end method

.method public final zzv()V
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    return-void
.end method

.method public final zzx(I)V
    .registers 3

    .line 0
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    return-void
.end method

.method public final zzz()Z
    .registers 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfi;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
