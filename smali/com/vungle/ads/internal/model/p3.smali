###### Class com.vungle.ads.internal.model.p3 (com.vungle.ads.internal.model.p3)
.class public final Lcom/vungle/ads/internal/model/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/o3;


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/c3;

.field public final b:Lcom/vungle/ads/internal/model/t1;

.field public final c:Lcom/vungle/ads/internal/model/n1;

.field public final d:Lcom/vungle/ads/internal/model/m3;

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/o3;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/o3;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/p3;->Companion:Lcom/vungle/ads/internal/model/o3;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/t1;Lcom/vungle/ads/internal/model/n1;Lcom/vungle/ads/internal/model/m3;I)V
    .registers 9

    and-int/lit8 v0, p1, 0x11

    const/16 v1, 0x11

    if-eq v1, v0, :cond_f

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/n3;->a:Lcom/vungle/ads/internal/model/n3;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/n3;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/p3;->a:Lcom/vungle/ads/internal/model/c3;

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_1c

    iput-object v0, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    goto :goto_1e

    :cond_1c
    iput-object p3, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    :goto_1e
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_25

    iput-object v0, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    goto :goto_27

    :cond_25
    iput-object p4, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    :goto_27
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2e

    iput-object v0, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    goto :goto_30

    :cond_2e
    iput-object p5, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    :goto_30
    iput p6, p0, Lcom/vungle/ads/internal/model/p3;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/t1;Lcom/vungle/ads/internal/model/n1;Lcom/vungle/ads/internal/model/m3;I)V
    .registers 7

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/model/p3;->a:Lcom/vungle/ads/internal/model/c3;

    .line 5
    iput-object p2, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    .line 6
    iput-object p3, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    .line 7
    iput-object p4, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    .line 8
    iput p5, p0, Lcom/vungle/ads/internal/model/p3;->e:I

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/model/p3;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 6

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/x2;->a:Lcom/vungle/ads/internal/model/x2;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->a:Lcom/vungle/ads/internal/model/c3;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_23

    :cond_1f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    if-eqz v1, :cond_2a

    :goto_23
    sget-object v1, Lcom/vungle/ads/internal/model/r1;->a:Lcom/vungle/ads/internal/model/r1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2a
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_36

    :cond_32
    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    if-eqz v1, :cond_3d

    :goto_36
    sget-object v1, Lcom/vungle/ads/internal/model/l1;->a:Lcom/vungle/ads/internal/model/l1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3d
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_49

    :cond_45
    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    if-eqz v1, :cond_50

    :goto_49
    sget-object v1, Lcom/vungle/ads/internal/model/k3;->a:Lcom/vungle/ads/internal/model/k3;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_50
    iget p0, p0, Lcom/vungle/ads/internal/model/p3;->e:I

    const/4 v0, 0x4

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/p3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/p3;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->a:Lcom/vungle/ads/internal/model/c3;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/p3;->a:Lcom/vungle/ads/internal/model/c3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget v1, p0, Lcom/vungle/ads/internal/model/p3;->e:I

    iget p1, p1, Lcom/vungle/ads/internal/model/p3;->e:I

    if-eq v1, p1, :cond_3f

    return v2

    :cond_3f
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/model/p3;->a:Lcom/vungle/ads/internal/model/c3;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/c3;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/t1;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/n1;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    if-nez v1, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/m3;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/p3;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "RtbToken(device="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->a:Lcom/vungle/ads/internal/model/c3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->b:Lcom/vungle/ads/internal/model/t1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->c:Lcom/vungle/ads/internal/model/n1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/p3;->d:Lcom/vungle/ads/internal/model/m3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ordinalView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/p3;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
