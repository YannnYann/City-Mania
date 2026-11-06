###### Class com.vungle.ads.internal.model.w2 (com.vungle.ads.internal.model.w2)
.class public final Lcom/vungle/ads/internal/model/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/c2;


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/b2;

.field public final b:Lcom/vungle/ads/internal/model/f2;

.field public final c:Lcom/vungle/ads/internal/model/i2;

.field public final d:Lcom/vungle/ads/internal/model/s2;

.field public final e:Ljava/util/List;

.field public final f:Lcom/vungle/ads/internal/model/v2;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/Boolean;

.field public final i:Ljava/lang/Boolean;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Boolean;

.field public final l:Ljava/lang/Integer;

.field public final m:Ljava/lang/Boolean;

.field public final n:Ljava/lang/Boolean;

.field public final o:Ljava/lang/Boolean;

.field public p:Ljava/lang/Long;

.field public q:Lcom/vungle/ads/internal/model/y1;

.field public r:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Boolean;

.field public final t:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/c2;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/c2;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/w2;->Companion:Lcom/vungle/ads/internal/model/c2;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vungle/ads/internal/model/b2;Lcom/vungle/ads/internal/model/f2;Lcom/vungle/ads/internal/model/i2;Lcom/vungle/ads/internal/model/s2;Ljava/util/List;Lcom/vungle/ads/internal/model/v2;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/vungle/ads/internal/model/y1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;)V
    .registers 24

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    goto :goto_d

    :cond_b
    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    :goto_d
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_14

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    goto :goto_16

    :cond_14
    iput-object p3, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    :goto_16
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1d

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    goto :goto_1f

    :cond_1d
    iput-object p4, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    :goto_1f
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_26

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    goto :goto_28

    :cond_26
    iput-object p5, p0, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    :goto_28
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2f

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    goto :goto_31

    :cond_2f
    iput-object p6, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    :goto_31
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_38

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    goto :goto_3a

    :cond_38
    iput-object p7, p0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    :goto_3a
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_41

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    goto :goto_43

    :cond_41
    iput-object p8, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    :goto_43
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_4c

    .line 11
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    goto :goto_4e

    :cond_4c
    iput-object p9, p0, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    :goto_4e
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_55

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    goto :goto_57

    :cond_55
    iput-object p10, p0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    :goto_57
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_5e

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    goto :goto_60

    :cond_5e
    iput-object p11, p0, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    :goto_60
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_67

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    goto :goto_69

    :cond_67
    iput-object p12, p0, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    :goto_69
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_70

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    goto :goto_72

    :cond_70
    iput-object p13, p0, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    :goto_72
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_79

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    goto :goto_7d

    :cond_79
    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    :goto_7d
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_84

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    goto :goto_88

    :cond_84
    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    :goto_88
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_8f

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    goto :goto_93

    :cond_8f
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    :goto_93
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_9c

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    goto :goto_a0

    :cond_9c
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    :goto_a0
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_a8

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    goto :goto_ac

    :cond_a8
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    :goto_ac
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_b4

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    goto :goto_b8

    :cond_b4
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    :goto_b8
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_c0

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    goto :goto_c4

    :cond_c0
    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    :goto_c4
    const/high16 p2, 0x80000

    and-int/2addr p1, p2

    if-nez p1, :cond_cc

    iput-object v1, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    return-void

    :cond_cc
    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/model/w2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 7

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
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    if-eqz v1, :cond_22

    :goto_1b
    sget-object v1, Lcom/vungle/ads/internal/model/z1;->a:Lcom/vungle/ads/internal/model/z1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_22
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2e

    :cond_2a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    if-eqz v1, :cond_35

    :goto_2e
    sget-object v1, Lcom/vungle/ads/internal/model/d2;->a:Lcom/vungle/ads/internal/model/d2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_41

    :cond_3d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    if-eqz v1, :cond_48

    :goto_41
    sget-object v1, Lcom/vungle/ads/internal/model/g2;->a:Lcom/vungle/ads/internal/model/g2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_48
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_54

    :cond_50
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    if-eqz v1, :cond_5b

    :goto_54
    sget-object v1, Lcom/vungle/ads/internal/model/q2;->a:Lcom/vungle/ads/internal/model/q2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5b
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_63

    goto :goto_67

    :cond_63
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    if-eqz v1, :cond_73

    :goto_67
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/vungle/ads/internal/model/h3;->a:Lcom/vungle/ads/internal/model/h3;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_73
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_7b

    goto :goto_7f

    :cond_7b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-eqz v1, :cond_86

    :goto_7f
    sget-object v1, Lcom/vungle/ads/internal/model/t2;->a:Lcom/vungle/ads/internal/model/t2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_86
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8e

    goto :goto_92

    :cond_8e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    if-eqz v1, :cond_99

    :goto_92
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_99
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a1

    goto :goto_ab

    :cond_a1
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 12
    :goto_ab
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b2
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_bb

    goto :goto_bf

    :cond_bb
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_c6

    :goto_bf
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_c6
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_cf

    goto :goto_d3

    :cond_cf
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_da

    :goto_d3
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_da
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_e3

    goto :goto_e7

    :cond_e3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_ee

    :goto_e7
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_ee
    const/16 v0, 0xb

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_f7

    goto :goto_fb

    :cond_f7
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_102

    :goto_fb
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_102
    const/16 v0, 0xc

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_10b

    goto :goto_10f

    :cond_10b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    if-eqz v1, :cond_116

    :goto_10f
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_116
    const/16 v0, 0xd

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_11f

    goto :goto_123

    :cond_11f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_12a

    :goto_123
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_12a
    const/16 v0, 0xe

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_133

    goto :goto_137

    :cond_133
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_13e

    :goto_137
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13e
    const/16 v0, 0xf

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_147

    goto :goto_14b

    :cond_147
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    if-eqz v1, :cond_152

    :goto_14b
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_152
    const/16 v0, 0x10

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_15b

    goto :goto_15f

    :cond_15b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    if-eqz v1, :cond_166

    :goto_15f
    sget-object v1, Lcom/vungle/ads/internal/model/w1;->a:Lcom/vungle/ads/internal/model/w1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_166
    const/16 v0, 0x11

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_16f

    goto :goto_173

    :cond_16f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_17a

    :goto_173
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17a
    const/16 v0, 0x12

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_183

    goto :goto_187

    :cond_183
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    if-eqz v1, :cond_18e

    :goto_187
    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_18e
    const/16 v0, 0x13

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_197

    goto :goto_19b

    :cond_197
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    if-eqz v1, :cond_1a9

    :goto_19b
    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    iget-object p0, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/vungle/ads/internal/model/f2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    return-object v0
.end method

.method public final c()Lcom/vungle/ads/internal/model/i2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/w2;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/w2;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    return v2

    :cond_9b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    return v2

    :cond_a6
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    return v2

    :cond_b1
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    return v2

    :cond_bc
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c7

    return v2

    :cond_c7
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    return v2

    :cond_d2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    return v2

    :cond_dd
    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e8

    return v2

    :cond_e8
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b2;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/f2;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/i2;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/s2;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    if-nez v2, :cond_3a

    move v2, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    if-nez v2, :cond_47

    move v2, v1

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/v2;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    if-nez v2, :cond_54

    move v2, v1

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    if-nez v2, :cond_61

    move v2, v1

    goto :goto_65

    :cond_61
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    if-nez v2, :cond_6e

    move v2, v1

    goto :goto_72

    :cond_6e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    if-nez v2, :cond_7b

    move v2, v1

    goto :goto_7f

    :cond_7b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    if-nez v2, :cond_88

    move v2, v1

    goto :goto_8c

    :cond_88
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    if-nez v2, :cond_95

    move v2, v1

    goto :goto_99

    :cond_95
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    if-nez v2, :cond_a2

    move v2, v1

    goto :goto_a6

    :cond_a2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    if-nez v2, :cond_af

    move v2, v1

    goto :goto_b3

    :cond_af
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    if-nez v2, :cond_bc

    move v2, v1

    goto :goto_c0

    :cond_bc
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    if-nez v2, :cond_c9

    move v2, v1

    goto :goto_cd

    :cond_c9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_cd
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    if-nez v2, :cond_d6

    move v2, v1

    goto :goto_da

    :cond_d6
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/y1;->hashCode()I

    move-result v2

    :goto_da
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    if-nez v2, :cond_e3

    move v2, v1

    goto :goto_e7

    :cond_e3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_f0

    move v2, v1

    goto :goto_f4

    :cond_f0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_f4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    if-nez v2, :cond_fc

    goto :goto_100

    :cond_fc
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_100
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigPayload(cleverCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->a:Lcom/vungle/ads/internal/model/b2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->b:Lcom/vungle/ads/internal/model/f2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->c:Lcom/vungle/ads/internal/model/i2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logMetricsSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->d:Lcom/vungle/ads/internal/model/s2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userPrivacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->f:Lcom/vungle/ads/internal/model/v2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configExtension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disableAdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isReportIncentivizedEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitForConnectivityForTPAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signalSessionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signalsDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->m:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fpdEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rtaDebugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->o:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configLastValidatedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->p:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoRedirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enableOT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->r:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prewarmWebView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->s:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vmTemplates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/w2;->t:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
