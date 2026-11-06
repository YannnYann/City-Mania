###### Class com.vungle.ads.internal.model.u1 (com.vungle.ads.internal.model.u1)
.class public final Lcom/vungle/ads/internal/model/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/e1;


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/c3;

.field public final b:Lcom/vungle/ads/internal/model/m0;

.field public final c:Lcom/vungle/ads/internal/model/t1;

.field public d:Lcom/vungle/ads/internal/model/n1;

.field public e:Lcom/vungle/ads/internal/model/q1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/e1;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/e1;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/u1;->Companion:Lcom/vungle/ads/internal/model/e1;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/m0;Lcom/vungle/ads/internal/model/t1;Lcom/vungle/ads/internal/model/n1;Lcom/vungle/ads/internal/model/q1;)V
    .registers 9

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_e

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/r0;->a:Lcom/vungle/ads/internal/model/r0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/r0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_1b

    iput-object v0, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    goto :goto_1d

    :cond_1b
    iput-object p3, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    :goto_1d
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_24

    iput-object v0, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    goto :goto_26

    :cond_24
    iput-object p4, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    :goto_26
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2d

    iput-object v0, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    goto :goto_2f

    :cond_2d
    iput-object p5, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    :goto_2f
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_36

    iput-object v0, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    return-void

    :cond_36
    iput-object p6, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/m0;Lcom/vungle/ads/internal/model/t1;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/model/u1;-><init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/m0;Lcom/vungle/ads/internal/model/t1;Lcom/vungle/ads/internal/model/n1;Lcom/vungle/ads/internal/model/q1;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/m0;Lcom/vungle/ads/internal/model/t1;Lcom/vungle/ads/internal/model/n1;Lcom/vungle/ads/internal/model/q1;)V
    .registers 7

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    .line 5
    iput-object p2, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    .line 6
    iput-object p3, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    .line 7
    iput-object p4, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    .line 8
    iput-object p5, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/model/u1;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 6

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/x2;->a:Lcom/vungle/ads/internal/model/x2;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_23

    :cond_1f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    if-eqz v1, :cond_2a

    :goto_23
    sget-object v1, Lcom/vungle/ads/internal/model/k0;->a:Lcom/vungle/ads/internal/model/k0;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2a
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_36

    :cond_32
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    if-eqz v1, :cond_3d

    :goto_36
    sget-object v1, Lcom/vungle/ads/internal/model/r1;->a:Lcom/vungle/ads/internal/model/r1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3d
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_49

    :cond_45
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    if-eqz v1, :cond_50

    :goto_49
    sget-object v1, Lcom/vungle/ads/internal/model/l1;->a:Lcom/vungle/ads/internal/model/l1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_50
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_5c

    :cond_58
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    if-eqz v1, :cond_63

    :goto_5c
    sget-object v1, Lcom/vungle/ads/internal/model/o1;->a:Lcom/vungle/ads/internal/model/o1;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_63
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/model/c3;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    return-object v0
.end method

.method public final a(Lcom/vungle/ads/internal/model/n1;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/model/q1;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    return-void
.end method

.method public final b()Lcom/vungle/ads/internal/model/n1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    return-object v0
.end method

.method public final c()Lcom/vungle/ads/internal/model/q1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    return-object v0
.end method

.method public final d()Lcom/vungle/ads/internal/model/t1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/u1;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/u1;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/c3;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/m0;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/t1;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    if-nez v1, :cond_29

    move v1, v2

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/n1;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    if-nez v1, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/q1;->hashCode()I

    move-result v2

    :goto_39
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "CommonRequestBody(device="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->a:Lcom/vungle/ads/internal/model/c3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->b:Lcom/vungle/ads/internal/model/m0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->c:Lcom/vungle/ads/internal/model/t1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/u1;->e:Lcom/vungle/ads/internal/model/q1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
