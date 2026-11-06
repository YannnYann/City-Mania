###### Class com.explorestack.protobuf.UnsafeUtil (com.explorestack.protobuf.UnsafeUtil)
.class public final Lcom/explorestack/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/UnsafeUtil$Android32MemoryAccessor;,
        Lcom/explorestack/protobuf/UnsafeUtil$Android64MemoryAccessor;,
        Lcom/explorestack/protobuf/UnsafeUtil$JvmMemoryAccessor;,
        Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;
    }
.end annotation


# static fields
.field public static final BOOLEAN_ARRAY_BASE_OFFSET:J

.field public static final BOOLEAN_ARRAY_INDEX_SCALE:J

.field public static final BUFFER_ADDRESS_OFFSET:J

.field public static final BYTE_ARRAY_ALIGNMENT:I

.field public static final BYTE_ARRAY_BASE_OFFSET:J

.field public static final DOUBLE_ARRAY_BASE_OFFSET:J

.field public static final DOUBLE_ARRAY_INDEX_SCALE:J

.field public static final FLOAT_ARRAY_BASE_OFFSET:J

.field public static final FLOAT_ARRAY_INDEX_SCALE:J

.field public static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field public static final INT_ARRAY_BASE_OFFSET:J

.field public static final INT_ARRAY_INDEX_SCALE:J

.field public static final IS_ANDROID_32:Z

.field public static final IS_ANDROID_64:Z

.field public static final IS_BIG_ENDIAN:Z

.field public static final LONG_ARRAY_BASE_OFFSET:J

.field public static final LONG_ARRAY_INDEX_SCALE:J

.field public static final MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

.field public static final MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final OBJECT_ARRAY_BASE_OFFSET:J

.field public static final OBJECT_ARRAY_INDEX_SCALE:J

.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 44
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/Android;->getMemoryClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 46
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    .line 47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->getMemoryAccessor()Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    .line 50
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    sput-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 51
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->supportsUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 53
    const-class v0, [B

    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/explorestack/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 57
    const-class v2, [Z

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/explorestack/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_BASE_OFFSET:J

    .line 58
    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/explorestack/protobuf/UnsafeUtil;->BOOLEAN_ARRAY_INDEX_SCALE:J

    .line 60
    const-class v2, [I

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/explorestack/protobuf/UnsafeUtil;->INT_ARRAY_BASE_OFFSET:J

    .line 61
    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/explorestack/protobuf/UnsafeUtil;->INT_ARRAY_INDEX_SCALE:J

    .line 63
    const-class v2, [J

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/explorestack/protobuf/UnsafeUtil;->LONG_ARRAY_BASE_OFFSET:J

    .line 64
    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/explorestack/protobuf/UnsafeUtil;->LONG_ARRAY_INDEX_SCALE:J

    .line 66
    const-class v2, [F

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/explorestack/protobuf/UnsafeUtil;->FLOAT_ARRAY_BASE_OFFSET:J

    .line 67
    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/explorestack/protobuf/UnsafeUtil;->FLOAT_ARRAY_INDEX_SCALE:J

    .line 69
    const-class v2, [D

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/explorestack/protobuf/UnsafeUtil;->DOUBLE_ARRAY_BASE_OFFSET:J

    .line 70
    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/explorestack/protobuf/UnsafeUtil;->DOUBLE_ARRAY_INDEX_SCALE:J

    .line 72
    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/explorestack/protobuf/UnsafeUtil;->OBJECT_ARRAY_BASE_OFFSET:J

    .line 73
    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/explorestack/protobuf/UnsafeUtil;->OBJECT_ARRAY_INDEX_SCALE:J

    .line 75
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/explorestack/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 79
    sput v0, Lcom/explorestack/protobuf/UnsafeUtil;->BYTE_ARRAY_ALIGNMENT:I

    .line 82
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b1

    const/4 v0, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v0, 0x0

    :goto_b2
    sput-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Throwable;)V
    .registers 1

    .line 43
    invoke-static {p0}, Lcom/explorestack/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/reflect/Field;
    .registers 1

    .line 43
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200(Ljava/lang/Object;J)B
    .registers 3

    .line 43
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Ljava/lang/Object;J)B
    .registers 3

    .line 43
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Ljava/lang/Object;JB)V
    .registers 4

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static synthetic access$500(Ljava/lang/Object;JB)V
    .registers 4

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static synthetic access$600(Ljava/lang/Object;J)Z
    .registers 3

    .line 43
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Ljava/lang/Object;J)Z
    .registers 3

    .line 43
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Ljava/lang/Object;JZ)V
    .registers 4

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static synthetic access$900(Ljava/lang/Object;JZ)V
    .registers 4

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static addressOffset(Ljava/nio/ByteBuffer;)J
    .registers 4

    .line 279
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/explorestack/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 101
    :try_start_0
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static arrayBaseOffset(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 112
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static arrayIndexScale(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 116
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static bufferAddressField()Ljava/lang/reflect/Field;
    .registers 3

    .line 371
    invoke-static {}, Lcom/explorestack/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    const-class v1, Ljava/nio/Buffer;

    if-eqz v0, :cond_11

    .line 374
    const-string v0, "effectiveDirectAddress"

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 379
    :cond_11
    const-string v0, "address"

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 380
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_22

    return-object v0

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public static copyMemory(J[BJJ)V
    .registers 15

    .line 246
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory(J[BJJ)V

    return-void
.end method

.method public static determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 350
    const-class v0, [B

    invoke-static {}, Lcom/explorestack/protobuf/Android;->isOnAndroidDevice()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 354
    :cond_a
    :try_start_a
    sget-object v1, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 355
    const-string v3, "peekLong"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 356
    const-string v3, "pokeLong"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 357
    const-string v3, "pokeInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v5, v4}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 358
    const-string v3, "peekInt"

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 359
    const-string v3, "pokeByte"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 360
    const-string v3, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 361
    const-string v3, "pokeByteArray"

    filled-new-array {p0, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 362
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

.method public static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

    .line 471
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

.method public static fieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3

    if-eqz p0, :cond_c

    .line 462
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_7

    goto :goto_c

    :cond_7
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0

    :cond_c
    :goto_c
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getBoolean(Ljava/lang/Object;J)Z
    .registers 4

    .line 144
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static getBooleanBigEndian(Ljava/lang/Object;J)Z
    .registers 3

    .line 1015
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static getBooleanLittleEndian(Ljava/lang/Object;J)Z
    .registers 3

    .line 1019
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static getByte(J)B
    .registers 3

    .line 254
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getByte(J)B

    move-result p0

    return p0
.end method

.method public static getByte([BJ)B
    .registers 6

    .line 176
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/explorestack/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static getByteBigEndian(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 993
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

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

.method public static getByteLittleEndian(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 997
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

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

.method public static getDouble(Ljava/lang/Object;J)D
    .registers 4

    .line 160
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getFloat(Ljava/lang/Object;J)F
    .registers 4

    .line 152
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/Object;J)I
    .registers 4

    .line 128
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getLong(J)J
    .registers 3

    .line 270
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Ljava/lang/Object;J)J
    .registers 4

    .line 136
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMemoryAccessor()Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;
    .registers 3

    .line 319
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 322
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/Android;->isOnAndroidDevice()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 323
    sget-boolean v2, Lcom/explorestack/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    if-eqz v2, :cond_16

    .line 324
    new-instance v1, Lcom/explorestack/protobuf/UnsafeUtil$Android64MemoryAccessor;

    invoke-direct {v1, v0}, Lcom/explorestack/protobuf/UnsafeUtil$Android64MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v1

    .line 325
    :cond_16
    sget-boolean v2, Lcom/explorestack/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    if-eqz v2, :cond_1f

    .line 326
    new-instance v1, Lcom/explorestack/protobuf/UnsafeUtil$Android32MemoryAccessor;

    invoke-direct {v1, v0}, Lcom/explorestack/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    :cond_1f
    return-object v1

    .line 332
    :cond_20
    new-instance v1, Lcom/explorestack/protobuf/UnsafeUtil$JvmMemoryAccessor;

    invoke-direct {v1, v0}, Lcom/explorestack/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-object v1
.end method

.method public static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 168
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 2

    .line 283
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .registers 1

    .line 292
    :try_start_0
    new-instance v0, Lcom/explorestack/protobuf/UnsafeUtil$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/UnsafeUtil$1;-><init>()V

    .line 293
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

.method public static hasUnsafeArrayOperations()Z
    .registers 1

    .line 87
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method public static hasUnsafeByteBufferOperations()Z
    .registers 1

    .line 91
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method public static logMissingMethod(Ljava/lang/Throwable;)V
    .registers 5

    .line 1031
    const-class v0, Lcom/explorestack/protobuf/UnsafeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1032
    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 3

    .line 108
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static putBoolean(Ljava/lang/Object;JZ)V
    .registers 5

    .line 148
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static putBooleanBigEndian(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    .line 1023
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    .line 1027
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static putByte([BJB)V
    .registers 7

    .line 180
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v1, Lcom/explorestack/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static putByteBigEndian(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1001
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

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

    .line 1004
    invoke-static {p0, v0, v1, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static putByteLittleEndian(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 1008
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

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

    .line 1011
    invoke-static {p0, v0, v1, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static putDouble(Ljava/lang/Object;JD)V
    .registers 11

    .line 164
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static putFloat(Ljava/lang/Object;JF)V
    .registers 5

    .line 156
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static putInt(Ljava/lang/Object;JI)V
    .registers 5

    .line 132
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static putLong(Ljava/lang/Object;JJ)V
    .registers 11

    .line 140
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 172
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static supportsUnsafeArrayOperations()Z
    .registers 1

    .line 336
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 339
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    move-result v0

    return v0
.end method

.method public static supportsUnsafeByteBufferOperations()Z
    .registers 1

    .line 343
    sget-object v0, Lcom/explorestack/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 346
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

###### Class com.explorestack.protobuf.UnsafeUtil.AnonymousClass1 (com.explorestack.protobuf.UnsafeUtil$1)
.class public final Lcom/explorestack/protobuf/UnsafeUtil$1;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/explorestack/protobuf/UnsafeUtil$1;->run()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/misc/Unsafe;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    const-class v0, Lsun/misc/Unsafe;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x0

    if-ge v3, v2, :cond_25

    aget-object v5, v1, v3

    const/4 v6, 0x1

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 301
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 302
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 303
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

###### Class com.explorestack.protobuf.UnsafeUtil.Android32MemoryAccessor (com.explorestack.protobuf.UnsafeUtil$Android32MemoryAccessor)
.class public final Lcom/explorestack/protobuf/UnsafeUtil$Android32MemoryAccessor;
.super Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Android32MemoryAccessor"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 878
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .registers 8

    .line 983
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    .line 910
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 911
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$600(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 913
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .registers 3

    .line 953
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .registers 5

    .line 892
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 893
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$200(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 895
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .registers 4

    .line 938
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .registers 4

    .line 928
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .registers 3

    .line 973
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 884
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    return-object v0
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    .line 919
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 920
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    return-void

    .line 922
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$900(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .registers 6

    .line 901
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 902
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$400(Ljava/lang/Object;JB)V

    return-void

    .line 904
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .registers 12

    .line 943
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .registers 5

    .line 933
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class com.explorestack.protobuf.UnsafeUtil.Android64MemoryAccessor (com.explorestack.protobuf.UnsafeUtil$Android64MemoryAccessor)
.class public final Lcom/explorestack/protobuf/UnsafeUtil$Android64MemoryAccessor;
.super Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Android64MemoryAccessor"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 753
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .registers 8

    .line 858
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    .line 785
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 786
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$600(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 788
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .registers 3

    .line 828
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .registers 5

    .line 767
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_9

    .line 768
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$200(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 770
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .registers 4

    .line 813
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .registers 4

    .line 803
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .registers 3

    .line 848
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 759
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    return-object v0
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    .line 794
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 795
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    return-void

    .line 797
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$900(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .registers 6

    .line 776
    sget-boolean v0, Lcom/explorestack/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    if-eqz v0, :cond_8

    .line 777
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$400(Ljava/lang/Object;JB)V

    return-void

    .line 779
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .registers 12

    .line 818
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .registers 5

    .line 808
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class com.explorestack.protobuf.UnsafeUtil.JvmMemoryAccessor (com.explorestack.protobuf.UnsafeUtil$JvmMemoryAccessor)
.class public final Lcom/explorestack/protobuf/UnsafeUtil$JvmMemoryAccessor;
.super Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JvmMemoryAccessor"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 613
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .registers 17

    .line 741
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/explorestack/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v5, v1, p4

    const/4 v1, 0x0

    move-wide v2, p1

    move-object v4, p3

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    .line 657
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .registers 4

    .line 711
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .registers 5

    .line 647
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .registers 5

    .line 677
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .registers 5

    .line 667
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .registers 4

    .line 731
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 5

    .line 618
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    .line 662
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .registers 6

    .line 652
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .registers 12

    .line 682
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .registers 6

    .line 672
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public supportsUnsafeArrayOperations()Z
    .registers 7

    .line 623
    const-class v0, Ljava/lang/Object;

    invoke-super {p0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 628
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 629
    const-string v3, "getByte"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 630
    const-string v3, "putByte"

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 631
    const-string v3, "getBoolean"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 632
    const-string v3, "putBoolean"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 633
    const-string v3, "getFloat"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 634
    const-string v3, "putFloat"

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 635
    const-string v3, "getDouble"

    filled-new-array {v0, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 636
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

    .line 640
    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    return v2
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 8

    .line 687
    const-class v0, Ljava/lang/Object;

    const-string v1, "copyMemory"

    invoke-super {p0}, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeByteBufferOperations()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    .line 692
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 693
    const-string v4, "getByte"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 694
    const-string v4, "putByte"

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 695
    const-string v4, "getInt"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 696
    const-string v4, "putInt"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 697
    const-string v4, "getLong"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 698
    const-string v4, "putLong"

    filled-new-array {v5, v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 699
    filled-new-array {v5, v5, v5}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 700
    filled-new-array {v0, v5, v0, v5, v5}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_5e

    const/4 v0, 0x1

    return v0

    :catchall_5e
    move-exception v0

    .line 704
    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    return v3
.end method

###### Class com.explorestack.protobuf.UnsafeUtil.MemoryAccessor (com.explorestack.protobuf.UnsafeUtil$MemoryAccessor)
.class public abstract Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MemoryAccessor"
.end annotation


# instance fields
.field public unsafe:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final arrayBaseOffset(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final arrayIndexScale(Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public abstract copyMemory(J[BJJ)V
.end method

.method public abstract getBoolean(Ljava/lang/Object;J)Z
.end method

.method public abstract getByte(J)B
.end method

.method public abstract getByte(Ljava/lang/Object;J)B
.end method

.method public abstract getDouble(Ljava/lang/Object;J)D
.end method

.method public abstract getFloat(Ljava/lang/Object;J)F
.end method

.method public final getInt(Ljava/lang/Object;J)I
    .registers 5

    .line 533
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public abstract getLong(J)J
.end method

.method public final getLong(Ljava/lang/Object;J)J
    .registers 5

    .line 541
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    .line 561
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public final objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public abstract putByte(Ljava/lang/Object;JB)V
.end method

.method public abstract putDouble(Ljava/lang/Object;JD)V
.end method

.method public abstract putFloat(Ljava/lang/Object;JF)V
.end method

.method public final putInt(Ljava/lang/Object;JI)V
    .registers 6

    .line 537
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final putLong(Ljava/lang/Object;JJ)V
    .registers 12

    .line 545
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    .line 565
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public supportsUnsafeArrayOperations()Z
    .registers 7

    .line 506
    const-class v0, Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    iget-object v2, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    .line 510
    :cond_a
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 511
    const-string v4, "objectFieldOffset"

    const-class v5, Ljava/lang/reflect/Field;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 512
    const-string v4, "arrayBaseOffset"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 513
    const-string v4, "arrayIndexScale"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 514
    const-string v0, "getInt"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 515
    const-string v0, "putInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v4, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 516
    const-string v0, "getLong"

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 517
    const-string v0, "putLong"

    filled-new-array {v1, v4, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 518
    const-string v0, "getObject"

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 519
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

    .line 523
    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    return v3
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/explorestack/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 577
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 579
    const-string v2, "objectFieldOffset"

    const-class v3, Ljava/lang/reflect/Field;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 580
    const-string v2, "getLong"

    const-class v3, Ljava/lang/Object;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 582
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->access$100()Ljava/lang/reflect/Field;

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

    .line 588
    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->access$000(Ljava/lang/Throwable;)V

    return v1
.end method
