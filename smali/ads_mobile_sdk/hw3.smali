###### Class ads_mobile_sdk.hw3 (ads_mobile_sdk.hw3)
.class abstract Lads_mobile_sdk/hw3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/hw3$e;,
        Lads_mobile_sdk/hw3$c;,
        Lads_mobile_sdk/hw3$b;,
        Lads_mobile_sdk/hw3$d;
    }
.end annotation


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:Z

.field private static final d:Z

.field private static final e:Lads_mobile_sdk/hw3$e;

.field private static final f:Z

.field private static final g:Z

.field static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:J

.field private static final p:J

.field private static final q:J

.field private static final r:J

.field private static final s:J

.field private static final t:J

.field private static final u:J

.field private static final v:I

.field static final w:Z


# direct methods
.method public static bridge synthetic -$$Nest$sma()Ljava/lang/reflect/Field;
    .registers 1

    .line 0
    invoke-static {}, Lads_mobile_sdk/hw3;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sma(Ljava/lang/Throwable;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smb(Ljava/lang/Object;JZ)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smb(Ljava/lang/Object;J)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smc(Ljava/lang/Object;JZ)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smc(Ljava/lang/Object;J)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Lads_mobile_sdk/hw3;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hw3;->a:Lsun/misc/Unsafe;

    .line 2
    invoke-static {}, Lads_mobile_sdk/gi;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hw3;->b:Ljava/lang/Class;

    .line 3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lads_mobile_sdk/hw3;->d(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->c:Z

    .line 4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lads_mobile_sdk/hw3;->d(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->d:Z

    .line 5
    invoke-static {}, Lads_mobile_sdk/hw3;->b()Lads_mobile_sdk/hw3$e;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    .line 7
    invoke-static {}, Lads_mobile_sdk/hw3;->e()Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->f:Z

    .line 8
    invoke-static {}, Lads_mobile_sdk/hw3;->d()Z

    move-result v0

    sput-boolean v0, Lads_mobile_sdk/hw3;->g:Z

    .line 10
    const-class v0, [B

    invoke-static {v0}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lads_mobile_sdk/hw3;->h:J

    .line 14
    const-class v2, [Z

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->i:J

    .line 15
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->j:J

    .line 17
    const-class v2, [I

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->k:J

    .line 18
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->l:J

    .line 20
    const-class v2, [J

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->m:J

    .line 21
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->n:J

    .line 23
    const-class v2, [F

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->o:J

    .line 24
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->p:J

    .line 26
    const-class v2, [D

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->q:J

    .line 27
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->r:J

    .line 29
    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lads_mobile_sdk/hw3;->s:J

    .line 30
    invoke-static {v2}, Lads_mobile_sdk/hw3;->c(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lads_mobile_sdk/hw3;->t:J

    .line 32
    invoke-static {}, Lads_mobile_sdk/hw3;->a()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/hw3;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lads_mobile_sdk/hw3;->u:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 36
    sput v0, Lads_mobile_sdk/hw3;->v:I

    .line 39
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b1

    const/4 v0, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v0, 0x0

    :goto_b2
    sput-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    return-void
.end method

.method private static a(Ljava/lang/reflect/Field;)J
    .registers 3

    if-eqz p0, :cond_c

    .line 949
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    if-nez v0, :cond_7

    goto :goto_c

    :cond_7
    invoke-virtual {v0, p0}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0

    :cond_c
    :goto_c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2066
    :try_start_0
    sget-object v0, Lads_mobile_sdk/hw3;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 2068
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a()Ljava/lang/reflect/Field;
    .registers 3

    .line 2076
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v0

    const-class v1, Ljava/nio/Buffer;

    if-eqz v0, :cond_11

    .line 2079
    const-string v0, "effectiveDirectAddress"

    invoke-static {v1, v0}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 2084
    :cond_11
    const-string v0, "address"

    invoke-static {v1, v0}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2085
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_22

    return-object v0

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 479
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

.method private static a(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 2062
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 2065
    invoke-static {p0, v0, v1, p1}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JD)V
    .registers 11

    .line 2074
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JF)V
    .registers 5

    .line 2073
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JI)V
    .registers 5

    .line 2069
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JJ)V
    .registers 11

    .line 2070
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 2075
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;JZ)V
    .registers 5

    .line 2072
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .registers 5

    .line 2086
    const-class v0, Lads_mobile_sdk/hw3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2087
    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;J)Z
    .registers 4

    .line 2071
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 3386
    sget-boolean v0, Lads_mobile_sdk/hw3;->g:Z

    if-eqz v0, :cond_b

    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method private static b()Lads_mobile_sdk/hw3$e;
    .registers 3

    .line 3387
    sget-object v0, Lads_mobile_sdk/hw3;->a:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 3390
    :cond_6
    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3391
    sget-boolean v2, Lads_mobile_sdk/hw3;->c:Z

    if-eqz v2, :cond_16

    .line 3392
    new-instance v1, Lads_mobile_sdk/hw3$c;

    invoke-direct {v1, v0}, Lads_mobile_sdk/hw3$c;-><init>(Lsun/misc/Unsafe;)V

    return-object v1

    .line 3393
    :cond_16
    sget-boolean v2, Lads_mobile_sdk/hw3;->d:Z

    if-eqz v2, :cond_1f

    .line 3394
    new-instance v1, Lads_mobile_sdk/hw3$b;

    invoke-direct {v1, v0}, Lads_mobile_sdk/hw3$b;-><init>(Lsun/misc/Unsafe;)V

    :cond_1f
    return-object v1

    .line 3400
    :cond_20
    new-instance v1, Lads_mobile_sdk/hw3$d;

    invoke-direct {v1, v0}, Lads_mobile_sdk/hw3$d;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method private static b(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 3382
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    .line 3385
    invoke-static {p0, v0, v1, p1}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static b(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    .line 2262
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static b(Ljava/lang/Object;J)Z
    .registers 3

    .line 1127
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->d(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2578
    sget-boolean v0, Lads_mobile_sdk/hw3;->g:Z

    if-eqz v0, :cond_b

    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0}, Lads_mobile_sdk/hw3$e;->b(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static c()Lsun/misc/Unsafe;
    .registers 4

    const/4 v0, 0x0

    .line 1399
    :try_start_1
    new-instance v1, Lads_mobile_sdk/hw3$a;

    invoke-direct {v1}, Lads_mobile_sdk/hw3$a;-><init>()V

    .line 1400
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_e

    :catchall_d
    move-object v1, v0

    :goto_e
    if-nez v1, :cond_11

    return-object v0

    .line 1434
    :cond_11
    :try_start_11
    const-class v2, [B

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    return-object v1

    .line 1437
    :catch_17
    const-class v1, Lads_mobile_sdk/hw3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1438
    const-string v3, "As part of the planned removal, sun.misc.Unsafe is available in the current environment but configured to throw on use. Protobuf will continue without using it, but with slightly reduced performance. --sun-misc-unsafe-memory-access=allow is likely available to opt back in if desired. A later Protobuf version release will stop using sun.misc.Unsafe entirely."

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    .line 2577
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/hw3;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static c(Ljava/lang/Object;J)Z
    .registers 3

    .line 1131
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/hw3;->e(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1105
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

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

    return p0
.end method

.method private static d()Z
    .registers 1

    .line 1106
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_6
    invoke-virtual {v0}, Lads_mobile_sdk/hw3$e;->a()Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1110
    const-class v0, [B

    invoke-static {}, Lads_mobile_sdk/gi;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1114
    :cond_a
    :try_start_a
    sget-object v1, Lads_mobile_sdk/hw3;->b:Ljava/lang/Class;

    .line 1115
    const-string v3, "peekLong"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1116
    const-string v3, "pokeLong"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1117
    const-string v3, "pokeInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1118
    const-string v3, "peekInt"

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1119
    const-string v3, "pokeByte"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1120
    const-string v3, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1121
    const-string v3, "pokeByteArray"

    filled-new-array {p0, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1122
    const-string v3, "peekByteArray"

    filled-new-array {p0, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5c
    .catchall {:try_start_a .. :try_end_5c} :catchall_5e

    const/4 p0, 0x1

    return p0

    :catchall_5e
    return v2
.end method

.method private static e(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1109
    invoke-static {p0, v0, v1}, Lads_mobile_sdk/hw3;->h(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static e()Z
    .registers 1

    .line 1110
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1113
    :cond_6
    invoke-virtual {v0}, Lads_mobile_sdk/hw3$e;->b()Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/Object;J)D
    .registers 4

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->b(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static g(Ljava/lang/Object;J)F
    .registers 4

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/Object;J)I
    .registers 4

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->d(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Object;J)J
    .registers 4

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->e(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lads_mobile_sdk/hw3;->e:Lads_mobile_sdk/hw3$e;

    invoke-virtual {v0, p0, p1, p2}, Lads_mobile_sdk/hw3$e;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class ads_mobile_sdk.hw3.a (ads_mobile_sdk.hw3$a)
.class public Lads_mobile_sdk/hw3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lads_mobile_sdk/hw3;->c()Lsun/misc/Unsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsun/misc/Unsafe;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Lsun/misc/Unsafe;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    if-ge v3, v2, :cond_25

    aget-object v5, v1, v3

    const/4 v6, 0x1

    .line 4
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    return-object v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    return-object v4
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lads_mobile_sdk/hw3$a;->a()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.hw3.b (ads_mobile_sdk.hw3$b)
.class public final Lads_mobile_sdk/hw3$b;
.super Lads_mobile_sdk/hw3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 937
    invoke-direct {p0, p1}, Lads_mobile_sdk/hw3$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;JD)V
    .registers 12

    .line 1005
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public a(Ljava/lang/Object;JF)V
    .registers 5

    .line 2000
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public a(Ljava/lang/Object;JZ)V
    .registers 6

    .line 2005
    sget-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    if-eqz v0, :cond_8

    .line 2006
    invoke-static {p1, p2, p3, p4}, Lads_mobile_sdk/hw3;->-$$Nest$smb(Ljava/lang/Object;JZ)V

    return-void

    .line 2008
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lads_mobile_sdk/hw3;->-$$Nest$smc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)Z
    .registers 5

    .line 2001
    sget-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    if-eqz v0, :cond_9

    .line 2002
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/hw3;->-$$Nest$smb(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 2004
    :cond_9
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/hw3;->-$$Nest$smc(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;J)D
    .registers 4

    .line 1000
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->e(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public b()Z
    .registers 2

    .line 2017
    invoke-super {p0}, Lads_mobile_sdk/hw3$e;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;J)F
    .registers 4

    .line 990
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->d(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

###### Class ads_mobile_sdk.hw3.c (ads_mobile_sdk.hw3$c)
.class public final Lads_mobile_sdk/hw3$c;
.super Lads_mobile_sdk/hw3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 761
    invoke-direct {p0, p1}, Lads_mobile_sdk/hw3$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;JD)V
    .registers 12

    .line 829
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public a(Ljava/lang/Object;JF)V
    .registers 5

    .line 1648
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public a(Ljava/lang/Object;JZ)V
    .registers 6

    .line 1653
    sget-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    if-eqz v0, :cond_8

    .line 1654
    invoke-static {p1, p2, p3, p4}, Lads_mobile_sdk/hw3;->-$$Nest$smb(Ljava/lang/Object;JZ)V

    return-void

    .line 1656
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lads_mobile_sdk/hw3;->-$$Nest$smc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)Z
    .registers 5

    .line 1649
    sget-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    if-eqz v0, :cond_9

    .line 1650
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/hw3;->-$$Nest$smb(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 1652
    :cond_9
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/hw3;->-$$Nest$smc(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;J)D
    .registers 4

    .line 824
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->e(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public b()Z
    .registers 2

    .line 1665
    invoke-super {p0}, Lads_mobile_sdk/hw3$e;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;J)F
    .registers 4

    .line 814
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->d(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

###### Class ads_mobile_sdk.hw3.d (ads_mobile_sdk.hw3$d)
.class public final Lads_mobile_sdk/hw3$d;
.super Lads_mobile_sdk/hw3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 621
    invoke-direct {p0, p1}, Lads_mobile_sdk/hw3$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;JD)V
    .registers 12

    .line 2025
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public a(Ljava/lang/Object;JF)V
    .registers 6

    .line 2705
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public a(Ljava/lang/Object;JZ)V
    .registers 6

    .line 1335
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public a()Z
    .registers 7

    .line 3336
    const-class v0, Ljava/lang/Object;

    invoke-super {p0}, Lads_mobile_sdk/hw3$e;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 3341
    :cond_a
    :try_start_a
    iget-object v1, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3342
    const-string v3, "getByte"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3343
    const-string v3, "putByte"

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3344
    const-string v3, "getBoolean"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3345
    const-string v3, "putBoolean"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3346
    const-string v3, "getFloat"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3347
    const-string v3, "putFloat"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3348
    const-string v3, "getDouble"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3349
    const-string v3, "putDouble"

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_62
    .catchall {:try_start_a .. :try_end_62} :catchall_64

    const/4 v0, 0x1

    return v0

    :catchall_64
    move-exception v0

    .line 3353
    invoke-static {v0}, Lads_mobile_sdk/hw3;->-$$Nest$sma(Ljava/lang/Throwable;)V

    return v2
.end method

.method public a(Ljava/lang/Object;J)Z
    .registers 5

    .line 665
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;J)D
    .registers 5

    .line 685
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public b()Z
    .registers 8

    .line 1380
    const-class v0, Ljava/lang/Object;

    const-string v1, "copyMemory"

    invoke-super {p0}, Lads_mobile_sdk/hw3$e;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    .line 1385
    :cond_c
    :try_start_c
    iget-object v2, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1386
    const-string v4, "getByte"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1387
    const-string v4, "putByte"

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1388
    const-string v4, "getInt"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1389
    const-string v4, "putInt"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1390
    const-string v4, "getLong"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1391
    const-string v4, "putLong"

    filled-new-array {v5, v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1392
    filled-new-array {v5, v5, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1393
    filled-new-array {v0, v5, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_5e

    const/4 v0, 0x1

    return v0

    :catchall_5e
    move-exception v0

    .line 1397
    invoke-static {v0}, Lads_mobile_sdk/hw3;->-$$Nest$sma(Ljava/lang/Throwable;)V

    return v3
.end method

.method public c(Ljava/lang/Object;J)F
    .registers 5

    .line 675
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

###### Class ads_mobile_sdk.hw3.e (ads_mobile_sdk.hw3$e)
.class abstract Lads_mobile_sdk/hw3$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field a:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/reflect/Field;)J
    .registers 4

    .line 996
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a(Ljava/lang/Object;JD)V
.end method

.method public abstract a(Ljava/lang/Object;JF)V
.end method

.method public final a(Ljava/lang/Object;JI)V
    .registers 6

    .line 1541
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JJ)V
    .registers 12

    .line 2094
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    .line 2667
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public abstract a(Ljava/lang/Object;JZ)V
.end method

.method public a()Z
    .registers 7

    .line 3181
    const-class v0, Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    iget-object v2, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    .line 3185
    :cond_a
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3186
    const-string v4, "objectFieldOffset"

    const-class v5, Ljava/lang/reflect/Field;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3187
    const-string v4, "arrayBaseOffset"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3188
    const-string v4, "arrayIndexScale"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3189
    const-string v0, "getInt"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3190
    const-string v0, "putInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3191
    const-string v0, "getLong"

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3192
    const-string v0, "putLong"

    filled-new-array {v1, v4, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3193
    const-string v0, "getObject"

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 3194
    const-string v0, "putObject"

    filled-new-array {v1, v4, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_65
    .catchall {:try_start_a .. :try_end_65} :catchall_67

    const/4 v0, 0x1

    return v0

    :catchall_67
    move-exception v0

    .line 3198
    invoke-static {v0}, Lads_mobile_sdk/hw3;->-$$Nest$sma(Ljava/lang/Throwable;)V

    return v3
.end method

.method public abstract a(Ljava/lang/Object;J)Z
.end method

.method public abstract b(Ljava/lang/Object;J)D
.end method

.method public final b(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public b()Z
    .registers 6

    .line 1085
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1089
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1091
    const-string v2, "objectFieldOffset"

    const-class v3, Ljava/lang/reflect/Field;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1092
    const-string v2, "getLong"

    const-class v3, Ljava/lang/Object;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1094
    invoke-static {}, Lads_mobile_sdk/hw3;->-$$Nest$sma()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2b

    if-nez v0, :cond_29

    return v1

    :cond_29
    const/4 v0, 0x1

    return v0

    :catchall_2b
    move-exception v0

    .line 1100
    invoke-static {v0}, Lads_mobile_sdk/hw3;->-$$Nest$sma(Ljava/lang/Throwable;)V

    return v1
.end method

.method public abstract c(Ljava/lang/Object;J)F
.end method

.method public final d(Ljava/lang/Object;J)I
    .registers 5

    .line 541
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;J)J
    .registers 5

    .line 549
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final f(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    .line 569
    iget-object v0, p0, Lads_mobile_sdk/hw3$e;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
