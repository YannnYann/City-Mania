###### Class com.google.android.gms.internal.consent_sdk.zzsw (com.google.android.gms.internal.consent_sdk.zzsw)
.class final Lcom/google/android/gms/internal/consent_sdk/zzsw;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# static fields
.field static final zza:J

.field static final zzb:Z

.field private static final zzc:Lsun/misc/Unsafe;

.field private static final zzd:Ljava/lang/Class;

.field private static final zze:Z

.field private static final zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

.field private static final zzg:Z

.field private static final zzh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    const-class v0, Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzg()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzc:Lsun/misc/Unsafe;

    .line 2
    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzpc;->zza:I

    const-class v2, Llibcore/io/Memory;

    sput-object v2, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzd:Ljava/lang/Class;

    .line 3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzv(Ljava/lang/Class;)Z

    move-result v3

    sput-boolean v3, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zze:Z

    .line 4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzv(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v1, :cond_20

    goto :goto_2f

    :cond_20
    if-eqz v3, :cond_28

    .line 7
    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzsu;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/consent_sdk/zzsu;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_2f

    :cond_28
    if-eqz v5, :cond_2f

    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzst;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/consent_sdk/zzst;-><init>(Lsun/misc/Unsafe;)V

    .line 4
    :cond_2f
    :goto_2f
    sput-object v6, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    const-string v1, "getLong"

    const-class v3, Ljava/lang/reflect/Field;

    const-string v5, "objectFieldOffset"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-class v9, Ljava/lang/Object;

    if-nez v6, :cond_3f

    :goto_3d
    move v6, v8

    goto :goto_61

    .line 17
    :cond_3f
    iget-object v6, v6, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    :try_start_41
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v10

    .line 5
    invoke-virtual {v6, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v9, v2}, [Ljava/lang/Class;

    move-result-object v10

    .line 6
    invoke-virtual {v6, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzB()Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_5c

    if-nez v6, :cond_5a

    goto :goto_3d

    :cond_5a
    move v6, v7

    goto :goto_61

    :catchall_5c
    move-exception v6

    .line 8
    invoke-static {v6}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzh(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 4
    :goto_61
    sput-boolean v6, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzg:Z

    sget-object v6, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    if-nez v6, :cond_69

    :goto_67
    move v0, v8

    goto :goto_c3

    .line 34
    :cond_69
    iget-object v6, v6, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    :try_start_6b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 9
    invoke-virtual {v6, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v5

    .line 10
    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 11
    invoke-virtual {v6, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getInt"

    filled-new-array {v9, v2}, [Ljava/lang/Class;

    move-result-object v3

    .line 12
    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putInt"

    filled-new-array {v9, v2, v4}, [Ljava/lang/Class;

    move-result-object v3

    .line 13
    invoke-virtual {v6, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v9, v2}, [Ljava/lang/Class;

    move-result-object v0

    .line 14
    invoke-virtual {v6, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    filled-new-array {v9, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    .line 15
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    filled-new-array {v9, v2}, [Ljava/lang/Class;

    move-result-object v1

    .line 16
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    filled-new-array {v9, v2, v9}, [Ljava/lang/Class;

    move-result-object v1

    .line 17
    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_bc
    .catchall {:try_start_6b .. :try_end_bc} :catchall_be

    move v0, v7

    goto :goto_c3

    :catchall_be
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzh(Ljava/lang/Throwable;)V

    goto :goto_67

    .line 4
    :goto_c3
    sput-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzh:Z

    const-class v0, [B

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzz(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zza:J

    .line 20
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzz(Ljava/lang/Class;)I

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzA(Ljava/lang/Class;)I

    .line 22
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzz(Ljava/lang/Class;)I

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzA(Ljava/lang/Class;)I

    .line 24
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzz(Ljava/lang/Class;)I

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzA(Ljava/lang/Class;)I

    .line 26
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzz(Ljava/lang/Class;)I

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzA(Ljava/lang/Class;)I

    .line 28
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzz(Ljava/lang/Class;)I

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzA(Ljava/lang/Class;)I

    .line 30
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzz(Ljava/lang/Class;)I

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzA(Ljava/lang/Class;)I

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzB()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_10d

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    if-eqz v1, :cond_10d

    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    .line 33
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 34
    :cond_10d
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_116

    goto :goto_117

    :cond_116
    move v7, v8

    :goto_117
    sput-boolean v7, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzA(Ljava/lang/Class;)I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzh:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private static zzB()Ljava/lang/reflect/Field;
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzpc;->zza:I

    const-string v0, "effectiveDirectAddress"

    .line 2
    const-class v1, Ljava/nio/Buffer;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "address"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1d

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    :cond_1e
    return-object v0
.end method

.method private static zzC(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzD(Ljava/lang/Object;JB)V
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzE(Ljava/lang/Object;JB)V
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    .line 2
    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zza(Ljava/lang/Object;J)D
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static zzb(Ljava/lang/Object;J)F
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zzb(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static zzc(Ljava/lang/Object;J)I
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static zzd(Ljava/lang/Object;J)J
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static zze(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzc:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzf(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zzg()Lsun/misc/Unsafe;
    .registers 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzss;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzss;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-object v0

    :catchall_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static bridge synthetic zzh(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    .line 2
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzi(Ljava/lang/Object;JZ)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static synthetic zzj(Ljava/lang/Object;JZ)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static bridge synthetic zzk(Ljava/lang/Object;JB)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzD(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static bridge synthetic zzl(Ljava/lang/Object;JB)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzE(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static zzm(Ljava/lang/Object;JZ)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static zzn([BJB)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    sget-wide v1, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zza:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static zzo(Ljava/lang/Object;JD)V
    .registers 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zze(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static zzp(Ljava/lang/Object;JF)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zzf(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static zzq(Ljava/lang/Object;JI)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static zzr(Ljava/lang/Object;JJ)V
    .registers 12

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static zzs(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic zzt(Ljava/lang/Object;J)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic zzu(Ljava/lang/Object;J)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static zzv(Ljava/lang/Class;)Z
    .registers 7

    .line 1
    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/consent_sdk/zzpc;->zza:I

    :try_start_4
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzd:Ljava/lang/Class;

    const-string v2, "peekLong"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v4

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeLong"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    move-result-object v4

    .line 3
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeInt"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4, v3}, [Ljava/lang/Class;

    move-result-object v5

    .line 4
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekInt"

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByte"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByteArray"

    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByteArray"

    filled-new-array {p0, v0, v4, v4}, [Ljava/lang/Class;

    move-result-object p0

    .line 9
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_58

    const/4 p0, 0x1

    return p0

    :catchall_58
    const/4 p0, 0x0

    return p0
.end method

.method public static zzw(Ljava/lang/Object;J)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zzg(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static zzx()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzh:Z

    return v0
.end method

.method public static zzy()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzg:Z

    return v0
.end method

.method private static zzz(Ljava/lang/Class;)I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzh:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->zza:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method
