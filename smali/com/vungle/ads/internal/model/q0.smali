###### Class com.vungle.ads.internal.model.q0 (com.vungle.ads.internal.model.q0)
.class public final Lcom/vungle/ads/internal/model/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/p0;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Lkotlinx/serialization/json/Json;

.field public final e:Lcom/vungle/ads/internal/model/i0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/p0;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/p0;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/q0;->Companion:Lcom/vungle/ads/internal/model/p0;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/i0;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    goto :goto_d

    :cond_b
    iput-object p2, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    :goto_d
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_14

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    goto :goto_16

    :cond_14
    iput-object p3, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    :goto_16
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1d

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    goto :goto_1f

    :cond_1d
    iput-object p4, p0, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    .line 9
    :goto_1f
    sget-object p2, Lcom/vungle/ads/internal/model/o0;->a:Lcom/vungle/ads/internal/model/o0;

    const/4 p3, 0x1

    invoke-static {v1, p2, p3, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/vungle/ads/internal/model/q0;->d:Lkotlinx/serialization/json/Json;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_53

    .line 24
    iget-object p1, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    if-eqz p1, :cond_50

    .line 26
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/q0;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 68
    invoke-interface {p2}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p3

    .line 69
    const-class p4, Lcom/vungle/ads/internal/model/i0;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object p4

    invoke-static {p3, p4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object p3

    .line 70
    const-string p4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p2, p3, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vungle/ads/internal/model/i0;

    .line 72
    :cond_50
    iput-object v1, p0, Lcom/vungle/ads/internal/model/q0;->e:Lcom/vungle/ads/internal/model/i0;

    return-void

    :cond_53
    iput-object p5, p0, Lcom/vungle/ads/internal/model/q0;->e:Lcom/vungle/ads/internal/model/i0;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/model/q0;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 9

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1b

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_22

    :goto_1b
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2e

    :cond_2a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    if-eqz v1, :cond_35

    :goto_2e
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_41

    :cond_3d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    if-eqz v1, :cond_4d

    :goto_41
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4d
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_84

    :cond_55
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->e:Lcom/vungle/ads/internal/model/i0;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    if-eqz v2, :cond_7d

    .line 17
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/q0;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 18
    iget-object v3, p0, Lcom/vungle/ads/internal/model/q0;->d:Lkotlinx/serialization/json/Json;

    .line 19
    invoke-interface {v3}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    .line 20
    const-class v5, Lcom/vungle/ads/internal/model/i0;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    .line 21
    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {v3, v4, v2}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/model/i0;

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    .line 23
    :goto_7e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 24
    :goto_84
    sget-object v1, Lcom/vungle/ads/internal/model/c;->a:Lcom/vungle/ads/internal/model/c;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/q0;->e:Lcom/vungle/ads/internal/model/i0;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8b
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/model/i0;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/vungle/ads/internal/model/q0;->e:Lcom/vungle/ads/internal/model/i0;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    .line 2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    :try_start_14
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/16 v5, 0x400

    invoke-direct {v0, v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3c

    .line 5
    :try_start_1b
    new-array v5, v5, [B

    .line 7
    :goto_1d
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2a

    .line 8
    invoke-virtual {v3, v5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1d

    :catchall_28
    move-exception v1

    goto :goto_3e

    .line 10
    :cond_2a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_28

    .line 11
    :try_start_2c
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3c

    .line 19
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_3c
    move-exception v0

    goto :goto_44

    .line 29
    :goto_3e
    :try_start_3e
    throw v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v2

    :try_start_40
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_3c

    .line 30
    :goto_44
    :try_start_44
    throw v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v1

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_4a
    return-object v2
.end method

.method public final c()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/q0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/q0;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "BidPayload(version="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adunit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", impression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q0;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
