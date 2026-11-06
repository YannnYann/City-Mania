###### Class com.vungle.ads.internal.model.i0 (com.vungle.ads.internal.model.i0)
.class public final Lcom/vungle/ads/internal/model/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/p;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/vungle/ads/internal/model/w2;

.field public c:Ljava/lang/Long;

.field public d:Ljava/util/concurrent/ConcurrentHashMap;

.field public e:Ljava/util/Map;

.field public f:Z

.field public g:Lcom/vungle/ads/AdConfig;

.field public h:Lcom/vungle/ads/internal/util/t;

.field public i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/model/p;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/p;-><init>()V

    .line 2
    sput-object v0, Lcom/vungle/ads/internal/model/i0;->Companion:Lcom/vungle/ads/internal/model/p;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/vungle/ads/internal/model/w2;Ljava/lang/Long;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Map;ZLjava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iput-object v1, p0, Lcom/vungle/ads/internal/model/i0;->a:Ljava/util/List;

    goto :goto_d

    :cond_b
    iput-object p2, p0, Lcom/vungle/ads/internal/model/i0;->a:Ljava/util/List;

    :goto_d
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_14

    iput-object v1, p0, Lcom/vungle/ads/internal/model/i0;->b:Lcom/vungle/ads/internal/model/w2;

    goto :goto_16

    :cond_14
    iput-object p3, p0, Lcom/vungle/ads/internal/model/i0;->b:Lcom/vungle/ads/internal/model/w2;

    :goto_16
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1d

    iput-object v1, p0, Lcom/vungle/ads/internal/model/i0;->c:Ljava/lang/Long;

    goto :goto_1f

    :cond_1d
    iput-object p4, p0, Lcom/vungle/ads/internal/model/i0;->c:Ljava/lang/Long;

    :goto_1f
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2b

    .line 64
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/vungle/ads/internal/model/i0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_2d

    :cond_2b
    iput-object p5, p0, Lcom/vungle/ads/internal/model/i0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_2d
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_39

    .line 131
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    goto :goto_3b

    :cond_39
    iput-object p6, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    :goto_3b
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_43

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/vungle/ads/internal/model/i0;->f:Z

    goto :goto_45

    :cond_43
    iput-boolean p7, p0, Lcom/vungle/ads/internal/model/i0;->f:Z

    :goto_45
    iput-object v1, p0, Lcom/vungle/ads/internal/model/i0;->g:Lcom/vungle/ads/AdConfig;

    iput-object v1, p0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_50

    iput-object v1, p0, Lcom/vungle/ads/internal/model/i0;->i:Ljava/lang/String;

    return-void

    :cond_50
    iput-object p8, p0, Lcom/vungle/ads/internal/model/i0;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p2, :cond_4

    .line 1510
    const-string p2, ""

    .line 1511
    :cond_4
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "quote(oldValue)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    invoke-direct {v0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/vungle/ads/internal/model/g0;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/model/g0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/model/i0;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    move-object p2, v0

    .line 1492
    :cond_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/ads/internal/model/i0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/vungle/ads/internal/model/i0;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "self"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "output"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "serialDesc"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_1d

    :cond_19
    iget-object v3, p0, Lcom/vungle/ads/internal/model/i0;->a:Ljava/util/List;

    if-eqz v3, :cond_29

    :goto_1d
    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lcom/vungle/ads/internal/model/q;->a:Lcom/vungle/ads/internal/model/q;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v4, p0, Lcom/vungle/ads/internal/model/i0;->a:Ljava/util/List;

    invoke-interface {p1, p2, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_34

    :cond_30
    iget-object v3, p0, Lcom/vungle/ads/internal/model/i0;->b:Lcom/vungle/ads/internal/model/w2;

    if-eqz v3, :cond_3b

    :goto_34
    sget-object v3, Lcom/vungle/ads/internal/model/v1;->a:Lcom/vungle/ads/internal/model/v1;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/i0;->b:Lcom/vungle/ads/internal/model/w2;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3b
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_46

    :cond_42
    iget-object v3, p0, Lcom/vungle/ads/internal/model/i0;->c:Ljava/lang/Long;

    if-eqz v3, :cond_4d

    :goto_46
    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/i0;->c:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4d
    const/4 v3, 0x3

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_55

    goto :goto_62

    :cond_55
    iget-object v4, p0, Lcom/vungle/ads/internal/model/i0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 65
    :goto_62
    new-instance v4, Lkotlinx/serialization/ContextualSerializer;

    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v6, v0, v2

    aput-object v6, v0, v1

    const/4 v1, 0x0

    invoke-direct {v4, v5, v1, v0}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;[Lkotlinx/serialization/KSerializer;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p2, v3, v4, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7b
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_83

    goto :goto_90

    :cond_83
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 132
    :goto_90
    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    iget-object v2, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9c
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a4

    goto :goto_a8

    :cond_a4
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/i0;->f:Z

    if-eqz v1, :cond_ad

    :goto_a8
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/i0;->f:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_ad
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_b5

    goto :goto_b9

    :cond_b5
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i0;->i:Ljava/lang/String;

    if-eqz v1, :cond_c0

    :goto_b9
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/i0;->i:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_c0
    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->i()Lcom/vungle/ads/internal/model/s;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/s;->a:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final B()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/model/i0;->c:Ljava/lang/Long;

    return-void
.end method

.method public final C()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/vungle/ads/internal/model/i0;->f:Z

    return-void
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->t:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final E()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->l()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->y()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    return v1
.end method

.method public final a()I
    .registers 2

    .line 133
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 134
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->z:Lcom/vungle/ads/internal/model/f;

    if-eqz v0, :cond_13

    .line 135
    iget-object v0, v0, Lcom/vungle/ads/internal/model/f;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/Boolean;)I
    .registers 3

    .line 1504
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 1505
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i;->h()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_19
    mul-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_1c
    return v0

    .line 1509
    :cond_1d
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i;->g()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_19

    :cond_2e
    return v0
.end method

.method public final a(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 20

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "dir"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/i0;->y()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_17

    goto/16 :goto_a1

    .line 835
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-static {v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move-object v6, v0

    goto :goto_2c

    :cond_2b
    move-object v6, v5

    :goto_2c
    if-nez v6, :cond_30

    goto/16 :goto_a1

    .line 837
    :cond_30
    :try_start_30
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 838
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v7, "URI(url).path"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x2f

    new-array v8, v3, [C

    aput-char v7, v8, v2

    invoke-static {v0, v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [C

    aput-char v7, v10, v2

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 839
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_73

    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    const-string v10, "_"

    const/16 v16, 0x3e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :catchall_71
    move-exception v0

    goto :goto_7a

    :cond_73
    const-string v0, "index.html"

    .line 840
    :goto_75
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_79
    .catchall {:try_start_30 .. :try_end_79} :catchall_71

    goto :goto_84

    :goto_7a
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 843
    :goto_84
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    move-object v0, v5

    :cond_8b
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_90

    goto :goto_a1

    .line 845
    :cond_90
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_97

    goto :goto_a1

    .line 847
    :cond_97
    new-instance v5, Lkotlin/Pair;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a1
    :goto_a1
    if-eqz v5, :cond_e9

    .line 848
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 849
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    iput-object v6, v7, Lcom/vungle/ads/internal/model/i0;->i:Ljava/lang/String;

    .line 850
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_eb

    .line 851
    sget-boolean v6, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No cacheable index file found, creating new one: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "AdPayload"

    invoke-static {v8, v6}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v6, Lcom/vungle/ads/internal/model/b;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v8, "indexFile.absolutePath"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "vmURL"

    invoke-direct {v6, v8, v0, v5, v3}, Lcom/vungle/ads/internal/model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    :cond_e9
    move-object/from16 v7, p0

    .line 856
    :cond_eb
    :goto_eb
    invoke-virtual {v7}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_158

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->j()Lcom/vungle/ads/internal/model/v;

    move-result-object v0

    if-eqz v0, :cond_158

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/v;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_158

    .line 1171
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_105
    :goto_105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_158

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1172
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/ads/internal/model/o;

    .line 1173
    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/o;->b()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_105

    .line 1174
    invoke-static {v8}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_105

    .line 1175
    invoke-virtual {v5}, Lcom/vungle/ads/internal/model/o;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1176
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1177
    new-instance v9, Lcom/vungle/ads/internal/model/b;

    const-string v10, "filePath"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v7}, Lcom/vungle/ads/internal/model/i0;->y()Z

    move-result v10

    if-nez v10, :cond_150

    invoke-virtual {v7}, Lcom/vungle/ads/internal/model/i0;->b()Z

    move-result v10

    if-nez v10, :cond_14e

    goto :goto_150

    :cond_14e
    move v10, v2

    goto :goto_151

    :cond_150
    :goto_150
    move v10, v3

    .line 1179
    :goto_151
    invoke-direct {v9, v6, v8, v5, v10}, Lcom/vungle/ads/internal/model/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_105

    .line 1491
    :cond_158
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_166

    new-instance v0, Lcom/vungle/ads/internal/model/h0;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/h0;-><init>()V

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_166
    return-object v4
.end method

.method public final a(Lcom/vungle/ads/AdConfig;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/vungle/ads/internal/model/i0;->g:Lcom/vungle/ads/AdConfig;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/util/t;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    return-void
.end method

.method public final declared-synchronized a(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "adIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1513
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1514
    const-string v1, "file://"

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1883
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_2c

    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_28

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keepWatching"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "close"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 1494
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    const-string v1, "INCENTIVIZED_TITLE_TEXT"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    :cond_21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2e

    .line 1497
    iget-object p1, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    const-string v0, "INCENTIVIZED_BODY_TEXT"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    :cond_2e
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3b

    .line 1500
    iget-object p1, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    const-string p2, "INCENTIVIZED_CONTINUE_TEXT"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    :cond_3b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_48

    .line 1503
    iget-object p1, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    const-string p2, "INCENTIVIZED_CLOSE_TEXT"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "failingUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 145
    :cond_1f
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->j()Lcom/vungle/ads/internal/model/v;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/v;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 486
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 487
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 488
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/ads/internal/model/o;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 831
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 832
    :cond_66
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_6c
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 5
    new-instance p2, Lcom/vungle/ads/TpatError;

    sget-object p3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_TPAT_KEY:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 6
    const-string v0, "Arbitrary tpat key: "

    invoke-static {v0, p1}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-direct {p2, p3, p1}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {p2, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-object v1

    .line 196
    :cond_2f
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->k()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_43

    :cond_42
    move-object v0, v1

    :goto_43
    if-eqz v0, :cond_153

    .line 197
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    goto/16 :goto_153

    .line 396
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "{{{vol}}}"

    const/16 v3, 0xa

    sparse-switch v1, :sswitch_data_16a

    goto/16 :goto_11c

    :sswitch_5a
    const-string p3, "deeplink.click"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto/16 :goto_11c

    .line 695
    :cond_64
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 696
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_71
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 697
    check-cast v0, Ljava/lang/String;

    .line 698
    const-string v1, "{{{is_success}}}"

    invoke-static {v0, v1, p2}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_87
    return-object p1

    .line 699
    :sswitch_88
    const-string v1, "ad.close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_92

    goto/16 :goto_11c

    .line 1002
    :cond_92
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1003
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1004
    check-cast v1, Ljava/lang/String;

    .line 1005
    const-string v3, "{{{dur}}}"

    invoke-static {v1, v3, p2}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    invoke-static {v1, v2, p3}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_b9
    return-object p1

    .line 1007
    :sswitch_ba
    const-string p3, "ad.loadDuration"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c3

    goto :goto_11c

    .line 1314
    :cond_c3
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1315
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_d0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1316
    check-cast v0, Ljava/lang/String;

    .line 1317
    const-string v1, "{{{time_dl}}}"

    invoke-static {v0, v1, p2}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_e6
    return-object p1

    .line 1318
    :sswitch_e7
    const-string p3, "video.length"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f0

    goto :goto_11c

    .line 1613
    :cond_f0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1614
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_fd
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1615
    check-cast v0, Ljava/lang/String;

    .line 1616
    const-string v1, "{{{vlen}}}"

    invoke-static {v0, v1, p2}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fd

    :cond_113
    return-object p1

    .line 1617
    :sswitch_114
    const-string v1, "checkpoint.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11d

    :goto_11c
    return-object v0

    .line 1908
    :cond_11d
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1909
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_152

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1910
    check-cast v1, Ljava/lang/String;

    .line 1911
    iget-boolean v3, p0, Lcom/vungle/ads/internal/model/i0;->f:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{{{remote_play}}}"

    invoke-static {v1, v4, v3}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1912
    const-string v3, "{{{carrier}}}"

    invoke-static {v1, v3, p2}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1913
    invoke-static {v1, v2, p3}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12a

    :cond_152
    return-object p1

    .line 198
    :cond_153
    :goto_153
    new-instance p2, Lcom/vungle/ads/TpatError;

    sget-object p3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 199
    const-string v0, "Empty tpat key: "

    invoke-static {v0, p1}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    invoke-direct {p2, p3, p1}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 393
    iget-object p1, p0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {p2, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-object v1

    :sswitch_data_16a
    .sparse-switch
        -0x7eb6e6b6 -> :sswitch_114
        -0x2c912447 -> :sswitch_e7
        -0x7e59f7b -> :sswitch_ba
        0x5a65f06d -> :sswitch_88
        0x73a6c480 -> :sswitch_5a
    .end sparse-switch
.end method

.method public final b()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lcom/vungle/ads/internal/model/i;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->z:Lcom/vungle/ads/internal/model/f;

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/f;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->w:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lcom/vungle/ads/internal/model/w2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->b:Lcom/vungle/ads/internal/model/w2;

    return-object v0
.end method

.method public final g()Lkotlinx/serialization/json/JsonObject;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->r()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 205
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 207
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lkotlinx/serialization/json/JsonElementBuildersKt;->put(Lkotlinx/serialization/json/JsonObjectBuilder;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_11

    .line 412
    :cond_2d
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->a:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lcom/vungle/ads/internal/model/s;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->a:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/model/s;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lcom/vungle/ads/AdConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->g:Lcom/vungle/ads/AdConfig;

    return-object v0
.end method

.method public final k()Lcom/vungle/ads/internal/model/i;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->i()Lcom/vungle/ads/internal/model/s;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/s;->b:Lcom/vungle/ads/internal/model/i;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->c:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/vungle/ads/internal/model/l;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->i()Lcom/vungle/ads/internal/model/s;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/s;->c:Lcom/vungle/ads/internal/model/l;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->v:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    return-object v0

    .line 3
    :cond_c
    :goto_c
    const-string v0, "unknown"

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->u:Lcom/vungle/ads/internal/model/v;

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v;->a:Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 4
    const-string v1, "OBSERVED_EXPERIMENTS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Lcom/vungle/ads/internal/util/t;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method

.method public final r()Ljava/util/LinkedHashMap;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->u:Lcom/vungle/ads/internal/model/v;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_71

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 5
    iget-object v1, v1, Lcom/vungle/ads/internal/model/i;->u:Lcom/vungle/ads/internal/model/v;

    if-eqz v1, :cond_22

    .line 6
    iget-object v1, v1, Lcom/vungle/ads/internal/model/v;->a:Ljava/util/Map;

    if-eqz v1, :cond_22

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    :cond_22
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 10
    iget-object v1, v1, Lcom/vungle/ads/internal/model/i;->u:Lcom/vungle/ads/internal/model/v;

    if-eqz v1, :cond_56

    .line 11
    iget-object v1, v1, Lcom/vungle/ads/internal/model/v;->b:Ljava/util/Map;

    if-eqz v1, :cond_56

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/model/o;

    .line 14
    iget-object v3, v3, Lcom/vungle/ads/internal/model/o;->a:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 19
    :cond_56
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_63

    .line 20
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 23
    :cond_63
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    .line 24
    iget-object v1, p0, Lcom/vungle/ads/internal/model/i0;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_70
    return-object v0

    .line 25
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Advertisement does not have MRAID Arguments!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->i:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->o:Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final u()Lcom/vungle/ads/internal/model/f0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->A:Lcom/vungle/ads/internal/model/f0;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final v()Z
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v2, p0, Lcom/vungle/ads/internal/model/i0;->c:Ljava/lang/Long;

    .line 3
    iget-object v3, v0, Lcom/vungle/ads/internal/model/i;->e:Ljava/lang/Integer;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    if-eqz v3, :cond_33

    if-eqz v2, :cond_33

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v7, v2

    div-long/2addr v7, v5

    .line 5
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2a

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_2a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-lez v0, :cond_53

    goto :goto_51

    .line 7
    :cond_33
    iget-object v2, v0, Lcom/vungle/ads/internal/model/i;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_53

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v5

    .line 9
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_49

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_49
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_53

    :goto_51
    const/4 v0, 0x1

    return v0

    :cond_53
    return v1
.end method

.method public final w()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->j()Lcom/vungle/ads/internal/model/v;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/v;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 4
    const-string v1, "AD_PODDING"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 5
    const-string v1, "true"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_26

    return v2

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "native"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final z()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->s:Lcom/vungle/ads/internal/model/z;

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/z;->a:Lcom/vungle/ads/internal/model/c0;

    if-eqz v0, :cond_17

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/c0;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method
