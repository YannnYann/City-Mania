###### Class com.vungle.ads.internal.model.v1 (com.vungle.ads.internal.model.v1)
.class public final Lcom/vungle/ads/internal/model/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final a:Lcom/vungle/ads/internal/model/v1;

.field public static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/v1;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/v1;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/v1;->a:Lcom/vungle/ads/internal/model/v1;

    .line 1
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.ConfigPayload"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "reuse_assets"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "config"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "endpoints"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "log_metrics"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "placements"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "user"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "config_extension"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "disable_ad_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ri_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "session_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "wait_for_connectivity_for_tpat"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sdk_session_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "signals_disabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "fpd_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "rta_debugging"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "config_last_validated_ts"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "auto_redirect"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "enable_ot"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "prewarm_webview"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "vm_templates"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/v1;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 23

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/z1;->a:Lcom/vungle/ads/internal/model/z1;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/internal/model/d2;->a:Lcom/vungle/ads/internal/model/d2;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sget-object v2, Lcom/vungle/ads/internal/model/g2;->a:Lcom/vungle/ads/internal/model/g2;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    sget-object v3, Lcom/vungle/ads/internal/model/q2;->a:Lcom/vungle/ads/internal/model/q2;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    new-instance v4, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v5, Lcom/vungle/ads/internal/model/h3;->a:Lcom/vungle/ads/internal/model/h3;

    invoke-direct {v4, v5}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    sget-object v5, Lcom/vungle/ads/internal/model/t2;->a:Lcom/vungle/ads/internal/model/t2;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v6}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    sget-object v8, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    sget-object v11, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-static {v11}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v12

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v13

    invoke-static {v11}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v15

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v16

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v17

    sget-object v18, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-static/range {v18 .. v18}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v18

    sget-object v19, Lcom/vungle/ads/internal/model/w1;->a:Lcom/vungle/ads/internal/model/w1;

    invoke-static/range {v19 .. v19}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v19

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v20

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    move-object/from16 v21, v0

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v0, v6, v11}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v6, 0x14

    new-array v6, v6, [Lkotlinx/serialization/KSerializer;

    const/4 v11, 0x0

    aput-object v21, v6, v11

    const/4 v11, 0x1

    aput-object v1, v6, v11

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    aput-object v3, v6, v1

    const/4 v1, 0x4

    aput-object v4, v6, v1

    const/4 v1, 0x5

    aput-object v5, v6, v1

    const/4 v1, 0x6

    aput-object v7, v6, v1

    const/4 v1, 0x7

    aput-object v9, v6, v1

    const/16 v1, 0x8

    aput-object v10, v6, v1

    const/16 v1, 0x9

    aput-object v12, v6, v1

    const/16 v1, 0xa

    aput-object v13, v6, v1

    const/16 v1, 0xb

    aput-object v14, v6, v1

    const/16 v1, 0xc

    aput-object v15, v6, v1

    const/16 v1, 0xd

    aput-object v16, v6, v1

    const/16 v1, 0xe

    aput-object v17, v6, v1

    const/16 v1, 0xf

    aput-object v18, v6, v1

    const/16 v1, 0x10

    aput-object v19, v6, v1

    const/16 v1, 0x11

    aput-object v20, v6, v1

    const/16 v1, 0x12

    aput-object v8, v6, v1

    const/16 v1, 0x13

    aput-object v0, v6, v1

    return-object v6
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 53

    move-object/from16 v0, p1

    .line 1
    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/vungle/ads/internal/model/v1;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v3, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_c4

    sget-object v2, Lcom/vungle/ads/internal/model/z1;->a:Lcom/vungle/ads/internal/model/z1;

    invoke-interface {v0, v1, v8, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Lcom/vungle/ads/internal/model/d2;->a:Lcom/vungle/ads/internal/model/d2;

    invoke-interface {v0, v1, v7, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/vungle/ads/internal/model/g2;->a:Lcom/vungle/ads/internal/model/g2;

    invoke-interface {v0, v1, v6, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lcom/vungle/ads/internal/model/q2;->a:Lcom/vungle/ads/internal/model/q2;

    invoke-interface {v0, v1, v3, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v8, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v10, Lcom/vungle/ads/internal/model/h3;->a:Lcom/vungle/ads/internal/model/h3;

    invoke-direct {v8, v10}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v4, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Lcom/vungle/ads/internal/model/t2;->a:Lcom/vungle/ads/internal/model/t2;

    invoke-interface {v0, v1, v15, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v14, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-interface {v0, v1, v13, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v1, v5, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v22, v2

    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-interface {v0, v1, v12, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v11, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v23, v3

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    const/16 v3, 0xc

    invoke-interface {v0, v1, v3, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    const/16 v3, 0xd

    invoke-interface {v0, v1, v3, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    move-object/from16 v24, v4

    const/16 v4, 0xf

    invoke-interface {v0, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/vungle/ads/internal/model/w1;->a:Lcom/vungle/ads/internal/model/w1;

    move-object/from16 v17, v3

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x11

    invoke-interface {v0, v1, v4, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v3

    const/16 v3, 0x12

    invoke-interface {v0, v1, v3, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v15, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v15, v10, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v15, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v9, 0xfffff

    move-object v10, v4

    move/from16 v30, v9

    move-object/from16 v28, v19

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    goto/16 :goto_34f

    :cond_c4
    move/from16 v40, v7

    move/from16 v39, v8

    move-object v2, v9

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v13, v10

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v30, v15

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    :goto_e4
    if-eqz v40, :cond_31b

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    packed-switch v5, :pswitch_data_3a8

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v5}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_f3
    new-instance v5, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v11, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {v5, v12, v11}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v11, 0x13

    invoke-interface {v0, v1, v11, v5, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/high16 v5, 0x80000

    or-int v39, v39, v5

    :goto_106
    const/16 v5, 0x8

    const/16 v11, 0xa

    const/16 v12, 0x9

    goto :goto_e4

    :pswitch_10d
    const/16 v11, 0x13

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v12, 0x12

    invoke-interface {v0, v1, v12, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/high16 v5, 0x40000

    :goto_119
    move-object/from16 v28, v3

    move-object/from16 v11, v30

    :goto_11d
    move-object/from16 v12, v31

    :goto_11f
    move-object/from16 v27, v32

    :goto_121
    move-object/from16 v26, v33

    :goto_123
    move-object/from16 v25, v34

    move-object/from16 v24, v35

    move-object/from16 v23, v36

    const/4 v3, 0x0

    goto/16 :goto_2e8

    :pswitch_12c
    const/16 v11, 0x13

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v11, 0x11

    invoke-interface {v0, v1, v11, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v10, 0x20000

    move v11, v10

    move-object v10, v5

    :goto_13c
    move v5, v11

    goto :goto_119

    :pswitch_13e
    const/16 v11, 0x11

    const/16 v12, 0x12

    sget-object v5, Lcom/vungle/ads/internal/model/w1;->a:Lcom/vungle/ads/internal/model/w1;

    const/16 v11, 0x10

    invoke-interface {v0, v1, v11, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v8, 0x10000

    move v11, v8

    move-object v8, v5

    goto :goto_13c

    :pswitch_14f
    const/16 v11, 0x10

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/16 v11, 0xf

    invoke-interface {v0, v1, v11, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const v7, 0x8000

    move v11, v7

    move-object v7, v5

    goto :goto_13c

    :pswitch_161
    const/16 v11, 0xf

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v11, 0xe

    invoke-interface {v0, v1, v11, v5, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x4000

    move v11, v6

    move-object v6, v5

    goto :goto_13c

    :pswitch_172
    const/16 v11, 0xe

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v11, 0xd

    invoke-interface {v0, v1, v11, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x2000

    goto :goto_119

    :pswitch_181
    const/16 v11, 0xd

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v11, 0xc

    invoke-interface {v0, v1, v11, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x1000

    goto :goto_119

    :pswitch_190
    const/16 v11, 0xc

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v11, 0xb

    invoke-interface {v0, v1, v11, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v15, 0x800

    move v11, v15

    move-object v15, v5

    goto :goto_13c

    :pswitch_1a1
    const/16 v11, 0xb

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v11, 0xa

    invoke-interface {v0, v1, v11, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v14, 0x400

    move v11, v14

    move-object v14, v5

    goto :goto_13c

    :pswitch_1b2
    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v11, 0x9

    invoke-interface {v0, v1, v11, v5, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v13, 0x200

    move v11, v13

    move-object v13, v5

    goto/16 :goto_13c

    :pswitch_1c2
    move v11, v12

    const/16 v12, 0x12

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    move-object/from16 v11, v30

    const/16 v12, 0x8

    invoke-interface {v0, v1, v12, v5, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v11, 0x100

    move v12, v11

    move-object v11, v5

    move v5, v12

    move-object/from16 v28, v3

    goto/16 :goto_11d

    :pswitch_1d8
    move-object/from16 v11, v30

    const/16 v12, 0x8

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    move-object/from16 v29, v2

    move-object/from16 v12, v31

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v5, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v12, 0x80

    move v2, v12

    move-object v12, v5

    move v5, v2

    move-object/from16 v28, v3

    move-object/from16 v2, v29

    goto/16 :goto_11f

    :pswitch_1f2
    move-object/from16 v29, v2

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    const/4 v2, 0x7

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v28, v3

    move-object/from16 v2, v32

    const/4 v3, 0x6

    invoke-interface {v0, v1, v3, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0x40

    move-object/from16 v27, v2

    move-object/from16 v2, v29

    goto/16 :goto_121

    :pswitch_20c
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v2, v32

    const/4 v3, 0x6

    sget-object v5, Lcom/vungle/ads/internal/model/t2;->a:Lcom/vungle/ads/internal/model/t2;

    move-object/from16 v27, v2

    move-object/from16 v3, v33

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x20

    move-object/from16 v26, v3

    move-object/from16 v2, v29

    goto/16 :goto_123

    :pswitch_22a
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v27, v32

    move-object/from16 v3, v33

    const/4 v2, 0x5

    new-instance v5, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/vungle/ads/internal/model/h3;->a:Lcom/vungle/ads/internal/model/h3;

    invoke-direct {v5, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v26, v3

    move-object/from16 v2, v34

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    move-object/from16 v2, v29

    move-object/from16 v24, v35

    move-object/from16 v23, v36

    const/4 v3, 0x0

    const/16 v5, 0x10

    goto/16 :goto_2e8

    :pswitch_254
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v27, v32

    move-object/from16 v26, v33

    move-object/from16 v2, v34

    const/4 v3, 0x4

    sget-object v5, Lcom/vungle/ads/internal/model/q2;->a:Lcom/vungle/ads/internal/model/q2;

    move-object/from16 v25, v2

    move-object/from16 v3, v35

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    move-object/from16 v2, v29

    move-object/from16 v23, v36

    const/4 v3, 0x0

    const/16 v5, 0x8

    goto/16 :goto_2e8

    :pswitch_279
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v27, v32

    move-object/from16 v26, v33

    move-object/from16 v25, v34

    move-object/from16 v3, v35

    const/4 v2, 0x3

    sget-object v5, Lcom/vungle/ads/internal/model/g2;->a:Lcom/vungle/ads/internal/model/g2;

    move-object/from16 v24, v3

    move-object/from16 v2, v36

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    move-object/from16 v2, v29

    const/4 v3, 0x0

    const/4 v5, 0x4

    goto :goto_2e8

    :pswitch_29c
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v27, v32

    move-object/from16 v26, v33

    move-object/from16 v25, v34

    move-object/from16 v24, v35

    move-object/from16 v2, v36

    const/4 v3, 0x2

    sget-object v5, Lcom/vungle/ads/internal/model/d2;->a:Lcom/vungle/ads/internal/model/d2;

    move-object/from16 v23, v2

    move-object/from16 v3, v37

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v37, v3

    move-object/from16 v2, v29

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto :goto_2e8

    :pswitch_2c1
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v27, v32

    move-object/from16 v26, v33

    move-object/from16 v25, v34

    move-object/from16 v24, v35

    move-object/from16 v23, v36

    move-object/from16 v3, v37

    const/4 v2, 0x1

    sget-object v5, Lcom/vungle/ads/internal/model/z1;->a:Lcom/vungle/ads/internal/model/z1;

    move-object/from16 v22, v3

    move-object/from16 v2, v38

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v38, v2

    move-object/from16 v37, v22

    move-object/from16 v2, v29

    const/4 v5, 0x1

    :goto_2e8
    or-int v39, v39, v5

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v36, v23

    move-object/from16 v35, v24

    move-object/from16 v34, v25

    move-object/from16 v33, v26

    move-object/from16 v32, v27

    move-object/from16 v3, v28

    goto/16 :goto_106

    :pswitch_2fc
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v27, v32

    move-object/from16 v26, v33

    move-object/from16 v25, v34

    move-object/from16 v24, v35

    move-object/from16 v23, v36

    move-object/from16 v22, v37

    move-object/from16 v2, v38

    const/4 v3, 0x0

    move/from16 v40, v3

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    goto/16 :goto_106

    :cond_31b
    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v27, v32

    move-object/from16 v26, v33

    move-object/from16 v25, v34

    move-object/from16 v24, v35

    move-object/from16 v23, v36

    move-object/from16 v22, v37

    move-object/from16 v2, v38

    move-object v3, v13

    move-object v13, v12

    move-object v12, v3

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v16, v8

    move-object v5, v11

    move-object v11, v14

    move-object/from16 v7, v22

    move-object/from16 v6, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v8, v26

    move-object/from16 v14, v27

    move-object/from16 v3, v29

    move/from16 v30, v39

    move-object/from16 v22, v2

    move-object v2, v9

    :goto_34f
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v29, Lcom/vungle/ads/internal/model/w2;

    move-object/from16 v31, v22

    check-cast v31, Lcom/vungle/ads/internal/model/b2;

    move-object/from16 v32, v7

    check-cast v32, Lcom/vungle/ads/internal/model/f2;

    move-object/from16 v33, v6

    check-cast v33, Lcom/vungle/ads/internal/model/i2;

    move-object/from16 v34, v23

    check-cast v34, Lcom/vungle/ads/internal/model/s2;

    move-object/from16 v35, v24

    check-cast v35, Ljava/util/List;

    move-object/from16 v36, v8

    check-cast v36, Lcom/vungle/ads/internal/model/v2;

    move-object/from16 v37, v14

    check-cast v37, Ljava/lang/String;

    move-object/from16 v38, v13

    check-cast v38, Ljava/lang/Boolean;

    move-object/from16 v39, v5

    check-cast v39, Ljava/lang/Boolean;

    move-object/from16 v40, v12

    check-cast v40, Ljava/lang/Integer;

    move-object/from16 v41, v11

    check-cast v41, Ljava/lang/Boolean;

    move-object/from16 v42, v15

    check-cast v42, Ljava/lang/Integer;

    move-object/from16 v43, v4

    check-cast v43, Ljava/lang/Boolean;

    move-object/from16 v44, v28

    check-cast v44, Ljava/lang/Boolean;

    move-object/from16 v45, v18

    check-cast v45, Ljava/lang/Boolean;

    move-object/from16 v46, v17

    check-cast v46, Ljava/lang/Long;

    move-object/from16 v47, v16

    check-cast v47, Lcom/vungle/ads/internal/model/y1;

    move-object/from16 v48, v10

    check-cast v48, Ljava/lang/Boolean;

    move-object/from16 v49, v3

    check-cast v49, Ljava/lang/Boolean;

    move-object/from16 v50, v2

    check-cast v50, Ljava/util/Map;

    invoke-direct/range {v29 .. v50}, Lcom/vungle/ads/internal/model/w2;-><init>(ILcom/vungle/ads/internal/model/b2;Lcom/vungle/ads/internal/model/f2;Lcom/vungle/ads/internal/model/i2;Lcom/vungle/ads/internal/model/s2;Ljava/util/List;Lcom/vungle/ads/internal/model/v2;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/vungle/ads/internal/model/y1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;)V

    return-object v29

    :pswitch_data_3a8
    .packed-switch -0x1
        :pswitch_2fc
        :pswitch_2c1
        :pswitch_29c
        :pswitch_279
        :pswitch_254
        :pswitch_22a
        :pswitch_20c
        :pswitch_1f2
        :pswitch_1d8
        :pswitch_1c2
        :pswitch_1b2
        :pswitch_1a1
        :pswitch_190
        :pswitch_181
        :pswitch_172
        :pswitch_161
        :pswitch_14f
        :pswitch_13e
        :pswitch_12c
        :pswitch_10d
        :pswitch_f3
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/model/v1;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Lcom/vungle/ads/internal/model/w2;

    .line 2
    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/vungle/ads/internal/model/v1;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 4
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/w2;->a(Lcom/vungle/ads/internal/model/w2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 2

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
