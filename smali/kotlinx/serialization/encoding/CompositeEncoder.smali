###### Class kotlinx.serialization.encoding.CompositeEncoder (kotlinx.serialization.encoding.CompositeEncoder)
.class public interface abstract Lkotlinx/serialization/encoding/CompositeEncoder;
.super Ljava/lang/Object;
.source "Encoding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/encoding/CompositeEncoder$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V
.end method

.method public abstract encodeByteElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IB)V
.end method

.method public abstract encodeCharElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IC)V
.end method

.method public abstract encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V
.end method

.method public abstract encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V
.end method

.method public abstract encodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Encoder;
.end method

.method public abstract encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V
.end method

.method public abstract encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V
.end method

.method public abstract encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeShortElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IS)V
.end method

.method public abstract encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
.end method

.method public abstract endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
.end method

.method public abstract shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
.end method

###### Class kotlinx.serialization.encoding.CompositeEncoder.DefaultImpls (kotlinx.serialization.encoding.CompositeEncoder$DefaultImpls)
.class public final Lkotlinx/serialization/encoding/CompositeEncoder$DefaultImpls;
.super Ljava/lang/Object;
.source "Encoding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/encoding/CompositeEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static shouldEncodeElementDefault(Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 3

    .line 0
    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
