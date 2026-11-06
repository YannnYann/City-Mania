###### Class com.vungle.ads.internal.model.g (com.vungle.ads.internal.model.g)
.class public final Lcom/vungle/ads/internal/model/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final a:Lcom/vungle/ads/internal/model/g;

.field public static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/g;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/g;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/g;->a:Lcom/vungle/ads/internal/model/g;

    .line 1
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.AdPayload.AdUnit"

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ad_type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ad_source"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "expiry"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "expiry_duration"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "deeplink_url"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "click_coordinates_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ad_load_optimization"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "mediation_name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "info"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sleep"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "error_code"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "tpat"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "vm_url"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "vm_version"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ad_market_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "notification"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "load_ad"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "viewability"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "template_type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "template_settings"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "creative_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "app_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "show_close"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "show_close_incentivized"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ad_size"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "webview_settings"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "use_preloading"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "max_download_retry_attempts"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/g;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

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
    .registers 32

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    sget-object v4, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    sget-object v8, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v11

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v12

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v13

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    sget-object v15, Lcom/vungle/ads/internal/model/w;->a:Lcom/vungle/ads/internal/model/w;

    invoke-static {v15}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v15

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v16

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v17

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v18

    move-object/from16 v19, v1

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    move-object/from16 v20, v1

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sget-object v21, Lcom/vungle/ads/internal/model/x;->a:Lcom/vungle/ads/internal/model/x;

    invoke-static/range {v21 .. v21}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v21

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v22

    sget-object v23, Lcom/vungle/ads/internal/model/t;->a:Lcom/vungle/ads/internal/model/t;

    invoke-static/range {v23 .. v23}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v23

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v24

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v25

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v26

    sget-object v27, Lcom/vungle/ads/internal/model/d;->a:Lcom/vungle/ads/internal/model/d;

    invoke-static/range {v27 .. v27}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v27

    sget-object v28, Lcom/vungle/ads/internal/model/d0;->a:Lcom/vungle/ads/internal/model/d0;

    invoke-static/range {v28 .. v28}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v28

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    move-object/from16 v29, v0

    const/16 v0, 0x1d

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/16 v30, 0x0

    aput-object v19, v0, v30

    const/16 v19, 0x1

    aput-object v2, v0, v19

    const/4 v2, 0x2

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v5, v0, v2

    const/4 v2, 0x4

    aput-object v6, v0, v2

    const/4 v2, 0x5

    aput-object v7, v0, v2

    const/4 v2, 0x6

    aput-object v9, v0, v2

    const/4 v2, 0x7

    aput-object v10, v0, v2

    const/16 v2, 0x8

    aput-object v11, v0, v2

    const/16 v2, 0x9

    aput-object v12, v0, v2

    const/16 v2, 0xa

    aput-object v13, v0, v2

    const/16 v2, 0xb

    aput-object v14, v0, v2

    const/16 v2, 0xc

    aput-object v15, v0, v2

    const/16 v2, 0xd

    aput-object v16, v0, v2

    const/16 v2, 0xe

    aput-object v17, v0, v2

    const/16 v2, 0xf

    aput-object v18, v0, v2

    const/16 v2, 0x10

    aput-object v20, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x12

    aput-object v21, v0, v1

    const/16 v1, 0x13

    aput-object v22, v0, v1

    const/16 v1, 0x14

    aput-object v23, v0, v1

    const/16 v1, 0x15

    aput-object v24, v0, v1

    const/16 v1, 0x16

    aput-object v29, v0, v1

    const/16 v1, 0x17

    aput-object v25, v0, v1

    const/16 v1, 0x18

    aput-object v26, v0, v1

    const/16 v1, 0x19

    aput-object v27, v0, v1

    const/16 v1, 0x1a

    aput-object v28, v0, v1

    const/16 v1, 0x1b

    aput-object v8, v0, v1

    const/16 v1, 0x1c

    aput-object v4, v0, v1

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 77

    move-object/from16 v0, p1

    .line 1
    const-string v9, "decoder"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v9, Lcom/vungle/ads/internal/model/g;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 3
    invoke-interface {v0, v9}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v10

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/16 v14, 0x8

    const/4 v13, 0x4

    const/4 v15, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v10, :cond_115

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v9, v2, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v9, v1, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v9, v15, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v4, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-interface {v0, v9, v12, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v9, v13, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v9, v11, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-interface {v0, v9, v8, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v9, v7, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v9, v14, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v9, v6, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v34, v1

    const/16 v1, 0xa

    invoke-interface {v0, v9, v1, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    const/16 v1, 0xb

    invoke-interface {v0, v9, v1, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    sget-object v1, Lcom/vungle/ads/internal/model/w;->a:Lcom/vungle/ads/internal/model/w;

    move-object/from16 v35, v2

    const/16 v2, 0xc

    invoke-interface {v0, v9, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {v0, v9, v2, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v1

    const/16 v1, 0xe

    invoke-interface {v0, v9, v1, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    const/16 v1, 0xf

    invoke-interface {v0, v9, v1, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v10}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v31, v2

    const/16 v2, 0x10

    invoke-interface {v0, v9, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v2, v10}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v27, v1

    const/16 v1, 0x11

    invoke-interface {v0, v9, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/vungle/ads/internal/model/x;->a:Lcom/vungle/ads/internal/model/x;

    move-object/from16 v26, v1

    const/16 v1, 0x12

    invoke-interface {v0, v9, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    invoke-interface {v0, v9, v2, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v1

    sget-object v1, Lcom/vungle/ads/internal/model/t;->a:Lcom/vungle/ads/internal/model/t;

    move-object/from16 v25, v2

    const/16 v2, 0x14

    invoke-interface {v0, v9, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15

    invoke-interface {v0, v9, v2, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 p1, v1

    const/16 v1, 0x16

    invoke-interface {v0, v9, v1, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v10, 0x17

    invoke-interface {v0, v9, v10, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v21, v1

    const/16 v1, 0x18

    invoke-interface {v0, v9, v1, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    sget-object v1, Lcom/vungle/ads/internal/model/d;->a:Lcom/vungle/ads/internal/model/d;

    move-object/from16 v22, v2

    const/16 v2, 0x19

    invoke-interface {v0, v9, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/vungle/ads/internal/model/d0;->a:Lcom/vungle/ads/internal/model/d0;

    move-object/from16 v19, v1

    const/16 v1, 0x1a

    invoke-interface {v0, v9, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-interface {v0, v9, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0x1c

    invoke-interface {v0, v9, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const v4, 0x1fffffff

    move/from16 v45, v4

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v43, v22

    move-object/from16 v14, v32

    move-object/from16 v16, v34

    move-object v12, v8

    move-object v8, v6

    move-object/from16 v6, v30

    move-object/from16 v30, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v24

    move-object/from16 v24, p1

    goto/16 :goto_84c

    :cond_115
    move/from16 v53, v1

    move/from16 v52, v2

    move-object v1, v3

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v36, v15

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    move-object/from16 v51, v50

    :goto_145
    const/16 v5, 0x1c

    if-eqz v53, :cond_809

    invoke-interface {v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    packed-switch v5, :pswitch_data_8ca

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v5}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_156
    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    move-object/from16 v55, v4

    const/16 v4, 0x1c

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/high16 v5, 0x10000000

    move-object/from16 v17, v3

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v24, v50

    move-object/from16 v16, v55

    const/4 v4, 0x0

    :goto_181
    move-object v3, v2

    move v2, v5

    move-object/from16 v5, v36

    goto/16 :goto_7ac

    :pswitch_187
    move-object/from16 v55, v4

    const/16 v4, 0x1c

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    move-object/from16 v17, v3

    move-object/from16 v4, v50

    const/16 v3, 0x1b

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    const/high16 v4, 0x8000000

    move-object v3, v2

    move v2, v4

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v24, v50

    :goto_1b7
    move-object/from16 v16, v55

    const/4 v4, 0x0

    goto/16 :goto_7ac

    :pswitch_1bc
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v50

    const/16 v3, 0x1b

    sget-object v5, Lcom/vungle/ads/internal/model/d0;->a:Lcom/vungle/ads/internal/model/d0;

    move-object/from16 v18, v4

    move-object/from16 v3, v49

    const/16 v4, 0x1a

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    const/high16 v3, 0x4000000

    move v4, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v24, v18

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    goto :goto_1b7

    :pswitch_1f2
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v49

    move-object/from16 v18, v50

    const/16 v4, 0x1a

    sget-object v5, Lcom/vungle/ads/internal/model/d;->a:Lcom/vungle/ads/internal/model/d;

    move-object/from16 v19, v3

    move-object/from16 v4, v48

    const/16 v3, 0x19

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    const/high16 v4, 0x2000000

    move-object v3, v2

    move v2, v4

    move-object/from16 v24, v18

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    goto :goto_1b7

    :pswitch_227
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v3, 0x19

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    move-object/from16 v20, v4

    move-object/from16 v3, v47

    const/16 v4, 0x18

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    const/high16 v3, 0x1000000

    move v4, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v24, v18

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    goto/16 :goto_1b7

    :pswitch_25e
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0x18

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    move-object/from16 v21, v3

    move-object/from16 v4, v46

    const/16 v3, 0x17

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    const/high16 v4, 0x800000

    move-object v3, v2

    move v2, v4

    move-object/from16 v24, v18

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    goto/16 :goto_1b7

    :pswitch_294
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v3, 0x17

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v22, v4

    move-object/from16 v3, v45

    const/16 v4, 0x16

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    const/high16 v3, 0x400000

    move v4, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v24, v18

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    move-object/from16 v23, v45

    goto/16 :goto_1b7

    :pswitch_2cb
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0x16

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v23, v3

    move-object/from16 v4, v44

    const/16 v3, 0x15

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    const/high16 v4, 0x200000

    move-object v3, v2

    move v2, v4

    move-object/from16 v24, v18

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v44

    goto/16 :goto_1b7

    :pswitch_301
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v3, 0x15

    sget-object v5, Lcom/vungle/ads/internal/model/t;->a:Lcom/vungle/ads/internal/model/t;

    move-object/from16 v3, v43

    move-object/from16 v43, v4

    const/16 v4, 0x14

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/high16 v5, 0x100000

    move-object/from16 v24, v18

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v18, v43

    move-object/from16 v16, v55

    const/4 v4, 0x0

    move-object/from16 v43, v3

    goto/16 :goto_181

    :pswitch_33a
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0x14

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v24, v3

    move-object/from16 v4, v42

    const/16 v3, 0x13

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    const/high16 v4, 0x80000

    move-object/from16 v3, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    goto/16 :goto_1b7

    :pswitch_378
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v3, 0x13

    sget-object v5, Lcom/vungle/ads/internal/model/x;->a:Lcom/vungle/ads/internal/model/x;

    move-object/from16 v25, v4

    move-object/from16 v3, v41

    const/16 v4, 0x12

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    const/high16 v3, 0x40000

    move v4, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    goto/16 :goto_1b7

    :pswitch_3b7
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0x12

    new-instance v5, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v5, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v26, v3

    move-object/from16 v4, v40

    const/16 v3, 0x11

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    const/high16 v4, 0x20000

    move-object/from16 v3, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    goto/16 :goto_1b7

    :pswitch_3fa
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v3, 0x11

    new-instance v5, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v5, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v27, v4

    move-object/from16 v4, v39

    const/16 v3, 0x10

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    const/high16 v4, 0x10000

    move-object/from16 v3, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    goto/16 :goto_1b7

    :pswitch_43d
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v3, 0x10

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v28, v4

    move-object/from16 v3, v38

    const/16 v4, 0xf

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    const v3, 0x8000

    move v4, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    goto/16 :goto_1b7

    :pswitch_47d
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0xf

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v29, v3

    move-object/from16 v4, v37

    const/16 v3, 0xe

    invoke-interface {v0, v9, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    const/16 v4, 0x4000

    move-object/from16 v3, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v5, v36

    move-object/from16 v30, v37

    goto/16 :goto_1b7

    :pswitch_4bb
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v4, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v3, 0xe

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v30, v4

    move-object/from16 v3, v36

    const/16 v4, 0xd

    invoke-interface {v0, v9, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    const/16 v3, 0x2000

    move v4, v3

    move-object v3, v2

    move v2, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    move-object/from16 v5, v36

    goto/16 :goto_1b7

    :pswitch_4fa
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0xd

    sget-object v5, Lcom/vungle/ads/internal/model/w;->a:Lcom/vungle/ads/internal/model/w;

    const/16 v4, 0xc

    invoke-interface {v0, v9, v4, v5, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/16 v5, 0x1000

    :goto_528
    move-object v4, v3

    move-object v3, v2

    move v2, v5

    move-object v5, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    goto/16 :goto_1b7

    :pswitch_536
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0xc

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v4, 0xb

    invoke-interface {v0, v9, v4, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/16 v5, 0x800

    goto :goto_528

    :pswitch_565
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0xb

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v4, 0xa

    invoke-interface {v0, v9, v4, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/16 v5, 0x400

    goto :goto_528

    :pswitch_594
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0xa

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v4, 0x9

    invoke-interface {v0, v9, v4, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/16 v5, 0x200

    goto/16 :goto_528

    :pswitch_5c4
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0x9

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v4, 0x8

    invoke-interface {v0, v9, v4, v5, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v5, 0x100

    goto/16 :goto_528

    :pswitch_5f4
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/16 v4, 0x8

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v4, 0x7

    invoke-interface {v0, v9, v4, v5, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/16 v5, 0x80

    goto/16 :goto_528

    :pswitch_623
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/4 v4, 0x7

    sget-object v5, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v4, 0x6

    invoke-interface {v0, v9, v4, v5, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/16 v5, 0x40

    goto/16 :goto_528

    :pswitch_651
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/4 v4, 0x6

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v4, 0x5

    invoke-interface {v0, v9, v4, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v5, 0x20

    goto/16 :goto_528

    :pswitch_67f
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/4 v4, 0x5

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/4 v4, 0x4

    invoke-interface {v0, v9, v4, v5, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    move-object v5, v3

    move-object/from16 v16, v55

    const/4 v4, 0x0

    move-object v3, v2

    const/16 v2, 0x10

    goto/16 :goto_7ac

    :pswitch_6ba
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/4 v4, 0x4

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/4 v4, 0x3

    invoke-interface {v0, v9, v4, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    move-object v5, v3

    move-object/from16 v16, v55

    const/4 v4, 0x0

    move-object v3, v2

    const/16 v2, 0x8

    goto/16 :goto_7ac

    :pswitch_6f5
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/4 v4, 0x3

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v4, 0x2

    invoke-interface {v0, v9, v4, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    move-object v5, v3

    move-object/from16 v16, v55

    const/4 v4, 0x0

    move-object v3, v2

    const/4 v2, 0x4

    goto/16 :goto_7ac

    :pswitch_72f
    move-object/from16 v17, v3

    move-object/from16 v55, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/4 v4, 0x2

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v34, v1

    move-object/from16 v1, v55

    const/4 v4, 0x1

    invoke-interface {v0, v9, v4, v5, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v4

    move-object/from16 v16, v1

    move-object v5, v3

    move-object/from16 v1, v34

    const/4 v4, 0x0

    move-object v3, v2

    const/4 v2, 0x2

    goto :goto_7ac

    :pswitch_76e
    move-object/from16 v34, v1

    move-object/from16 v17, v3

    move-object v1, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    const/4 v4, 0x1

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v16, v1

    move-object/from16 v1, v51

    const/4 v4, 0x0

    invoke-interface {v0, v9, v4, v5, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v5, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v5

    move-object/from16 v51, v1

    move-object v5, v3

    move-object/from16 v1, v34

    move-object v3, v2

    const/4 v2, 0x1

    :goto_7ac
    or-int v52, v52, v2

    move-object v2, v3

    :goto_7af
    move-object/from16 v3, v17

    goto :goto_7e7

    :pswitch_7b2
    move-object/from16 v34, v1

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    move-object/from16 v1, v51

    const/4 v4, 0x0

    move-object/from16 v5, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v43

    move-object/from16 v43, v5

    move-object v5, v3

    move/from16 v53, v4

    move-object/from16 v1, v34

    goto :goto_7af

    :goto_7e7
    sget-object v17, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v36, v5

    move-object/from16 v4, v16

    move-object/from16 v44, v18

    move-object/from16 v49, v19

    move-object/from16 v48, v20

    move-object/from16 v47, v21

    move-object/from16 v46, v22

    move-object/from16 v45, v23

    move-object/from16 v50, v24

    move-object/from16 v42, v25

    move-object/from16 v41, v26

    move-object/from16 v40, v27

    move-object/from16 v39, v28

    move-object/from16 v38, v29

    move-object/from16 v37, v30

    goto/16 :goto_145

    :cond_809
    move-object/from16 v34, v1

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object/from16 v3, v36

    move-object/from16 v30, v37

    move-object/from16 v29, v38

    move-object/from16 v28, v39

    move-object/from16 v27, v40

    move-object/from16 v26, v41

    move-object/from16 v25, v42

    move-object/from16 v24, v43

    move-object/from16 v43, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v18, v50

    move-object/from16 v1, v51

    move-object/from16 v35, v1

    move-object v4, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v7

    move-object v5, v11

    move-object v7, v13

    move-object v11, v15

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v23

    move-object/from16 v13, v34

    move/from16 v45, v52

    move-object v15, v10

    move-object/from16 v10, v22

    :goto_84c
    invoke-interface {v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v44, Lcom/vungle/ads/internal/model/i;

    move-object/from16 v46, v35

    check-cast v46, Ljava/lang/String;

    move-object/from16 v47, v16

    check-cast v47, Ljava/lang/String;

    move-object/from16 v48, v15

    check-cast v48, Ljava/lang/String;

    move-object/from16 v49, v4

    check-cast v49, Ljava/lang/Integer;

    move-object/from16 v50, v13

    check-cast v50, Ljava/lang/Integer;

    move-object/from16 v51, v11

    check-cast v51, Ljava/lang/String;

    move-object/from16 v52, v12

    check-cast v52, Ljava/lang/Boolean;

    move-object/from16 v53, v7

    check-cast v53, Ljava/lang/Boolean;

    move-object/from16 v54, v5

    check-cast v54, Ljava/lang/String;

    move-object/from16 v55, v8

    check-cast v55, Ljava/lang/String;

    move-object/from16 v56, v33

    check-cast v56, Ljava/lang/Integer;

    move-object/from16 v57, v14

    check-cast v57, Ljava/lang/Integer;

    move-object/from16 v58, v6

    check-cast v58, Ljava/util/Map;

    move-object/from16 v59, v31

    check-cast v59, Ljava/lang/String;

    move-object/from16 v60, v30

    check-cast v60, Ljava/lang/String;

    move-object/from16 v61, v29

    check-cast v61, Ljava/lang/String;

    move-object/from16 v62, v28

    check-cast v62, Ljava/util/List;

    move-object/from16 v63, v27

    check-cast v63, Ljava/util/List;

    move-object/from16 v64, v26

    check-cast v64, Lcom/vungle/ads/internal/model/z;

    move-object/from16 v65, v25

    check-cast v65, Ljava/lang/String;

    move-object/from16 v66, v24

    check-cast v66, Lcom/vungle/ads/internal/model/v;

    move-object/from16 v67, v43

    check-cast v67, Ljava/lang/String;

    move-object/from16 v68, v21

    check-cast v68, Ljava/lang/String;

    move-object/from16 v69, v10

    check-cast v69, Ljava/lang/Integer;

    move-object/from16 v70, v20

    check-cast v70, Ljava/lang/Integer;

    move-object/from16 v71, v19

    check-cast v71, Lcom/vungle/ads/internal/model/f;

    move-object/from16 v72, v1

    check-cast v72, Lcom/vungle/ads/internal/model/f0;

    move-object/from16 v73, v2

    check-cast v73, Ljava/lang/Boolean;

    move-object/from16 v74, v3

    check-cast v74, Ljava/lang/Integer;

    invoke-direct/range {v44 .. v74}, Lcom/vungle/ads/internal/model/i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vungle/ads/internal/model/z;Ljava/lang/String;Lcom/vungle/ads/internal/model/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/f;Lcom/vungle/ads/internal/model/f0;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object v44

    nop

    :pswitch_data_8ca
    .packed-switch -0x1
        :pswitch_7b2
        :pswitch_76e
        :pswitch_72f
        :pswitch_6f5
        :pswitch_6ba
        :pswitch_67f
        :pswitch_651
        :pswitch_623
        :pswitch_5f4
        :pswitch_5c4
        :pswitch_594
        :pswitch_565
        :pswitch_536
        :pswitch_4fa
        :pswitch_4bb
        :pswitch_47d
        :pswitch_43d
        :pswitch_3fa
        :pswitch_3b7
        :pswitch_378
        :pswitch_33a
        :pswitch_301
        :pswitch_2cb
        :pswitch_294
        :pswitch_25e
        :pswitch_227
        :pswitch_1f2
        :pswitch_1bc
        :pswitch_187
        :pswitch_156
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/model/g;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Lcom/vungle/ads/internal/model/i;

    .line 2
    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/vungle/ads/internal/model/g;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 4
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/i;->a(Lcom/vungle/ads/internal/model/i;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

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
