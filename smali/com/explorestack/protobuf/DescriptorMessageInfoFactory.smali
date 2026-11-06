###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory (com.explorestack.protobuf.DescriptorMessageInfoFactory)
.class public final Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;,
        Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;
    }
.end annotation


# static fields
.field public static final instance:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

.field public static isInitializedCheckAnalyzer:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

.field public static final specialFieldNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 63
    new-instance v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->instance:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "serialized_size"

    const-string v2, "class"

    const-string v3, "cached_size"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->specialFieldNames:Ljava/util/Set;

    .line 252
    new-instance v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    invoke-direct {v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->isInitializedCheckAnalyzer:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static bitField(Ljava/lang/Class;I)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static buildOneofMember(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;",
            "Z",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/explorestack/protobuf/FieldInfo;"
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->getOneof(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;

    move-result-object v3

    .line 452
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v2

    .line 453
    invoke-static {p0, p1, v2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getOneofStoredType(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/FieldType;)Ljava/lang/Class;

    move-result-object v4

    .line 455
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v1

    move v5, p3

    move-object v6, p4

    .line 454
    invoke-static/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldInfo;->forOneofMemberField(ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object p0

    return-object p0
.end method

.method public static cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 580
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getCachedSizeFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/MessageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/explorestack/protobuf/MessageInfo;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax:[I

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 107
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convertProto3(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object p0

    return-object p0

    .line 109
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported syntax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_3a
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convertProto2(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static convertProto2(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/explorestack/protobuf/StructuralMessageInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/explorestack/protobuf/StructuralMessageInfo;->newBuilder(I)Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;

    move-result-object v2

    .line 264
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withDefaultInstance(Ljava/lang/Object;)V

    .line 265
    sget-object v3, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withSyntax(Lcom/explorestack/protobuf/ProtoSyntax;)V

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withMessageSetWireFormat(Z)V

    .line 268
    new-instance v3, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V

    const/4 v6, 0x1

    move-object v8, v4

    move v14, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 277
    :goto_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_124

    .line 278
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 279
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v15

    .line 281
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v11

    sget-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v11, v12, :cond_56

    .line 282
    new-instance v11, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;

    invoke-direct {v11, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;-><init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    goto :goto_57

    :cond_56
    move-object v11, v4

    .line 290
    :goto_57
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v13

    if-eqz v13, :cond_66

    .line 292
    invoke-static {v0, v10, v3, v15, v11}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->buildOneofMember(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_117

    .line 294
    :cond_66
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 295
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    .line 296
    invoke-static {v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v5

    .line 298
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isMapField()Z

    move-result v16

    if-eqz v16, :cond_9d

    .line 304
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v5

    const/4 v15, 0x2

    invoke-virtual {v5, v15}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v5

    .line 305
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v15

    if-ne v15, v12, :cond_8c

    .line 306
    new-instance v11, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$2;

    invoke-direct {v11, v5}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$2;-><init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 318
    :cond_8c
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/explorestack/protobuf/SchemaUtil;->getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 315
    invoke-static {v13, v4, v5, v11}, Lcom/explorestack/protobuf/FieldInfo;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 314
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_11f

    .line 323
    :cond_9d
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v12

    if-eqz v12, :cond_ef

    if-eqz v11, :cond_c1

    .line 326
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result v12

    if-eqz v12, :cond_b8

    .line 329
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 328
    invoke-static {v13, v4, v5, v11, v10}, Lcom/explorestack/protobuf/FieldInfo;->forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 327
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_11f

    .line 331
    :cond_b8
    invoke-static {v13, v4, v5, v11}, Lcom/explorestack/protobuf/FieldInfo;->forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_11f

    .line 333
    :cond_c1
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v11

    sget-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v11, v12, :cond_d5

    .line 336
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getTypeForRepeatedMessageField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object v10

    .line 335
    invoke-static {v13, v4, v5, v10}, Lcom/explorestack/protobuf/FieldInfo;->forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 334
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_11f

    .line 338
    :cond_d5
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result v11

    if-eqz v11, :cond_e7

    .line 340
    invoke-static {v0, v10}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-static {v13, v4, v5, v10}, Lcom/explorestack/protobuf/FieldInfo;->forPackedField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 339
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_11f

    .line 342
    :cond_e7
    invoke-static {v13, v4, v5, v15}, Lcom/explorestack/protobuf/FieldInfo;->forField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Z)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_11f

    :cond_ef
    if-nez v8, :cond_f5

    .line 350
    invoke-static {v0, v9}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->bitField(Ljava/lang/Class;I)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 354
    :cond_f5
    invoke-virtual {v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v10

    if-eqz v10, :cond_109

    move-object v12, v5

    move-object/from16 v16, v11

    move-object v10, v13

    move v11, v4

    move-object v13, v8

    .line 356
    invoke-static/range {v10 .. v16}, Lcom/explorestack/protobuf/FieldInfo;->forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 355
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_116

    :cond_109
    move-object v12, v5

    move-object/from16 v16, v11

    move-object v10, v13

    move v11, v4

    move-object v13, v8

    .line 360
    invoke-static/range {v10 .. v16}, Lcom/explorestack/protobuf/FieldInfo;->forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 359
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    :goto_116
    move-object v8, v13

    :goto_117
    shl-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_11f

    add-int/lit8 v9, v9, 0x1

    move v14, v6

    const/4 v8, 0x0

    :cond_11f
    :goto_11f
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_30

    .line 375
    :cond_124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 376
    :goto_12a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_15c

    .line 377
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 378
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v5

    if-nez v5, :cond_14e

    .line 379
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v5, v6, :cond_159

    .line 380
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->needsIsInitializedCheck(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 381
    :cond_14e
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_159
    add-int/lit8 v3, v3, 0x1

    goto :goto_12a

    .line 384
    :cond_15c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v5, 0x0

    .line 385
    :goto_163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_178

    .line 386
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_163

    .line 388
    :cond_178
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withCheckInitialized([I)V

    .line 390
    invoke-virtual {v2}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->build()Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static convertProto3(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ")",
            "Lcom/explorestack/protobuf/StructuralMessageInfo;"
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p1

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/StructuralMessageInfo;->newBuilder(I)Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;

    move-result-object v0

    .line 398
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withDefaultInstance(Ljava/lang/Object;)V

    .line 399
    sget-object v1, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withSyntax(Lcom/explorestack/protobuf/ProtoSyntax;)V

    .line 401
    new-instance v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V

    const/4 v3, 0x0

    .line 403
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b4

    .line 404
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 405
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3b

    .line 407
    invoke-static {p0, v4, v1, v6, v2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->buildOneofMember(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto/16 :goto_b0

    .line 410
    :cond_3b
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isMapField()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 413
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 414
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    .line 415
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/explorestack/protobuf/SchemaUtil;->getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 412
    invoke-static {v5, v6, v4, v2}, Lcom/explorestack/protobuf/FieldInfo;->forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 411
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_b0

    .line 419
    :cond_59
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v5, v7, :cond_7f

    .line 422
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 423
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    .line 424
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v7

    .line 425
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getTypeForRepeatedMessageField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object v4

    .line 421
    invoke-static {v5, v6, v7, v4}, Lcom/explorestack/protobuf/FieldInfo;->forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 420
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_b0

    .line 428
    :cond_7f
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 431
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 432
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    .line 433
    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v7

    .line 434
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->cachedSizeField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 430
    invoke-static {v5, v6, v7, v4}, Lcom/explorestack/protobuf/FieldInfo;->forPackedField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 429
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    goto :goto_b0

    .line 437
    :cond_9d
    invoke-static {p0, v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v7

    invoke-static {v4}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;

    move-result-object v4

    invoke-static {v5, v7, v4, v6}, Lcom/explorestack/protobuf/FieldInfo;->forField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Z)Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v4

    .line 436
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->withField(Lcom/explorestack/protobuf/FieldInfo;)V

    :goto_b0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1f

    .line 441
    :cond_b4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StructuralMessageInfo$Builder;->build()Lcom/explorestack/protobuf/StructuralMessageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static descriptorForType(Ljava/lang/Class;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;"
        }
    .end annotation

    .line 99
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public static field(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 576
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 585
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 587
    :catch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in message class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCachedSizeFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;
    .registers 2

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MemoizedSerializedSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation

    .line 90
    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Message;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get default instance for message class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getFieldName(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/String;
    .registers 3

    .line 593
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_11

    .line 594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    .line 595
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p0

    .line 596
    :goto_15
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->specialFieldNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "__"

    goto :goto_22

    :cond_20
    const-string v0, "_"

    .line 597
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFieldType(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/FieldType;
    .registers 4

    .line 484
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18a

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :pswitch_2a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_33

    .line 563
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 565
    :cond_33
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_3c

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_3c
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 557
    :pswitch_3f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_48

    .line 558
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 560
    :cond_48
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_51

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_51
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->UINT32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 555
    :pswitch_54
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_5d

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->STRING_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_5d
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->STRING:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 550
    :pswitch_60
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_69

    .line 551
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 553
    :cond_69
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_72

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_72
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 545
    :pswitch_75
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 546
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 548
    :cond_7e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_87

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_87
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SINT32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 540
    :pswitch_8a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_93

    .line 541
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 543
    :cond_93
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_9c

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_9c
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 535
    :pswitch_9f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 536
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 538
    :cond_a8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_b1

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_b1
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->SFIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 530
    :pswitch_b4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isMapField()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 531
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->MAP:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 533
    :cond_bd
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_c6

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_c6
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->MESSAGE:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 525
    :pswitch_c9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 526
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 528
    :cond_d2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_db

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_db
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 520
    :pswitch_de
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 521
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 523
    :cond_e7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_f0

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_f0
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->INT32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 518
    :pswitch_f3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_fc

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_fc
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->GROUP:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 513
    :pswitch_ff
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_108

    .line 514
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FLOAT:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 516
    :cond_108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_111

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_111
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FLOAT_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 508
    :pswitch_114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 509
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED64:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 511
    :cond_11d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_126

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_126
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 503
    :pswitch_129
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_132

    .line 504
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED32:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 506
    :cond_132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_13b

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_13b
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->FIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 498
    :pswitch_13e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_147

    .line 499
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->ENUM:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 501
    :cond_147
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_150

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_150
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->ENUM_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 493
    :pswitch_153
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_15c

    .line 494
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->DOUBLE:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 496
    :cond_15c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_165

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_165
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 491
    :pswitch_168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_171

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BYTES_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_171
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BYTES:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 486
    :pswitch_174
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_17d

    .line 487
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BOOL:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    .line 489
    :cond_17d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_186

    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    :cond_186
    sget-object p0, Lcom/explorestack/protobuf/FieldType;->BOOL_LIST:Lcom/explorestack/protobuf/FieldType;

    return-object p0

    nop

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_174
        :pswitch_168
        :pswitch_153
        :pswitch_13e
        :pswitch_129
        :pswitch_114
        :pswitch_ff
        :pswitch_f3
        :pswitch_de
        :pswitch_c9
        :pswitch_b4
        :pswitch_9f
        :pswitch_8a
        :pswitch_75
        :pswitch_60
        :pswitch_54
        :pswitch_3f
        :pswitch_2a
    .end packed-switch
.end method

.method public static getOneofStoredType(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/FieldType;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/explorestack/protobuf/FieldType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 460
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p2}, Lcom/explorestack/protobuf/FieldType;->getJavaType()Lcom/explorestack/protobuf/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 479
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid type for oneof: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :pswitch_26
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getOneofStoredTypeForMessage(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 475
    :pswitch_2b
    const-class p0, Ljava/lang/String;

    return-object p0

    .line 473
    :pswitch_2e
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 471
    :pswitch_31
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 468
    :pswitch_34
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 466
    :pswitch_37
    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 464
    :pswitch_3a
    const-class p0, Lcom/explorestack/protobuf/ByteString;

    return-object p0

    .line 462
    :pswitch_3d
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method public static getOneofStoredTypeForMessage(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 635
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    .line 636
    :goto_15
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getterForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 637
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 639
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getTypeForRepeatedMessageField(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 646
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    .line 647
    :goto_15
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->getterForField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 648
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 650
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getterForField(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 656
    invoke-static {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 659
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 660
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static needsIsInitializedCheck(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Z
    .registers 2

    .line 256
    sget-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->isInitializedCheckAnalyzer:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->needsIsInitializedCheck(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Z

    move-result p0

    return p0
.end method

.method public static snakeCaseToCamelCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    .line 611
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_43

    .line 612
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_1e

    :goto_1c
    move v4, v2

    goto :goto_40

    .line 615
    :cond_1e
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 616
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_28
    if-eqz v4, :cond_33

    .line 619
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v1

    goto :goto_40

    :cond_33
    if-nez v3, :cond_3d

    .line 622
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 624
    :cond_3d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 627
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 76
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public messageInfoFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/MessageInfo;"
        }
    .end annotation

    .line 81
    const-class v0, Lcom/explorestack/protobuf/GeneratedMessageV3;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->descriptorForType(Ljava/lang/Class;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convert(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/MessageInfo;

    move-result-object p1

    return-object p1

    .line 82
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory.AnonymousClass1 (com.explorestack.protobuf.DescriptorMessageInfoFactory$1)
.class public final Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convertProto2(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$fd:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;->val$fd:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;->val$fd:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory.AnonymousClass2 (com.explorestack.protobuf.DescriptorMessageInfoFactory$2)
.class public final Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$2;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->convertProto2(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/StructuralMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$valueField:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$2;->val$valueField:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$2;->val$valueField:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory.AnonymousClass3 (com.explorestack.protobuf.DescriptorMessageInfoFactory$3)
.class public synthetic Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

.field public static final synthetic $SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax:[I

.field public static final synthetic $SwitchMap$com$google$protobuf$JavaType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 484
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    .line 460
    :catch_d8
    invoke-static {}, Lcom/explorestack/protobuf/JavaType;->values()[Lcom/explorestack/protobuf/JavaType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    :try_start_e1
    sget-object v10, Lcom/explorestack/protobuf/JavaType;->BOOLEAN:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_e9
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v10, Lcom/explorestack/protobuf/JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f3} :catch_f3

    :catch_f3
    :try_start_f3
    sget-object v9, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v10, Lcom/explorestack/protobuf/JavaType;->DOUBLE:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fd} :catch_fd

    :catch_fd
    :try_start_fd
    sget-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v9, Lcom/explorestack/protobuf/JavaType;->FLOAT:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v2, v9
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_107} :catch_107

    :catch_107
    :try_start_107
    sget-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v3, Lcom/explorestack/protobuf/JavaType;->ENUM:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v4, v2, v3
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_111} :catch_111

    :catch_111
    :try_start_111
    sget-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v3, Lcom/explorestack/protobuf/JavaType;->INT:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v5, v2, v3
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11b} :catch_11b

    :catch_11b
    :try_start_11b
    sget-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v3, Lcom/explorestack/protobuf/JavaType;->LONG:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v6, v2, v3
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_125} :catch_125

    :catch_125
    :try_start_125
    sget-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v3, Lcom/explorestack/protobuf/JavaType;->STRING:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v7, v2, v3
    :try_end_12f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_12f} :catch_12f

    :catch_12f
    :try_start_12f
    sget-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v3, Lcom/explorestack/protobuf/JavaType;->MESSAGE:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v8, v2, v3
    :try_end_139
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f .. :try_end_139} :catch_139

    .line 103
    :catch_139
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->values()[Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax:[I

    :try_start_142
    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_14a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_142 .. :try_end_14a} :catch_14a

    :catch_14a
    :try_start_14a
    sget-object v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$3;->$SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax:[I

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14a .. :try_end_154} :catch_154

    :catch_154
    return-void
.end method

###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory.IsInitializedCheckAnalyzer (com.explorestack.protobuf.DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer)
.class public Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsInitializedCheckAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;,
        Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;
    }
.end annotation


# instance fields
.field public index:I

.field public final nodeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;",
            ">;"
        }
    .end annotation
.end field

.field public final resultCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->resultCache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->index:I

    .line 136
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->stack:Ljava/util/Stack;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->nodeCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final analyze(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;)V
    .registers 8

    .line 218
    iget-object v0, p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 219
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->isExtendable()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    goto :goto_53

    .line 224
    :cond_1a
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 225
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_53

    .line 230
    :cond_35
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_22

    .line 233
    iget-object v4, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->nodeCache:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;

    .line 234
    iget-object v2, v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->component:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

    if-eq v2, p1, :cond_22

    .line 235
    iget-boolean v2, v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->needsIsInitializedCheck:Z

    if-eqz v2, :cond_22

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    .line 244
    :goto_53
    iput-boolean v3, p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->needsIsInitializedCheck:Z

    .line 246
    iget-object v0, p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 247
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->resultCache:Ljava/util/Map;

    iget-boolean v3, p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->needsIsInitializedCheck:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    :cond_73
    return-void
.end method

.method public final dfs(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;
    .registers 6

    .line 175
    new-instance v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;

    iget v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->index:I

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    .line 176
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->nodeCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 181
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_1d

    .line 182
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->nodeCache:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;

    if-nez v2, :cond_52

    .line 185
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->dfs(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;

    move-result-object v1

    .line 186
    iget v2, v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    iget v1, v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    goto :goto_1d

    .line 188
    :cond_52
    iget-object v1, v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->component:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

    if-nez v1, :cond_1d

    .line 190
    iget v1, v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    iget v2, v2, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    goto :goto_1d

    .line 196
    :cond_61
    iget p1, v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->index:I

    iget v1, v0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    if-ne p1, v1, :cond_83

    .line 198
    new-instance p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;-><init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V

    .line 200
    :cond_6d
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;

    .line 201
    iput-object p1, v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->component:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

    .line 202
    iget-object v2, p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->messages:Ljava/util/List;

    iget-object v3, v1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v1, v0, :cond_6d

    .line 208
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->analyze(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;)V

    :cond_83
    return-object v0
.end method

.method public needsIsInitializedCheck(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Z
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->resultCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 142
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 144
    :cond_f
    monitor-enter p0

    .line 147
    :try_start_10
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->resultCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    .line 149
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_20
    move-exception p1

    goto :goto_2c

    .line 151
    :cond_22
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;->dfs(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;

    move-result-object p1

    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->component:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

    iget-boolean p1, p1, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->needsIsInitializedCheck:Z

    monitor-exit p0

    return p1

    .line 152
    :goto_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_20

    throw p1
.end method

###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory.IsInitializedCheckAnalyzer.Node (com.explorestack.protobuf.DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node)
.class public Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field public component:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

.field public final descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field public final index:I

.field public lowLink:I


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .registers 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 163
    iput p2, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->index:I

    .line 164
    iput p2, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->lowLink:I

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node;->component:Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;

    return-void
.end method

###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory.IsInitializedCheckAnalyzer.StronglyConnectedComponent (com.explorestack.protobuf.DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent)
.class public Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StronglyConnectedComponent"
.end annotation


# instance fields
.field public final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public needsIsInitializedCheck:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->messages:Ljava/util/List;

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;->needsIsInitializedCheck:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent;-><init>()V

    return-void
.end method

###### Class com.explorestack.protobuf.DescriptorMessageInfoFactory.OneofState (com.explorestack.protobuf.DescriptorMessageInfoFactory$OneofState)
.class public final Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofState"
.end annotation


# instance fields
.field public oneofs:[Lcom/explorestack/protobuf/OneofInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 665
    new-array v0, v0, [Lcom/explorestack/protobuf/OneofInfo;

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$1;)V
    .registers 2

    .line 664
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;-><init>()V

    return-void
.end method

.method public static newInfo(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ")",
            "Lcom/explorestack/protobuf/OneofInfo;"
        }
    .end annotation

    .line 682
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Case_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v2, Lcom/explorestack/protobuf/OneofInfo;

    .line 687
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result p1

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->access$300(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v1}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory;->access$300(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-direct {v2, p1, v0, p0}, Lcom/explorestack/protobuf/OneofInfo;-><init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    return-object v2
.end method


# virtual methods
.method public getOneof(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ")",
            "Lcom/explorestack/protobuf/OneofInfo;"
        }
    .end annotation

    .line 668
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v0

    .line 669
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    array-length v2, v1

    if-lt v0, v2, :cond_13

    mul-int/lit8 v2, v0, 0x2

    .line 671
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/explorestack/protobuf/OneofInfo;

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    .line 673
    :cond_13
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_22

    .line 675
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->newInfo(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/OneofInfo;

    move-result-object p1

    .line 676
    iget-object p2, p0, Lcom/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState;->oneofs:[Lcom/explorestack/protobuf/OneofInfo;

    aput-object p1, p2, v0

    return-object p1

    :cond_22
    return-object v1
.end method
