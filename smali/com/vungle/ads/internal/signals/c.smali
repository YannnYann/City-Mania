###### Class com.vungle.ads.internal.signals.c (com.vungle.ads.internal.signals.c)
.class public final Lcom/vungle/ads/internal/signals/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/b;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/util/List;

.field public e:J

.field public f:I

.field public g:Ljava/util/List;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/signals/b;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/signals/b;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/signals/c;->Companion:Lcom/vungle/ads/internal/signals/b;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/vungle/ads/internal/signals/c;->a:I

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "randomUUID().toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/c;->b:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/c;->c:J

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/c;->g:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;JLjava/util/List;JILjava/util/List;IIIII)V
    .registers 18

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_e

    .line 23
    sget-object v0, Lcom/vungle/ads/internal/signals/a;->a:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vungle/ads/internal/signals/c;->a:I

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_27

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "randomUUID().toString()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/c;->b:Ljava/lang/String;

    goto :goto_29

    :cond_27
    iput-object p3, p0, Lcom/vungle/ads/internal/signals/c;->b:Ljava/lang/String;

    :goto_29
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_37

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    .line 40
    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/c;->c:J

    goto :goto_39

    :cond_37
    iput-wide p4, p0, Lcom/vungle/ads/internal/signals/c;->c:J

    :goto_39
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_45

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    goto :goto_47

    :cond_45
    iput-object p6, p0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    :goto_47
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_50

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/vungle/ads/internal/signals/c;->e:J

    goto :goto_52

    :cond_50
    iput-wide p7, p0, Lcom/vungle/ads/internal/signals/c;->e:J

    :goto_52
    and-int/lit8 p2, p1, 0x20

    const/4 p3, 0x0

    if-nez p2, :cond_5a

    iput p3, p0, Lcom/vungle/ads/internal/signals/c;->f:I

    goto :goto_5c

    :cond_5a
    iput p9, p0, Lcom/vungle/ads/internal/signals/c;->f:I

    :goto_5c
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_68

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/vungle/ads/internal/signals/c;->g:Ljava/util/List;

    goto :goto_6a

    :cond_68
    iput-object p10, p0, Lcom/vungle/ads/internal/signals/c;->g:Ljava/util/List;

    :goto_6a
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_71

    iput p3, p0, Lcom/vungle/ads/internal/signals/c;->h:I

    goto :goto_73

    :cond_71
    iput p11, p0, Lcom/vungle/ads/internal/signals/c;->h:I

    :goto_73
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_7a

    iput p3, p0, Lcom/vungle/ads/internal/signals/c;->i:I

    goto :goto_7c

    :cond_7a
    iput p12, p0, Lcom/vungle/ads/internal/signals/c;->i:I

    :goto_7c
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_83

    iput p3, p0, Lcom/vungle/ads/internal/signals/c;->j:I

    goto :goto_85

    :cond_83
    iput p13, p0, Lcom/vungle/ads/internal/signals/c;->j:I

    :goto_85
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_8c

    iput p3, p0, Lcom/vungle/ads/internal/signals/c;->k:I

    goto :goto_90

    :cond_8c
    move/from16 p2, p14

    iput p2, p0, Lcom/vungle/ads/internal/signals/c;->k:I

    :goto_90
    and-int/lit16 p1, p1, 0x800

    if-nez p1, :cond_97

    iput p3, p0, Lcom/vungle/ads/internal/signals/c;->l:I

    return-void

    :cond_97
    move/from16 p1, p15

    iput p1, p0, Lcom/vungle/ads/internal/signals/c;->l:I

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/signals/c;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 10

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/signals/c;->a:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_32

    :cond_1d
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/c;->b:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "randomUUID().toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 8
    :goto_32
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/c;->b:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_37
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_4c

    :cond_3f
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/c;->c:J

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_51

    .line 18
    :goto_4c
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/c;->c:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_51
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_66

    :cond_59
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 31
    :goto_66
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/vungle/ads/internal/signals/k;->a:Lcom/vungle/ads/internal/signals/k;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_72
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_82

    :cond_7a
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/c;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_87

    :goto_82
    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/c;->e:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_87
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8f

    goto :goto_93

    :cond_8f
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->f:I

    if-eqz v1, :cond_98

    :goto_93
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->f:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_98
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a0

    goto :goto_ad

    :cond_a0
    iget-object v1, p0, Lcom/vungle/ads/internal/signals/c;->g:Ljava/util/List;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 53
    :goto_ad
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/vungle/ads/internal/model/q3;->a:Lcom/vungle/ads/internal/model/q3;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/c;->g:Ljava/util/List;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b9
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_c1

    goto :goto_c5

    :cond_c1
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->h:I

    if-eqz v1, :cond_ca

    :goto_c5
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->h:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_ca
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_d3

    goto :goto_d7

    :cond_d3
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->i:I

    if-eqz v1, :cond_dc

    :goto_d7
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->i:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_dc
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_e5

    goto :goto_e9

    :cond_e5
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->j:I

    if-eqz v1, :cond_ee

    :goto_e9
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->j:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_ee
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_f7

    goto :goto_fb

    :cond_f7
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->k:I

    if-eqz v1, :cond_100

    :goto_fb
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->k:I

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_100
    const/16 v0, 0xb

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_109

    goto :goto_10d

    :cond_109
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->l:I

    if-eqz v1, :cond_112

    :goto_10d
    iget p0, p0, Lcom/vungle/ads/internal/signals/c;->l:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_112
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/vungle/ads/internal/signals/c;->h:I

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/vungle/ads/internal/signals/c;->g:Ljava/util/List;

    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/vungle/ads/internal/signals/c;->l:I

    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/c;->g:Ljava/util/List;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/vungle/ads/internal/signals/c;->j:I

    return-void
.end method

.method public final d(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/signals/c;->k:I

    return-void
.end method

.method public final e(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/ads/internal/signals/c;->i:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/vungle/ads/internal/signals/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/vungle/ads/internal/signals/c;

    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->a:I

    iget p1, p1, Lcom/vungle/ads/internal/signals/c;->a:I

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/vungle/ads/internal/signals/c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "SessionData(sessionCount="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/vungle/ads/internal/signals/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
