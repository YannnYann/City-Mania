###### Class com.vungle.ads.internal.model.z2 (com.vungle.ads.internal.model.z2)
.class public final Lcom/vungle/ads/internal/model/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# static fields
.field public static final a:Lcom/vungle/ads/internal/model/z2;

.field public static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/vungle/ads/internal/model/z2;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/z2;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/z2;->a:Lcom/vungle/ads/internal/model/z2;

    .line 1
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.DeviceNode.VungleExt"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "is_google_play_services_available"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "app_set_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "app_set_id_scope"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "battery_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "battery_state"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "battery_saver_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "connection_type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "connection_type_detail"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "locale"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "language"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "time_zone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "volume_level"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sound_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "is_tv"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sd_card_available"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "is_sideload_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "gaid"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amazon_advertising_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sit"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "oit"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ort"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "obt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "gp_version"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/z2;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

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
    .registers 20

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v11

    sget-object v12, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-static {v12}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v13

    invoke-static {v12}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    invoke-static {v12}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v15

    invoke-static {v12}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v12

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    move-object/from16 v16, v0

    const/16 v0, 0x17

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v17, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v18, 0x0

    aput-object v17, v0, v18

    const/16 v18, 0x1

    aput-object v1, v0, v18

    const/4 v1, 0x2

    aput-object v3, v0, v1

    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v3, 0x4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v3, 0x6

    aput-object v5, v0, v3

    const/4 v3, 0x7

    aput-object v6, v0, v3

    const/16 v3, 0x8

    aput-object v7, v0, v3

    const/16 v3, 0x9

    aput-object v8, v0, v3

    const/16 v3, 0xa

    aput-object v9, v0, v3

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v17, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v17, v0, v1

    const/16 v1, 0x10

    aput-object v10, v0, v1

    const/16 v1, 0x11

    aput-object v11, v0, v1

    const/16 v1, 0x12

    aput-object v13, v0, v1

    const/16 v1, 0x13

    aput-object v14, v0, v1

    const/16 v1, 0x14

    aput-object v15, v0, v1

    const/16 v1, 0x15

    aput-object v12, v0, v1

    const/16 v1, 0x16

    aput-object v16, v0, v1

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 48

    move-object/from16 v0, p1

    .line 1
    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/vungle/ads/internal/model/z2;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

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

    if-eqz v2, :cond_d7

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v7, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-interface {v0, v1, v6, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v3

    invoke-interface {v0, v1, v4, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v10

    invoke-interface {v0, v1, v14, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v1, v13, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v1, v5, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v12, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v11, v8, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0xb

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v15

    const/16 v9, 0xc

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v9

    move/from16 v22, v2

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    move/from16 v21, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v2

    move/from16 v20, v2

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    move/from16 v19, v2

    move-object/from16 v18, v7

    const/16 v2, 0x10

    const/4 v7, 0x0

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v8, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    move/from16 v24, v3

    const/16 v3, 0x12

    invoke-interface {v0, v1, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    const/16 v3, 0x13

    invoke-interface {v0, v1, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 p1, v3

    const/16 v3, 0x14

    invoke-interface {v0, v1, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    const/16 v3, 0x15

    invoke-interface {v0, v1, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x16

    invoke-interface {v0, v1, v3, v8, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const v7, 0x7fffff

    move-object/from16 v34, p1

    move-object/from16 v28, v6

    move/from16 v30, v9

    move-object v8, v14

    move/from16 v29, v15

    move-object/from16 v15, v17

    move/from16 v33, v19

    move/from16 v32, v20

    move/from16 v31, v21

    move-object/from16 v14, v23

    move/from16 v21, v24

    move-object/from16 v6, v25

    move/from16 v17, v7

    move/from16 v23, v10

    move-object/from16 v7, v18

    move/from16 v18, v22

    goto/16 :goto_3b0

    :cond_d7
    move v2, v7

    move-object v7, v9

    const/4 v9, 0x0

    move/from16 v45, v2

    move-object v2, v7

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v13, v6

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v36, v15

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move v10, v8

    move/from16 v24, v10

    move/from16 v26, v24

    move/from16 v42, v26

    move/from16 v43, v42

    move/from16 v25, v9

    move/from16 v44, v25

    move-object/from16 v8, v41

    move/from16 v7, v43

    move v9, v7

    :goto_102
    if-eqz v45, :cond_37d

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v12

    packed-switch v12, :pswitch_data_3f8

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v12}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_111
    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v11, 0x16

    invoke-interface {v0, v1, v11, v12, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/high16 v11, 0x400000

    or-int v26, v26, v11

    :goto_11d
    const/16 v11, 0xa

    const/16 v12, 0x9

    goto :goto_102

    :pswitch_122
    sget-object v11, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/16 v12, 0x15

    invoke-interface {v0, v1, v12, v11, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/high16 v11, 0x200000

    :goto_12c
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    :goto_130
    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v27, v39

    move-object/from16 v28, v40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v20, 0xe

    :goto_13e
    const/16 v21, 0xd

    goto/16 :goto_34e

    :pswitch_142
    sget-object v11, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/16 v12, 0x14

    invoke-interface {v0, v1, v12, v11, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/high16 v11, 0x100000

    goto :goto_12c

    :pswitch_14d
    sget-object v11, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/16 v12, 0x13

    invoke-interface {v0, v1, v12, v11, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/high16 v11, 0x80000

    goto :goto_12c

    :pswitch_158
    const/16 v12, 0x13

    sget-object v11, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/16 v12, 0x12

    invoke-interface {v0, v1, v12, v11, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/high16 v11, 0x40000

    goto :goto_12c

    :pswitch_165
    const/16 v12, 0x12

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v12, 0x11

    invoke-interface {v0, v1, v12, v11, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/high16 v15, 0x20000

    move v12, v15

    move-object v15, v11

    :goto_173
    move v11, v12

    goto :goto_12c

    :pswitch_175
    const/16 v12, 0x11

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v12, 0x10

    invoke-interface {v0, v1, v12, v11, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/high16 v14, 0x10000

    move v12, v14

    move-object v14, v11

    goto :goto_173

    :pswitch_184
    const/16 v11, 0xf

    const/16 v12, 0x10

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v24

    const v18, 0x8000

    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move/from16 v11, v18

    goto :goto_130

    :pswitch_196
    const/16 v10, 0xe

    const/16 v11, 0xf

    const/16 v12, 0x10

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v18

    const/16 v19, 0x4000

    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move/from16 v20, v10

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v27, v39

    move-object/from16 v28, v40

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_13e

    :pswitch_1b9
    const/16 v9, 0xd

    const/16 v11, 0xf

    const/16 v12, 0x10

    const/16 v20, 0xe

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v18

    const/16 v19, 0x2000

    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move/from16 v21, v9

    move/from16 v9, v18

    move/from16 v11, v19

    :goto_1d1
    move-object/from16 v12, v36

    :goto_1d3
    move-object/from16 v33, v37

    :goto_1d5
    move-object/from16 v31, v38

    :goto_1d7
    move-object/from16 v27, v39

    move-object/from16 v28, v40

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_34e

    :pswitch_1df
    const/16 v11, 0xc

    const/16 v12, 0x10

    const/16 v20, 0xe

    const/16 v21, 0xd

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v42

    const/16 v18, 0x1000

    :goto_1ed
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move/from16 v11, v18

    goto :goto_1d1

    :pswitch_1f4
    const/16 v11, 0xb

    const/16 v12, 0x10

    const/16 v20, 0xe

    const/16 v21, 0xd

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v44

    const/16 v18, 0x800

    goto :goto_1ed

    :pswitch_203
    const/16 v12, 0x10

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v12, 0xa

    invoke-interface {v0, v1, v12, v11, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v13, 0x400

    move v12, v13

    move-object v13, v11

    move v11, v12

    :goto_216
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    goto :goto_1d1

    :pswitch_21b
    move v12, v11

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v12, 0x9

    invoke-interface {v0, v1, v12, v11, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v11, 0x200

    goto :goto_216

    :pswitch_22b
    const/16 v12, 0x9

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v35, v2

    move-object/from16 v12, v36

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v11, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/16 v12, 0x100

    move v2, v12

    move-object v12, v11

    move v11, v2

    move-object/from16 v34, v3

    goto :goto_1d3

    :pswitch_245
    move-object/from16 v35, v2

    move-object/from16 v12, v36

    const/16 v2, 0x8

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v34, v3

    move-object/from16 v2, v37

    const/4 v3, 0x7

    invoke-interface {v0, v1, v3, v11, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v11, 0x80

    move-object/from16 v33, v2

    goto/16 :goto_1d5

    :pswitch_260
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v12, v36

    move-object/from16 v2, v37

    const/4 v3, 0x7

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v33, v2

    move-object/from16 v3, v38

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v11, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v11, 0x40

    move-object/from16 v31, v3

    goto/16 :goto_1d7

    :pswitch_27e
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v3, v38

    const/4 v2, 0x6

    const/4 v11, 0x5

    const/16 v20, 0xe

    const/16 v21, 0xd

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v43

    const/16 v32, 0x20

    move-object/from16 v31, v3

    move/from16 v11, v32

    goto/16 :goto_1d7

    :pswitch_29a
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v3, v38

    const/4 v11, 0x5

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v31, v3

    move-object/from16 v11, v39

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    move-object/from16 v28, v40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v11, 0x10

    goto/16 :goto_34e

    :pswitch_2be
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v11, v39

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v20, 0xe

    const/16 v21, 0xd

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result v25

    move-object/from16 v27, v11

    move-object/from16 v28, v40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v11, 0x8

    goto/16 :goto_34e

    :pswitch_2de
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v11, v39

    const/4 v3, 0x4

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v2, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    move-object/from16 v29, v4

    move-object/from16 v3, v40

    const/4 v4, 0x2

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    move-object/from16 v27, v11

    move-object/from16 v4, v29

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v11, 0x4

    goto :goto_34e

    :pswitch_304
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v29, v4

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v11, v39

    move-object/from16 v3, v40

    const/4 v4, 0x2

    const/16 v20, 0xe

    const/16 v21, 0xd

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v28, v3

    move-object/from16 v4, v41

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v41, v2

    move-object/from16 v27, v11

    move-object/from16 v4, v29

    const/4 v2, 0x0

    const/4 v11, 0x2

    goto :goto_34e

    :pswitch_32d
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v29, v4

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v11, v39

    move-object/from16 v28, v40

    move-object/from16 v4, v41

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v20, 0xe

    const/16 v21, 0xd

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v7

    move-object/from16 v27, v11

    move-object/from16 v4, v29

    move v11, v3

    :goto_34e
    or-int v26, v26, v11

    move-object/from16 v36, v12

    move-object/from16 v39, v27

    move-object/from16 v40, v28

    move-object/from16 v38, v31

    move-object/from16 v37, v33

    :goto_35a
    move-object/from16 v3, v34

    move-object/from16 v2, v35

    goto/16 :goto_11d

    :pswitch_360
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v29, v4

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v11, v39

    move-object/from16 v28, v40

    move-object/from16 v4, v41

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v20, 0xe

    const/16 v21, 0xd

    move/from16 v45, v2

    move-object/from16 v4, v29

    goto :goto_35a

    :cond_37d
    move-object/from16 v35, v2

    move-object/from16 v34, v3

    move-object/from16 v29, v4

    move-object/from16 v12, v36

    move-object/from16 v33, v37

    move-object/from16 v31, v38

    move-object/from16 v11, v39

    move-object/from16 v28, v40

    move-object/from16 v4, v41

    move-object v2, v12

    move-object v12, v5

    move-object v5, v2

    move/from16 v18, v7

    move-object v3, v8

    move/from16 v32, v10

    move/from16 v21, v25

    move/from16 v17, v26

    move-object/from16 v16, v29

    move-object/from16 v8, v31

    move-object/from16 v2, v35

    move/from16 v30, v42

    move/from16 v23, v43

    move/from16 v29, v44

    move-object v7, v4

    move/from16 v31, v9

    move-object v4, v11

    move-object v11, v13

    move-object/from16 v13, v33

    move/from16 v33, v24

    :goto_3b0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v0, v16

    new-instance v16, Lcom/vungle/ads/internal/model/b3;

    move-object/from16 v19, v7

    check-cast v19, Ljava/lang/String;

    move-object/from16 v20, v28

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/String;

    move-object/from16 v24, v8

    check-cast v24, Ljava/lang/String;

    move-object/from16 v25, v13

    check-cast v25, Ljava/lang/String;

    move-object/from16 v26, v5

    check-cast v26, Ljava/lang/String;

    move-object/from16 v27, v12

    check-cast v27, Ljava/lang/String;

    move-object/from16 v28, v11

    check-cast v28, Ljava/lang/String;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v35, v15

    check-cast v35, Ljava/lang/String;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/Long;

    move-object/from16 v37, v34

    check-cast v37, Ljava/lang/Long;

    move-object/from16 v38, v6

    check-cast v38, Ljava/lang/Long;

    move-object/from16 v39, v2

    check-cast v39, Ljava/lang/Long;

    move-object/from16 v40, v3

    check-cast v40, Ljava/lang/String;

    move-object/from16 v34, v14

    invoke-direct/range {v16 .. v40}, Lcom/vungle/ads/internal/model/b3;-><init>(IZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v16

    nop

    :pswitch_data_3f8
    .packed-switch -0x1
        :pswitch_360
        :pswitch_32d
        :pswitch_304
        :pswitch_2de
        :pswitch_2be
        :pswitch_29a
        :pswitch_27e
        :pswitch_260
        :pswitch_245
        :pswitch_22b
        :pswitch_21b
        :pswitch_203
        :pswitch_1f4
        :pswitch_1df
        :pswitch_1b9
        :pswitch_196
        :pswitch_184
        :pswitch_175
        :pswitch_165
        :pswitch_158
        :pswitch_14d
        :pswitch_142
        :pswitch_122
        :pswitch_111
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    .line 0
    sget-object v0, Lcom/vungle/ads/internal/model/z2;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Lcom/vungle/ads/internal/model/b3;

    .line 2
    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/vungle/ads/internal/model/z2;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 4
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/b3;->a(Lcom/vungle/ads/internal/model/b3;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

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
