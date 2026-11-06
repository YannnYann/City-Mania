###### Class com.vungle.ads.internal.model.c3 (com.vungle.ads.internal.model.c3)
.class public final Lcom/vungle/ads/internal/model/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/y2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Integer;

.field public k:Lcom/vungle/ads/internal/model/b3;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/y2;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/y2;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/c3;->Companion:Lcom/vungle/ads/internal/model/y2;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/b3;)V
    .registers 15

    and-int/lit8 v0, p1, 0x77

    const/16 v1, 0x77

    if-eq v1, v0, :cond_f

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/x2;->a:Lcom/vungle/ads/internal/model/x2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/x2;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_20

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    goto :goto_22

    :cond_20
    iput-object p5, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    :goto_22
    iput-object p6, p0, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    iput p7, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    iput p8, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_2f

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    iput-object p9, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    :goto_31
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_38

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    iput-object p10, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    :goto_3a
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_41

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    goto :goto_43

    :cond_41
    iput-object p11, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    :goto_43
    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_4a

    iput-object p3, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    return-void

    :cond_4a
    iput-object p12, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 15
    invoke-direct/range {v0 .. v11}, Lcom/vungle/ads/internal/model/c3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/b3;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/b3;)V
    .registers 13

    const-string v0, "make"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "os"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    .line 9
    iput p6, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    .line 10
    iput p7, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    .line 11
    iput-object p8, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    .line 13
    iput-object p10, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    .line 14
    iput-object p11, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    return-void
.end method

.method public static a(Lcom/vungle/ads/internal/model/c3;)Lcom/vungle/ads/internal/model/c3;
    .registers 13

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    iget v6, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    iget v7, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    iget-object v8, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    .line 1
    const-string p0, "make"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "model"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "osv"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "os"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/model/c3;

    invoke-direct/range {v0 .. v11}, Lcom/vungle/ads/internal/model/c3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/b3;)V

    return-object v0
.end method

.method public static final a(Lcom/vungle/ads/internal/model/c3;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 6

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2d

    :cond_29
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    if-eqz v1, :cond_34

    :goto_2d
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_34
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget v0, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v0, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    const/4 v1, 0x6

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_52

    :cond_4e
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    if-eqz v1, :cond_59

    :goto_52
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_59
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_66

    :cond_62
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    if-eqz v1, :cond_6d

    :goto_66
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_6d
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_76

    goto :goto_7a

    :cond_76
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_81

    :goto_7a
    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_81
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8a

    goto :goto_8e

    :cond_8a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    if-eqz v1, :cond_95

    :goto_8e
    sget-object v1, Lcom/vungle/ads/internal/model/z2;->a:Lcom/vungle/ads/internal/model/z2;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_95
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/model/b3;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    return-void
.end method

.method public final b(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/model/c3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/model/c3;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    iget v3, p1, Lcom/vungle/ads/internal/model/c3;->f:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget v1, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    iget v3, p1, Lcom/vungle/ads/internal/model/c3;->g:I

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v2

    :cond_67
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    return v2

    :cond_72
    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    return v2

    :cond_7d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    move v1, v2

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    if-nez v0, :cond_49

    move v0, v2

    goto :goto_4d

    :cond_49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    if-nez v0, :cond_56

    move v0, v2

    goto :goto_5a

    :cond_56
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    if-nez v0, :cond_63

    move v0, v2

    goto :goto_67

    :cond_63
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    if-nez v0, :cond_6f

    goto :goto_73

    :cond_6f
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b3;->hashCode()I

    move-result v2

    :goto_73
    add-int/2addr v1, v2

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceNode(make="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/c3;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/c3;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ifa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/c3;->k:Lcom/vungle/ads/internal/model/b3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
