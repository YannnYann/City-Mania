###### Class com.vungle.ads.internal.model.b3 (com.vungle.ads.internal.model.b3)
.class public final Lcom/vungle/ads/internal/model/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/a3;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:F

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:F

.field public m:I

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/Long;

.field public t:Ljava/lang/Long;

.field public u:Ljava/lang/Long;

.field public v:Ljava/lang/Long;

.field public w:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/a3;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/a3;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/b3;->Companion:Lcom/vungle/ads/internal/model/a3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 25

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    .line 27
    invoke-direct/range {v0 .. v23}, Lcom/vungle/ads/internal/model/b3;-><init>(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 27

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    goto :goto_d

    :cond_b
    iput-boolean p2, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    :goto_d
    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_15

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    goto :goto_17

    :cond_15
    iput-object p3, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    :goto_17
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1e

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    goto :goto_20

    :cond_1e
    iput-object p4, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    :goto_20
    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_28

    iput p3, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    goto :goto_2a

    :cond_28
    iput p5, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    :goto_2a
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_31

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    goto :goto_33

    :cond_31
    iput-object p6, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    :goto_33
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_3a

    iput v1, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    goto :goto_3c

    :cond_3a
    iput p7, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    :goto_3c
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_43

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    goto :goto_45

    :cond_43
    iput-object p8, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    :goto_45
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_4c

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    goto :goto_4e

    :cond_4c
    iput-object p9, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    :goto_4e
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_55

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    goto :goto_57

    :cond_55
    iput-object p10, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    :goto_57
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_5e

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    goto :goto_60

    :cond_5e
    iput-object p11, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    :goto_60
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_67

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    goto :goto_69

    :cond_67
    iput-object p12, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    :goto_69
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_70

    iput p3, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    goto :goto_72

    :cond_70
    iput p13, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    :goto_72
    and-int/lit16 p2, p1, 0x1000

    const/4 p3, 0x1

    if-nez p2, :cond_7a

    iput p3, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    goto :goto_7e

    :cond_7a
    move/from16 p2, p14

    iput p2, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    :goto_7e
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_85

    iput-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    goto :goto_89

    :cond_85
    move/from16 p2, p15

    iput-boolean p2, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    :goto_89
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_90

    iput p3, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    goto :goto_94

    :cond_90
    move/from16 p2, p16

    iput p2, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    :goto_94
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_9d

    iput-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    goto :goto_a1

    :cond_9d
    move/from16 p2, p17

    iput-boolean p2, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    :goto_a1
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_a9

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    goto :goto_ad

    :cond_a9
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    :goto_ad
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_b5

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    goto :goto_b9

    :cond_b5
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    :goto_b9
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_c1

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    goto :goto_c5

    :cond_c1
    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    :goto_c5
    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_cd

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    goto :goto_d1

    :cond_cd
    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    :goto_d1
    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-nez p2, :cond_d9

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    goto :goto_dd

    :cond_d9
    move-object/from16 p2, p22

    iput-object p2, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    :goto_dd
    const/high16 p2, 0x200000

    and-int/2addr p2, p1

    if-nez p2, :cond_e5

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    goto :goto_e9

    :cond_e5
    move-object/from16 p2, p23

    iput-object p2, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    :goto_e9
    const/high16 p2, 0x400000

    and-int/2addr p1, p2

    if-nez p1, :cond_f1

    iput-object v0, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    return-void

    :cond_f1
    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 24

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    .line 5
    iput-object p2, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    .line 7
    iput p4, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    .line 8
    iput-object p5, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    .line 9
    iput p6, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    .line 10
    iput-object p7, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    .line 13
    iput-object p10, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    .line 14
    iput-object p11, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    .line 15
    iput p12, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    .line 16
    iput p13, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    .line 17
    iput-boolean p14, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    .line 18
    iput p15, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    move/from16 p1, p16

    .line 19
    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    move-object/from16 p1, p17

    .line 20
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 21
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 22
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    move-object/from16 p1, p20

    .line 23
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    move-object/from16 p1, p21

    .line 24
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    move-object/from16 p1, p22

    .line 25
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    move-object/from16 p1, p23

    .line 26
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/model/b3;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 8

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
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    if-eqz v1, :cond_20

    :goto_1b
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_20
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2c

    :cond_28
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    if-eqz v1, :cond_33

    :goto_2c
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_33
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_3f

    :cond_3b
    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_46

    :goto_3f
    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_46
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4f

    goto :goto_5f

    :cond_4f
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 6
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 7
    :goto_5f
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    :cond_64
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6c

    goto :goto_70

    :cond_6c
    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    if-eqz v2, :cond_77

    :goto_70
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_77
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_7f

    goto :goto_83

    :cond_7f
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    if-eqz v2, :cond_88

    :goto_83
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_88
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_90

    goto :goto_94

    :cond_90
    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    if-eqz v2, :cond_9b

    :goto_94
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9b
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a3

    goto :goto_a7

    :cond_a3
    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    if-eqz v2, :cond_ae

    :goto_a7
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_ae
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_b7

    goto :goto_bb

    :cond_b7
    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    if-eqz v2, :cond_c2

    :goto_bb
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_c2
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_cb

    goto :goto_cf

    :cond_cb
    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    if-eqz v2, :cond_d6

    :goto_cf
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d6
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_df

    goto :goto_e3

    :cond_df
    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    if-eqz v2, :cond_ea

    :goto_e3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_ea
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_f3

    goto :goto_103

    :cond_f3
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 20
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    .line 21
    :goto_103
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    :cond_108
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_111

    goto :goto_115

    :cond_111
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    if-eq v2, v0, :cond_11a

    :goto_115
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_11a
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_123

    goto :goto_127

    :cond_123
    iget-boolean v2, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    if-eqz v2, :cond_12c

    :goto_127
    iget-boolean v2, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_12c
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_135

    goto :goto_139

    :cond_135
    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    if-eq v2, v0, :cond_13e

    :goto_139
    iget v0, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_13e
    const/16 v0, 0xf

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_147

    goto :goto_14b

    :cond_147
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    if-eqz v1, :cond_150

    :goto_14b
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_150
    const/16 v0, 0x10

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_159

    goto :goto_15d

    :cond_159
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    if-eqz v1, :cond_164

    :goto_15d
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_164
    const/16 v0, 0x11

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_16d

    goto :goto_171

    :cond_16d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    if-eqz v1, :cond_178

    :goto_171
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_178
    const/16 v0, 0x12

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_181

    goto :goto_185

    :cond_181
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    if-eqz v1, :cond_18c

    :goto_185
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_18c
    const/16 v0, 0x13

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_195

    goto :goto_199

    :cond_195
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    if-eqz v1, :cond_1a0

    :goto_199
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a0
    const/16 v0, 0x14

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_1a9

    goto :goto_1ad

    :cond_1a9
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    if-eqz v1, :cond_1b4

    :goto_1ad
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b4
    const/16 v0, 0x15

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1bd

    goto :goto_1c1

    :cond_1bd
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    if-eqz v0, :cond_1ca

    :goto_1c1
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    const/16 v2, 0x15

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1ca
    const/16 v0, 0x16

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1d3

    goto :goto_1d7

    :cond_1d3
    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    if-eqz v0, :cond_1e0

    :goto_1d7
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1e0
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    return-void
.end method

.method public final a(F)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    return-void
.end method

.method public final a(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    return-void
.end method

.method public final b(F)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    return-void
.end method

.method public final b(I)V
    .registers 2

    .line 4
    iput p1, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    return-void
.end method

.method public final c(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    return-void
.end method

.method public final c(Ljava/lang/Long;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/Long;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/b3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/b3;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/b3;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/vungle/ads/internal/model/b3;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    return v2

    :cond_47
    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    iget v3, p1, Lcom/vungle/ads/internal/model/b3;->f:I

    if-eq v1, v3, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/vungle/ads/internal/model/b3;->l:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    return v2

    :cond_98
    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    iget v3, p1, Lcom/vungle/ads/internal/model/b3;->m:I

    if-eq v1, v3, :cond_9f

    return v2

    :cond_9f
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/b3;->n:Z

    if-eq v1, v3, :cond_a6

    return v2

    :cond_a6
    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    iget v3, p1, Lcom/vungle/ads/internal/model/b3;->o:I

    if-eq v1, v3, :cond_ad

    return v2

    :cond_ad
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/b3;->p:Z

    if-eq v1, v3, :cond_b4

    return v2

    :cond_b4
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    return v2

    :cond_bf
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    return v2

    :cond_ca
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d5

    return v2

    :cond_d5
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e0

    return v2

    :cond_e0
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_eb

    return v2

    :cond_eb
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    return v2

    :cond_f6
    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_101

    return v2

    :cond_101
    return v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    return-void
.end method

.method public final hashCode()I
    .registers 5

    .line 0
    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    move v2, v3

    goto :goto_13

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    if-nez v2, :cond_1c

    move v2, v3

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    if-nez v0, :cond_32

    move v0, v3

    goto :goto_36

    :cond_32
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_36
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    if-nez v2, :cond_48

    move v2, v3

    goto :goto_4c

    :cond_48
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    if-nez v2, :cond_55

    move v2, v3

    goto :goto_59

    :cond_55
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_59
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    if-nez v2, :cond_62

    move v2, v3

    goto :goto_66

    :cond_62
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_66
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    if-nez v2, :cond_6f

    move v2, v3

    goto :goto_73

    :cond_6f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_73
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    if-nez v2, :cond_7c

    move v2, v3

    goto :goto_80

    :cond_7c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_80
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    if-eqz v2, :cond_9a

    move v2, v1

    :cond_9a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    if-eqz v0, :cond_ab

    goto :goto_ac

    :cond_ab
    move v1, v0

    :goto_ac
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    if-nez v0, :cond_b5

    move v0, v3

    goto :goto_b9

    :cond_b5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b9
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    if-nez v0, :cond_c2

    move v0, v3

    goto :goto_c6

    :cond_c2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c6
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    if-nez v0, :cond_cf

    move v0, v3

    goto :goto_d3

    :cond_cf
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_d3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    if-nez v0, :cond_dc

    move v0, v3

    goto :goto_e0

    :cond_dc
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_e0
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    if-nez v0, :cond_e9

    move v0, v3

    goto :goto_ed

    :cond_e9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_ed
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    if-nez v0, :cond_f6

    move v0, v3

    goto :goto_fa

    :cond_f6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_fa
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    if-nez v0, :cond_102

    goto :goto_106

    :cond_102
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_106
    add-int/2addr v2, v3

    return v2
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VungleExt(isGooglePlayServicesAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appSetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSetIdScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", batteryState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", batterySaverEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionTypeDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volumeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", soundEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdCardAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/b3;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSideloadEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/b3;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amazonAdvertisingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->s:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->t:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->u:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", obt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->v:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/b3;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
