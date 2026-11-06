###### Class com.vungle.ads.internal.model.q1 (com.vungle.ads.internal.model.q1)
.class public final Lcom/vungle/ads/internal/model/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/p1;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lcom/vungle/ads/internal/model/u0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vungle/ads/internal/model/d1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/p1;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/p1;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/q1;->Companion:Lcom/vungle/ads/internal/model/p1;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/vungle/ads/internal/model/u0;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/d1;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    goto :goto_d

    :cond_b
    iput-object p2, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    :goto_d
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_14

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    goto :goto_16

    :cond_14
    iput-object p3, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    :goto_16
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1d

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    iput-object p4, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    :goto_1f
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_26

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    goto :goto_28

    :cond_26
    iput-object p5, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    :goto_28
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2f

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    iput-object p6, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    :goto_31
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_38

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    iput-object p7, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    :goto_3a
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_41

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    goto :goto_43

    :cond_41
    iput-object p8, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    :goto_43
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_4a

    iput-object v1, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    return-void

    :cond_4a
    iput-object p9, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/vungle/ads/internal/model/u0;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/d1;)V
    .registers 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    .line 9
    iput-object p3, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    .line 13
    iput-object p5, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    .line 15
    iput-object p7, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/d1;I)V
    .registers 21

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v4, v2

    goto :goto_a

    :cond_9
    move-object v4, p1

    :goto_a
    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_10

    move-object v6, v2

    goto :goto_11

    :cond_10
    move-object v6, p2

    :goto_11
    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_17

    move-object v7, v2

    goto :goto_18

    :cond_17
    move-object v7, p3

    :goto_18
    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_1e

    move-object v8, v2

    goto :goto_20

    :cond_1e
    move-object/from16 v8, p4

    :goto_20
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_26

    move-object v9, v2

    goto :goto_28

    :cond_26
    move-object/from16 v9, p5

    :goto_28
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_2e

    move-object v10, v2

    goto :goto_30

    :cond_2e
    move-object/from16 v10, p6

    :goto_30
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_36

    move-object v11, v2

    goto :goto_38

    :cond_36
    move-object/from16 v11, p7

    :goto_38
    const/4 v5, 0x0

    move-object v3, p0

    .line 19
    invoke-direct/range {v3 .. v11}, Lcom/vungle/ads/internal/model/q1;-><init>(Ljava/util/List;Lcom/vungle/ads/internal/model/u0;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/d1;)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/model/q1;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    if-eqz v1, :cond_27

    :goto_1b
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_33

    :cond_2f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    if-eqz v1, :cond_3a

    :goto_33
    sget-object v1, Lcom/vungle/ads/internal/model/s0;->a:Lcom/vungle/ads/internal/model/s0;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3a
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_46

    :cond_42
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    if-eqz v1, :cond_4d

    :goto_46
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4d
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_55

    goto :goto_59

    :cond_55
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    if-eqz v1, :cond_60

    :goto_59
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_60
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_68

    goto :goto_6c

    :cond_68
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    if-eqz v1, :cond_73

    :goto_6c
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_73
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_7b

    goto :goto_7f

    :cond_7b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    if-eqz v1, :cond_86

    :goto_7f
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_86
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8e

    goto :goto_92

    :cond_8e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    if-eqz v1, :cond_99

    :goto_92
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_99
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a1

    goto :goto_a5

    :cond_a1
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    if-eqz v1, :cond_ac

    :goto_a5
    sget-object v1, Lcom/vungle/ads/internal/model/b1;->a:Lcom/vungle/ads/internal/model/b1;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_ac
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/vungle/ads/internal/model/u0;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/q1;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/q1;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    return v2

    :cond_64
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/u0;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    if-nez v2, :cond_3a

    move v2, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    if-nez v2, :cond_47

    move v2, v1

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    if-nez v2, :cond_54

    move v2, v1

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    if-nez v2, :cond_60

    goto :goto_64

    :cond_60
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/d1;->hashCode()I

    move-result v1

    :goto_64
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "RequestParam(placements="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->b:Lcom/vungle/ads/internal/model/u0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", advAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placementReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", csb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/q1;->h:Lcom/vungle/ads/internal/model/d1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
