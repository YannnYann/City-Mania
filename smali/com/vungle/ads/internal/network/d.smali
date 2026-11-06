###### Class com.vungle.ads.internal.network.d (com.vungle.ads.internal.network.d)
.class public final Lcom/vungle/ads/internal/network/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/c;


# instance fields
.field public final a:Lcom/vungle/ads/internal/network/g;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/network/c;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/network/c;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/c;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/network/g;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;)V
    .registers 10

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-eq v1, v0, :cond_f

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/network/b;->a:Lcom/vungle/ads/internal/network/b;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/b;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_18

    .line 4
    sget-object p2, Lcom/vungle/ads/internal/network/g;->a:Lcom/vungle/ads/internal/network/g;

    .line 5
    :cond_18
    iput-object p2, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_22

    iput-object v0, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    goto :goto_24

    :cond_22
    iput-object p3, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    :goto_24
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2b

    iput-object v0, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    iput-object p4, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    :goto_2d
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_35

    const/4 p2, 0x0

    iput p2, p0, Lcom/vungle/ads/internal/network/d;->d:I

    goto :goto_37

    :cond_35
    iput p5, p0, Lcom/vungle/ads/internal/network/d;->d:I

    :goto_37
    iput p6, p0, Lcom/vungle/ads/internal/network/d;->e:I

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_40

    iput-object v0, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    return-void

    :cond_40
    iput-object p7, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/network/g;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;)V
    .registers 8

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    .line 10
    iput-object p2, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    .line 11
    iput-object p3, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    .line 12
    iput p4, p0, Lcom/vungle/ads/internal/network/d;->d:I

    .line 13
    iput p5, p0, Lcom/vungle/ads/internal/network/d;->e:I

    .line 14
    iput-object p6, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/network/d;I)Lcom/vungle/ads/internal/network/d;
    .registers 9

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    iget-object v2, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    iget v5, p0, Lcom/vungle/ads/internal/network/d;->e:I

    iget-object v6, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    .line 1
    const-string p0, "method"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/network/d;

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/vungle/ads/internal/network/d;-><init>(Lcom/vungle/ads/internal/network/g;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lcom/vungle/ads/internal/network/d;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 6

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1d

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    .line 5
    sget-object v2, Lcom/vungle/ads/internal/network/g;->a:Lcom/vungle/ads/internal/network/g;

    if-eq v1, v2, :cond_24

    .line 6
    :goto_1d
    sget-object v1, Lcom/vungle/ads/internal/network/e;->a:Lcom/vungle/ads/internal/network/e;

    iget-object v2, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_24
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_30

    :cond_2c
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    if-eqz v1, :cond_3c

    :goto_30
    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3c
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_48

    :cond_44
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_4f

    :goto_48
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4f
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_5b

    :cond_57
    iget v1, p0, Lcom/vungle/ads/internal/network/d;->d:I

    if-eqz v1, :cond_60

    :goto_5b
    iget v1, p0, Lcom/vungle/ads/internal/network/d;->d:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_60
    iget v0, p0, Lcom/vungle/ads/internal/network/d;->e:I

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_72

    :cond_6e
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    if-eqz v1, :cond_79

    :goto_72
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_79
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/vungle/ads/internal/network/d;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/network/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/network/d;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    iget-object v3, p1, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/vungle/ads/internal/network/d;->d:I

    iget v3, p1, Lcom/vungle/ads/internal/network/d;->d:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lcom/vungle/ads/internal/network/d;->e:I

    iget v3, p1, Lcom/vungle/ads/internal/network/d;->e:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/network/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/vungle/ads/internal/network/d;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    if-nez v1, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "FailedTpat(method="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->a:Lcom/vungle/ads/internal/network/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryAttempt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/network/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/network/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tpatKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
