###### Class com.vungle.ads.internal.model.v2 (com.vungle.ads.internal.model.v2)
.class public final Lcom/vungle/ads/internal/model/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/u2;


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/l2;

.field public final b:Lcom/vungle/ads/internal/model/p2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/u2;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/u2;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/v2;->Companion:Lcom/vungle/ads/internal/model/u2;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/l2;Lcom/vungle/ads/internal/model/p2;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iput-object v1, p0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    goto :goto_d

    :cond_b
    iput-object p2, p0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    :goto_d
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_14

    iput-object v1, p0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    return-void

    :cond_14
    iput-object p3, p0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/model/v2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 6

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    if-eqz v1, :cond_22

    :goto_1b
    sget-object v1, Lcom/vungle/ads/internal/model/j2;->a:Lcom/vungle/ads/internal/model/j2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2e

    :cond_2a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    if-eqz v1, :cond_35

    :goto_2e
    sget-object v1, Lcom/vungle/ads/internal/model/m2;->a:Lcom/vungle/ads/internal/model/m2;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
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
    instance-of v1, p1, Lcom/vungle/ads/internal/model/v2;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/v2;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/l2;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    if-nez v2, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/p2;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "UserPrivacy(gdpr="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/v2;->a:Lcom/vungle/ads/internal/model/l2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/v2;->b:Lcom/vungle/ads/internal/model/p2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
