###### Class com.explorestack.protobuf.MessageSchema (com.explorestack.protobuf.MessageSchema)
.class public final Lcom/explorestack/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Lcom/explorestack/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field public final buffer:[I

.field public final checkInitializedCount:I

.field public final defaultInstance:Lcom/explorestack/protobuf/MessageLite;

.field public final extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;"
        }
    .end annotation
.end field

.field public final hasExtensions:Z

.field public final intArray:[I

.field public final listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

.field public final lite:Z

.field public final mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

.field public final maxFieldNumber:I

.field public final minFieldNumber:I

.field public final newInstanceSchema:Lcom/explorestack/protobuf/NewInstanceSchema;

.field public final objects:[Ljava/lang/Object;

.field public final proto3:Z

.field public final repeatedFieldOffsetStart:I

.field public final unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field public final useCachedSizeField:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 93
    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 102
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/explorestack/protobuf/MessageLite;ZZ[IIILcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/explorestack/protobuf/MessageLite;",
            "ZZ[III",
            "Lcom/explorestack/protobuf/NewInstanceSchema;",
            "Lcom/explorestack/protobuf/ListFieldSchema;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/explorestack/protobuf/MapFieldSchema;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    .line 197
    iput-object p2, p0, Lcom/explorestack/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 198
    iput p3, p0, Lcom/explorestack/protobuf/MessageSchema;->minFieldNumber:I

    .line 199
    iput p4, p0, Lcom/explorestack/protobuf/MessageSchema;->maxFieldNumber:I

    .line 201
    instance-of p1, p5, Lcom/explorestack/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/explorestack/protobuf/MessageSchema;->lite:Z

    .line 202
    iput-boolean p6, p0, Lcom/explorestack/protobuf/MessageSchema;->proto3:Z

    if-eqz p14, :cond_1b

    .line 203
    invoke-virtual {p14, p5}, Lcom/explorestack/protobuf/ExtensionSchema;->hasExtensions(Lcom/explorestack/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    .line 204
    iput-boolean p7, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    .line 206
    iput-object p8, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    .line 207
    iput p9, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    .line 208
    iput p10, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 210
    iput-object p11, p0, Lcom/explorestack/protobuf/MessageSchema;->newInstanceSchema:Lcom/explorestack/protobuf/NewInstanceSchema;

    .line 211
    iput-object p12, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 212
    iput-object p13, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    .line 213
    iput-object p14, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    .line 214
    iput-object p5, p0, Lcom/explorestack/protobuf/MessageSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    move-object p1, p15

    .line 215
    iput-object p1, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    return-void
.end method

.method public static booleanAt(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5766
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static doubleAt(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5750
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static floatAt(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5754
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static getMutableUnknownFields(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;
    .registers 3

    .line 4346
    check-cast p0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    .line 4347
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 4348
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->newInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 4349
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    :cond_10
    return-object v0
.end method

.method public static intAt(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5758
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static isEnforceUtf8(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static isInitialized(Ljava/lang/Object;ILcom/explorestack/protobuf/Schema;)Z
    .registers 5

    .line 5622
    invoke-static {p1}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 5623
    invoke-interface {p2, p0}, Lcom/explorestack/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRequired(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static listAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 2533
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static longAt(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5762
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static newSchema(Ljava/lang/Class;Lcom/explorestack/protobuf/MessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/explorestack/protobuf/MessageInfo;",
            "Lcom/explorestack/protobuf/NewInstanceSchema;",
            "Lcom/explorestack/protobuf/ListFieldSchema;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/explorestack/protobuf/MapFieldSchema;",
            ")",
            "Lcom/explorestack/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 226
    instance-of p0, p1, Lcom/explorestack/protobuf/RawMessageInfo;

    if-eqz p0, :cond_b

    .line 227
    check-cast p1, Lcom/explorestack/protobuf/RawMessageInfo;

    invoke-static/range {p1 .. p6}, Lcom/explorestack/protobuf/MessageSchema;->newSchemaForRawMessageInfo(Lcom/explorestack/protobuf/RawMessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    .line 236
    :cond_b
    check-cast p1, Lcom/explorestack/protobuf/StructuralMessageInfo;

    invoke-static/range {p1 .. p6}, Lcom/explorestack/protobuf/MessageSchema;->newSchemaForMessageInfo(Lcom/explorestack/protobuf/StructuralMessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;

    move-result-object p0

    return-object p0
.end method

.method public static newSchemaForMessageInfo(Lcom/explorestack/protobuf/StructuralMessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/StructuralMessageInfo;",
            "Lcom/explorestack/protobuf/NewInstanceSchema;",
            "Lcom/explorestack/protobuf/ListFieldSchema;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/explorestack/protobuf/MapFieldSchema;",
            ")",
            "Lcom/explorestack/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/StructuralMessageInfo;->getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    move v10, v2

    goto :goto_d

    :cond_c
    move v10, v3

    .line 626
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/StructuralMessageInfo;->getFields()[Lcom/explorestack/protobuf/FieldInfo;

    move-result-object v0

    .line 629
    array-length v1, v0

    if-nez v1, :cond_17

    move v7, v3

    move v8, v7

    goto :goto_27

    .line 633
    :cond_17
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/explorestack/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 634
    array-length v4, v0

    sub-int/2addr v4, v2

    aget-object v2, v0, v4

    invoke-virtual {v2}, Lcom/explorestack/protobuf/FieldInfo;->getFieldNumber()I

    move-result v2

    move v7, v1

    move v8, v2

    .line 637
    :goto_27
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    .line 639
    new-array v5, v2, [I

    mul-int/lit8 v1, v1, 0x2

    .line 640
    new-array v6, v1, [Ljava/lang/Object;

    .line 644
    array-length v1, v0

    move v2, v3

    move v4, v2

    move v9, v4

    :goto_34
    const/16 v11, 0x31

    const/16 v12, 0x12

    if-ge v2, v1, :cond_60

    aget-object v13, v0, v2

    .line 645
    invoke-virtual {v13}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v14

    sget-object v15, Lcom/explorestack/protobuf/FieldType;->MAP:Lcom/explorestack/protobuf/FieldType;

    if-ne v14, v15, :cond_47

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 647
    :cond_47
    invoke-virtual {v13}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v14

    if-lt v14, v12, :cond_5d

    invoke-virtual {v13}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v12

    if-gt v12, v11, :cond_5d

    add-int/lit8 v9, v9, 0x1

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_60
    const/4 v1, 0x0

    if-lez v4, :cond_66

    .line 653
    new-array v2, v4, [I

    goto :goto_67

    :cond_66
    move-object v2, v1

    :goto_67
    if-lez v9, :cond_6b

    .line 654
    new-array v1, v9, [I

    .line 658
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/StructuralMessageInfo;->getCheckInitialized()[I

    move-result-object v4

    if-nez v4, :cond_73

    .line 660
    sget-object v4, Lcom/explorestack/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    :cond_73
    move v9, v3

    move v13, v9

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    .line 665
    :goto_79
    array-length v3, v0

    if-ge v9, v3, :cond_d3

    .line 666
    aget-object v3, v0, v9

    .line 667
    invoke-virtual {v3}, Lcom/explorestack/protobuf/FieldInfo;->getFieldNumber()I

    move-result v11

    .line 671
    invoke-static {v3, v5, v13, v6}, Lcom/explorestack/protobuf/MessageSchema;->storeFieldData(Lcom/explorestack/protobuf/FieldInfo;[II[Ljava/lang/Object;)V

    .line 674
    array-length v12, v4

    if-ge v14, v12, :cond_91

    aget v12, v4, v14

    if-ne v12, v11, :cond_91

    add-int/lit8 v11, v14, 0x1

    .line 676
    aput v13, v4, v14

    move v14, v11

    .line 679
    :cond_91
    invoke-virtual {v3}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v11

    sget-object v12, Lcom/explorestack/protobuf/FieldType;->MAP:Lcom/explorestack/protobuf/FieldType;

    if-ne v11, v12, :cond_a1

    add-int/lit8 v3, v15, 0x1

    .line 680
    aput v13, v2, v15

    move v15, v3

    :cond_9e
    move/from16 v18, v13

    goto :goto_ca

    .line 681
    :cond_a1
    invoke-virtual {v3}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v11

    const/16 v12, 0x12

    if-lt v11, v12, :cond_9e

    invoke-virtual {v3}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v11

    const/16 v12, 0x31

    if-gt v11, v12, :cond_9e

    add-int/lit8 v11, v16, 0x1

    .line 685
    invoke-virtual {v3}, Lcom/explorestack/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    move/from16 v18, v13

    invoke-static {v3}, Lcom/explorestack/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v3, v12

    aput v3, v1, v16

    move/from16 v16, v11

    :goto_ca
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v18, 0x3

    const/16 v11, 0x31

    const/16 v12, 0x12

    goto :goto_79

    :cond_d3
    if-nez v2, :cond_d7

    .line 692
    sget-object v2, Lcom/explorestack/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    :cond_d7
    if-nez v1, :cond_db

    .line 695
    sget-object v1, Lcom/explorestack/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 697
    :cond_db
    array-length v0, v4

    array-length v3, v2

    add-int/2addr v0, v3

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v12, v0, [I

    .line 699
    array-length v0, v4

    const/4 v3, 0x0

    invoke-static {v4, v3, v12, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    array-length v0, v4

    array-length v9, v2

    invoke-static {v2, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    array-length v0, v4

    array-length v9, v2

    add-int/2addr v0, v9

    array-length v9, v1

    invoke-static {v1, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 709
    new-instance v0, Lcom/explorestack/protobuf/MessageSchema;

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/StructuralMessageInfo;->getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v9

    array-length v13, v4

    array-length v1, v4

    array-length v2, v2

    add-int v14, v1, v2

    const/4 v11, 0x1

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object v4, v0

    invoke-direct/range {v4 .. v19}, Lcom/explorestack/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/explorestack/protobuf/MessageLite;ZZ[IIILcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)V

    return-object v4
.end method

.method public static newSchemaForRawMessageInfo(Lcom/explorestack/protobuf/RawMessageInfo;Lcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)Lcom/explorestack/protobuf/MessageSchema;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/RawMessageInfo;",
            "Lcom/explorestack/protobuf/NewInstanceSchema;",
            "Lcom/explorestack/protobuf/ListFieldSchema;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "**>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "*>;",
            "Lcom/explorestack/protobuf/MapFieldSchema;",
            ")",
            "Lcom/explorestack/protobuf/MessageSchema<",
            "TT;>;"
        }
    .end annotation

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/RawMessageInfo;->getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    goto :goto_c

    :cond_b
    move v10, v2

    .line 255
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/RawMessageInfo;->getStringInfo()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_28

    const/4 v4, 0x1

    :goto_1e
    add-int/lit8 v6, v4, 0x1

    .line 263
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_29

    move v4, v6

    goto :goto_1e

    :cond_28
    const/4 v6, 0x1

    :cond_29
    add-int/lit8 v4, v6, 0x1

    .line 271
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_48

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_35
    add-int/lit8 v9, v4, 0x1

    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_45

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_35

    :cond_45
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_48
    if-nez v6, :cond_58

    .line 302
    sget-object v6, Lcom/explorestack/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    move v8, v2

    move v9, v8

    move v11, v9

    move v13, v11

    move v14, v13

    move/from16 v16, v14

    move-object v12, v6

    move/from16 v6, v16

    goto/16 :goto_165

    :cond_58
    add-int/lit8 v6, v4, 0x1

    .line 305
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_77

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_64
    add-int/lit8 v9, v6, 0x1

    .line 309
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_74

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_64

    :cond_74
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_77
    add-int/lit8 v8, v6, 0x1

    .line 317
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_96

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_83
    add-int/lit8 v11, v8, 0x1

    .line 321
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_93

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_83

    :cond_93
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_96
    add-int/lit8 v9, v8, 0x1

    .line 329
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b5

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_a2
    add-int/lit8 v12, v9, 0x1

    .line 333
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b2

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_a2

    :cond_b2
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b5
    add-int/lit8 v11, v9, 0x1

    .line 341
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_c1
    add-int/lit8 v13, v11, 0x1

    .line 345
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_d1

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_c1

    :cond_d1
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d4
    add-int/lit8 v12, v11, 0x1

    .line 353
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f3

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_e0
    add-int/lit8 v14, v12, 0x1

    .line 357
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_f0

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_e0

    :cond_f0
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f3
    add-int/lit8 v13, v12, 0x1

    .line 365
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_112

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_ff
    add-int/lit8 v15, v13, 0x1

    .line 369
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_ff

    :cond_10f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_112
    add-int/lit8 v14, v13, 0x1

    .line 377
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_133

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_11e
    add-int/lit8 v16, v14, 0x1

    .line 381
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_11e

    :cond_12f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_133
    add-int/lit8 v15, v14, 0x1

    .line 389
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_156

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_13f
    add-int/lit8 v17, v15, 0x1

    .line 393
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_151

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_13f

    :cond_151
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_156
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 400
    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v6

    move-object v6, v13

    move v13, v12

    move-object v12, v6

    move v6, v4

    move v4, v15

    .line 405
    :goto_165
    sget-object v15, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/RawMessageInfo;->getObjects()[Ljava/lang/Object;

    move-result-object v17

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v18, 0x1

    mul-int/lit8 v3, v11, 0x3

    .line 409
    new-array v3, v3, [I

    mul-int/lit8 v11, v11, 0x2

    .line 410
    new-array v11, v11, [Ljava/lang/Object;

    add-int/2addr v13, v14

    move/from16 v23, v13

    move/from16 v22, v14

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_186
    if-ge v4, v1, :cond_3b1

    add-int/lit8 v24, v4, 0x1

    .line 421
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1ae

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v7, v24

    const/16 v24, 0xd

    :goto_196
    add-int/lit8 v25, v7, 0x1

    .line 425
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_1a8

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v24

    or-int/2addr v4, v7

    add-int/lit8 v24, v24, 0xd

    move/from16 v7, v25

    goto :goto_196

    :cond_1a8
    shl-int v7, v7, v24

    or-int/2addr v4, v7

    move/from16 v7, v25

    goto :goto_1b0

    :cond_1ae
    move/from16 v7, v24

    :goto_1b0
    add-int/lit8 v24, v7, 0x1

    .line 433
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_1dd

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_1be
    add-int/lit8 v26, v5, 0x1

    .line 437
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v27, v1

    const v1, 0xd800

    if-lt v5, v1, :cond_1d7

    and-int/lit16 v1, v5, 0x1fff

    shl-int v1, v1, v24

    or-int/2addr v7, v1

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move/from16 v1, v27

    goto :goto_1be

    :cond_1d7
    shl-int v1, v5, v24

    or-int/2addr v7, v1

    move/from16 v1, v26

    goto :goto_1e1

    :cond_1dd
    move/from16 v27, v1

    move/from16 v1, v24

    :goto_1e1
    and-int/lit16 v5, v7, 0xff

    move-object/from16 v24, v3

    and-int/lit16 v3, v7, 0x400

    if-eqz v3, :cond_1ef

    add-int/lit8 v3, v20, 0x1

    .line 447
    aput v21, v12, v20

    move/from16 v20, v3

    :cond_1ef
    const/16 v3, 0x33

    move/from16 v29, v4

    if-lt v5, v3, :cond_28f

    add-int/lit8 v3, v1, 0x1

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v4, 0xd800

    if-lt v1, v4, :cond_21e

    and-int/lit16 v1, v1, 0x1fff

    const/16 v31, 0xd

    :goto_204
    add-int/lit8 v32, v3, 0x1

    .line 460
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_219

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v31

    or-int/2addr v1, v3

    add-int/lit8 v31, v31, 0xd

    move/from16 v3, v32

    const v4, 0xd800

    goto :goto_204

    :cond_219
    shl-int v3, v3, v31

    or-int/2addr v1, v3

    move/from16 v3, v32

    :cond_21e
    add-int/lit8 v4, v5, -0x33

    move/from16 v31, v1

    const/16 v1, 0x9

    if-eq v4, v1, :cond_240

    const/16 v1, 0x11

    if-ne v4, v1, :cond_22b

    goto :goto_240

    :cond_22b
    const/16 v1, 0xc

    if-ne v4, v1, :cond_24d

    if-nez v10, :cond_24d

    .line 474
    div-int/lit8 v1, v21, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v1

    :goto_23d
    move/from16 v16, v4

    goto :goto_24d

    .line 471
    :cond_240
    :goto_240
    div-int/lit8 v1, v21, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v1

    goto :goto_23d

    :cond_24d
    :goto_24d
    mul-int/lit8 v1, v31, 0x2

    .line 480
    aget-object v4, v17, v1

    move/from16 v26, v1

    .line 481
    instance-of v1, v4, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_25b

    .line 482
    check-cast v4, Ljava/lang/reflect/Field;

    :goto_259
    move v1, v3

    goto :goto_264

    .line 484
    :cond_25b
    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 489
    aput-object v4, v17, v26

    goto :goto_259

    .line 492
    :goto_264
    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/lit8 v4, v26, 0x1

    move/from16 v26, v1

    .line 496
    aget-object v1, v17, v4

    move/from16 v28, v3

    .line 497
    instance-of v3, v1, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_278

    .line 498
    check-cast v1, Ljava/lang/reflect/Field;

    goto :goto_280

    .line 500
    :cond_278
    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/explorestack/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 501
    aput-object v1, v17, v4

    .line 504
    :goto_280
    invoke-virtual {v15, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v1, v3

    move-object/from16 v30, v0

    move v0, v1

    move/from16 v4, v26

    move/from16 v3, v28

    const/4 v1, 0x0

    goto/16 :goto_37f

    :cond_28f
    add-int/lit8 v3, v16, 0x1

    .line 507
    aget-object v4, v17, v16

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move/from16 v31, v3

    const/16 v3, 0x9

    if-eq v5, v3, :cond_2fe

    const/16 v3, 0x11

    if-ne v5, v3, :cond_2a4

    goto :goto_2fe

    :cond_2a4
    const/16 v3, 0x1b

    if-eq v5, v3, :cond_2f1

    const/16 v3, 0x31

    if-ne v5, v3, :cond_2ad

    goto :goto_2f1

    :cond_2ad
    const/16 v3, 0xc

    if-eq v5, v3, :cond_2e2

    const/16 v3, 0x1e

    if-eq v5, v3, :cond_2e2

    const/16 v3, 0x2c

    if-ne v5, v3, :cond_2ba

    goto :goto_2e2

    :cond_2ba
    const/16 v3, 0x32

    if-ne v5, v3, :cond_30a

    add-int/lit8 v3, v22, 0x1

    .line 520
    aput v21, v12, v22

    .line 521
    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v26, v16, 0x2

    aget-object v28, v17, v31

    aput-object v28, v11, v22

    move/from16 v28, v3

    and-int/lit16 v3, v7, 0x800

    if-eqz v3, :cond_2df

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v3, v16, 0x3

    .line 523
    aget-object v16, v17, v26

    aput-object v16, v11, v22

    move/from16 v16, v3

    :goto_2dc
    move/from16 v22, v28

    goto :goto_30c

    :cond_2df
    move/from16 v16, v26

    goto :goto_2dc

    :cond_2e2
    :goto_2e2
    if-nez v10, :cond_30a

    .line 517
    div-int/lit8 v3, v21, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v26, v17, v31

    aput-object v26, v11, v3

    goto :goto_30c

    .line 512
    :cond_2f1
    :goto_2f1
    div-int/lit8 v3, v21, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v26, v17, v31

    aput-object v26, v11, v3

    goto :goto_30c

    .line 509
    :cond_2fe
    :goto_2fe
    div-int/lit8 v3, v21, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v11, v3

    :cond_30a
    move/from16 v16, v31

    .line 527
    :goto_30c
    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    and-int/lit16 v4, v7, 0x1000

    move/from16 v26, v3

    const/16 v3, 0x1000

    if-ne v4, v3, :cond_365

    const/16 v3, 0x11

    if-gt v5, v3, :cond_365

    add-int/lit8 v3, v1, 0x1

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v4, 0xd800

    if-lt v1, v4, :cond_342

    and-int/lit16 v1, v1, 0x1fff

    const/16 v25, 0xd

    :goto_32c
    add-int/lit8 v28, v3, 0x1

    .line 534
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_33e

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v25

    or-int/2addr v1, v3

    add-int/lit8 v25, v25, 0xd

    move/from16 v3, v28

    goto :goto_32c

    :cond_33e
    shl-int v3, v3, v25

    or-int/2addr v1, v3

    goto :goto_344

    :cond_342
    move/from16 v28, v3

    :goto_344
    mul-int/lit8 v3, v6, 0x2

    .line 543
    div-int/lit8 v25, v1, 0x20

    add-int v3, v3, v25

    .line 544
    aget-object v4, v17, v3

    move-object/from16 v30, v0

    .line 545
    instance-of v0, v4, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_355

    .line 546
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_35d

    .line 548
    :cond_355
    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 549
    aput-object v4, v17, v3

    .line 552
    :goto_35d
    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v0, v3

    .line 553
    rem-int/lit8 v1, v1, 0x20

    goto :goto_36d

    :cond_365
    move-object/from16 v30, v0

    const v0, 0xfffff

    move/from16 v28, v1

    const/4 v1, 0x0

    :goto_36d
    const/16 v3, 0x12

    if-lt v5, v3, :cond_37b

    const/16 v3, 0x31

    if-gt v5, v3, :cond_37b

    add-int/lit8 v3, v23, 0x1

    .line 562
    aput v26, v12, v23

    move/from16 v23, v3

    :cond_37b
    move/from16 v3, v26

    move/from16 v4, v28

    :goto_37f
    add-int/lit8 v26, v21, 0x1

    .line 566
    aput v29, v24, v21

    add-int/lit8 v28, v21, 0x2

    move/from16 v29, v0

    and-int/lit16 v0, v7, 0x200

    if-eqz v0, :cond_38e

    const/high16 v0, 0x20000000

    goto :goto_38f

    :cond_38e
    const/4 v0, 0x0

    :goto_38f
    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_396

    const/high16 v7, 0x10000000

    goto :goto_397

    :cond_396
    const/4 v7, 0x0

    :goto_397
    or-int/2addr v0, v7

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v0, v5

    or-int/2addr v0, v3

    .line 567
    aput v0, v24, v26

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v0, v1, 0x14

    or-int v0, v0, v29

    .line 572
    aput v0, v24, v28

    move-object/from16 v3, v24

    move/from16 v1, v27

    move-object/from16 v0, v30

    const v5, 0xd800

    goto/16 :goto_186

    :cond_3b1
    move-object/from16 v24, v3

    .line 575
    new-instance v4, Lcom/explorestack/protobuf/MessageSchema;

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/explorestack/protobuf/RawMessageInfo;->getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;

    move-result-object v0

    move-object v6, v11

    const/4 v11, 0x0

    move v5, v14

    move v14, v13

    move v13, v5

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move v7, v8

    move v8, v9

    move-object/from16 v5, v24

    move-object v9, v0

    invoke-direct/range {v4 .. v19}, Lcom/explorestack/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/explorestack/protobuf/MessageLite;ZZ[IIILcom/explorestack/protobuf/NewInstanceSchema;Lcom/explorestack/protobuf/ListFieldSchema;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Lcom/explorestack/protobuf/MapFieldSchema;)V

    return-object v4
.end method

.method public static offset(I)J
    .registers 3

    .line 0
    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static oneofBooleanAt(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 5786
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static oneofDoubleAt(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 5770
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static oneofFloatAt(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 5774
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static oneofIntAt(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 5778
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static oneofLongAt(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 5782
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
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

    .line 595
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 599
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 600
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 601
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 608
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static storeFieldData(Lcom/explorestack/protobuf/FieldInfo;[II[Ljava/lang/Object;)V
    .registers 12

    .line 734
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getOneof()Lcom/explorestack/protobuf/OneofInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 736
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    .line 737
    invoke-virtual {v0}, Lcom/explorestack/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 738
    invoke-virtual {v0}, Lcom/explorestack/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    :goto_22
    long-to-int v0, v4

    move v4, v1

    goto :goto_6c

    .line 741
    :cond_25
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getType()Lcom/explorestack/protobuf/FieldType;

    move-result-object v0

    .line 742
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/explorestack/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    .line 743
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v2

    .line 744
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldType;->isList()Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldType;->isMap()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 745
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_4c

    const v0, 0xfffff

    goto :goto_51

    .line 749
    :cond_4c
    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 751
    :goto_51
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getPresenceMask()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    goto :goto_6c

    .line 753
    :cond_5a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_63

    move v0, v1

    move v4, v0

    goto :goto_6c

    .line 757
    :cond_63
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getCachedSizeField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    goto :goto_22

    .line 763
    :goto_6c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getFieldNumber()I

    move-result v5

    aput v5, p1, p2

    add-int/lit8 v5, p2, 0x1

    .line 765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    if-eqz v6, :cond_7d

    const/high16 v6, 0x20000000

    goto :goto_7e

    :cond_7d
    move v6, v1

    .line 766
    :goto_7e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->isRequired()Z

    move-result v7

    if-eqz v7, :cond_86

    const/high16 v1, 0x10000000

    :cond_86
    or-int/2addr v1, v6

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    aput v1, p1, v5

    add-int/lit8 v1, p2, 0x2

    shl-int/lit8 v2, v4, 0x14

    or-int/2addr v0, v2

    .line 769
    aput v0, p1, v1

    .line 771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getMessageFieldClass()Ljava/lang/Class;

    move-result-object p1

    .line 772
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 773
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getMapDefaultEntry()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p2

    if-eqz p1, :cond_af

    add-int/lit8 p2, p2, 0x1

    .line 775
    aput-object p1, p3, p2

    return-void

    .line 776
    :cond_af
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getEnumVerifier()Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object p1

    if-eqz p1, :cond_db

    add-int/lit8 p2, p2, 0x1

    .line 777
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getEnumVerifier()Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object p0

    aput-object p0, p3, p2

    return-void

    :cond_be
    if-eqz p1, :cond_c9

    .line 781
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    aput-object p1, p3, p2

    return-void

    .line 782
    :cond_c9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getEnumVerifier()Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object p1

    if-eqz p1, :cond_db

    .line 783
    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/FieldInfo;->getEnumVerifier()Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object p0

    aput-object p0, p3, p2

    :cond_db
    return-void
.end method

.method public static type(I)I
    .registers 2

    .line 0
    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method


# virtual methods
.method public final arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5791
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final decodeMapEntry([BIILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/explorestack/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p6

    .line 4431
    invoke-static {p1, p2, v6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4432
    iget v0, v6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    if-ltz v0, :cond_6f

    sub-int v1, p3, p2

    if-gt v0, v1, :cond_6f

    add-int v7, p2, v0

    .line 4437
    iget-object v0, p4, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 4438
    iget-object v1, p4, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    move-object v8, v0

    move-object v9, v1

    :goto_16
    if-ge p2, v7, :cond_64

    add-int/lit8 v0, p2, 0x1

    .line 4440
    aget-byte p2, p1, p2

    if-gez p2, :cond_24

    .line 4442
    invoke-static {p2, p1, v0, v6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 4443
    iget p2, v6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    :cond_24
    move v2, v0

    ushr-int/lit8 v0, p2, 0x3

    and-int/lit8 v1, p2, 0x7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_30

    goto :goto_5f

    .line 4457
    :cond_30
    iget-object v0, p4, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v1, v0, :cond_5f

    .line 4458
    iget-object v4, p4, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    iget-object p2, p4, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 4464
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    .line 4459
    invoke-virtual/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4466
    iget-object v9, v6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_16

    .line 4449
    :cond_4a
    iget-object v0, p4, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    if-ne v1, v0, :cond_5f

    .line 4450
    iget-object v4, p4, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->keyType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    .line 4451
    invoke-virtual/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->decodeMapEntryValue([BIILcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4452
    iget-object v8, v6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    goto :goto_16

    .line 4473
    :cond_5f
    :goto_5f
    invoke-static {p2, p1, v2, p3, v6}, Lcom/explorestack/protobuf/ArrayDecoders;->skipField(I[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_16

    :cond_64
    if-ne p2, v7, :cond_6a

    .line 4478
    invoke-interface {p5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    .line 4476
    :cond_6a
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 4434
    :cond_6f
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final decodeMapEntryValue([BIILcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4363
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_b0

    .line 4417
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4414
    :pswitch_13
    invoke-static {p1, p2, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    .line 4410
    :pswitch_18
    invoke-static {p1, p2, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4411
    iget-wide p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p2, p3}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    .line 4406
    :pswitch_29
    invoke-static {p1, p2, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4407
    iget p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p2}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    .line 4403
    :pswitch_3a
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object p4

    .line 4402
    invoke-static {p4, p1, p2, p3, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageField(Lcom/explorestack/protobuf/Schema;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    .line 4397
    :pswitch_47
    invoke-static {p1, p2, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4398
    iget-wide p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    .line 4392
    :pswitch_54
    invoke-static {p1, p2, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4393
    iget p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    .line 4386
    :pswitch_61
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 4382
    :pswitch_6e
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 4377
    :pswitch_7b
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 4372
    :pswitch_88
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 4369
    :pswitch_95
    invoke-static {p1, p2, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeBytes([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    .line 4365
    :pswitch_9a
    invoke-static {p1, p2, p6}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 4366
    iget-wide p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_a8

    const/4 p2, 0x1

    goto :goto_a9

    :cond_a8
    const/4 p2, 0x0

    :goto_a9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p6, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    return p1

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_95
        :pswitch_88
        :pswitch_7b
        :pswitch_7b
        :pswitch_6e
        :pswitch_6e
        :pswitch_61
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_47
        :pswitch_47
        :pswitch_3a
        :pswitch_29
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_11

    .line 798
    invoke-virtual {p0, p1, p2, v2}, Lcom/explorestack/protobuf/MessageSchema;->equals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    return v1

    :cond_e
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    .line 803
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v2, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 805
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    .line 809
    :cond_24
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_39

    .line 810
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    .line 811
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p2

    .line 812
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_39
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 818
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 819
    invoke-static {v0}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 821
    invoke-static {v0}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_1b2

    return v4

    .line 938
    :pswitch_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_27

    .line 940
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 939
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v4

    :cond_27
    return v3

    .line 919
    :pswitch_28
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 918
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 916
    :pswitch_35
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 915
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 879
    :pswitch_42
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_57

    .line 881
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 880
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    return v4

    :cond_57
    return v3

    .line 876
    :pswitch_58
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 877
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_6b

    return v4

    :cond_6b
    return v3

    .line 873
    :pswitch_6c
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_7d

    .line 874
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_7d

    return v4

    :cond_7d
    return v3

    .line 870
    :pswitch_7e
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_91

    .line 871
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_91

    return v4

    :cond_91
    return v3

    .line 867
    :pswitch_92
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_a3

    .line 868
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_a3

    return v4

    :cond_a3
    return v3

    .line 864
    :pswitch_a4
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 865
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_b5

    return v4

    :cond_b5
    return v3

    .line 861
    :pswitch_b6
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c7

    .line 862
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c7

    return v4

    :cond_c7
    return v3

    .line 857
    :pswitch_c8
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_dd

    .line 859
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 858
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dd

    return v4

    :cond_dd
    return v3

    .line 853
    :pswitch_de
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f3

    .line 855
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 854
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f3

    return v4

    :cond_f3
    return v3

    .line 849
    :pswitch_f4
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_109

    .line 851
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 850
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_109

    return v4

    :cond_109
    return v3

    .line 846
    :pswitch_10a
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_11b

    .line 847
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_11b

    return v4

    :cond_11b
    return v3

    .line 843
    :pswitch_11c
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_12d

    .line 844
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_12d

    return v4

    :cond_12d
    return v3

    .line 840
    :pswitch_12e
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_141

    .line 841
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_141

    return v4

    :cond_141
    return v3

    .line 837
    :pswitch_142
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_153

    .line 838
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_153

    return v4

    :cond_153
    return v3

    .line 834
    :pswitch_154
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_167

    .line 835
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_167

    return v4

    :cond_167
    return v3

    .line 831
    :pswitch_168
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_17b

    .line 832
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_17b

    return v4

    :cond_17b
    return v3

    .line 827
    :pswitch_17c
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_195

    .line 828
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 829
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_195

    return v4

    :cond_195
    return v3

    .line 823
    :pswitch_196
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1b1

    .line 824
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 825
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_1b1

    return v4

    :cond_1b1
    return v3

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_196
        :pswitch_17c
        :pswitch_168
        :pswitch_154
        :pswitch_142
        :pswitch_12e
        :pswitch_11c
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_c8
        :pswitch_b6
        :pswitch_a4
        :pswitch_92
        :pswitch_7e
        :pswitch_6c
        :pswitch_58
        :pswitch_42
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_28
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5500
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v2

    .line 5501
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    invoke-static {v0}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5502
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_19

    .line 5506
    :cond_13
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-nez v4, :cond_1a

    :goto_19
    return-object p3

    .line 5510
    :cond_1a
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    .line 5513
    invoke-virtual/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->filterUnknownEnumMap(IILjava/util/Map;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final filterUnknownEnumMap(IILjava/util/Map;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 5526
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 5527
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    .line 5528
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 5529
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5530
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/explorestack/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    .line 5532
    invoke-virtual {p6}, Lcom/explorestack/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object p5

    .line 5535
    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/MapEntryLite;->computeSerializedSize(Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 5536
    invoke-static {v1}, Lcom/explorestack/protobuf/ByteString;->newCodedBuilder(I)Lcom/explorestack/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 5537
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object v2

    .line 5539
    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/explorestack/protobuf/MapEntryLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    .line 5544
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->build()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/explorestack/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/explorestack/protobuf/ByteString;)V

    .line 5545
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    .line 5542
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
.end method

.method public final getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;
    .registers 3

    .line 4869
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/explorestack/protobuf/Internal$EnumVerifier;

    return-object p1
.end method

.method public final getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .registers 3

    .line 4865
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;
    .registers 5

    .line 4854
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 4855
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/explorestack/protobuf/Schema;

    if-eqz v0, :cond_d

    return-object v0

    .line 4859
    :cond_d
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object v0

    .line 4860
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public getSerializedSize(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1422
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MessageSchema;->getSerializedSizeProto3(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MessageSchema;->getSerializedSizeProto2(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSerializedSizeProto2(Ljava/lang/Object;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1429
    sget-object v2, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const v4, 0xfffff

    move v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1432
    :goto_d
    iget-object v9, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v9, v9

    if-ge v5, v9, :cond_523

    .line 1433
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v9

    .line 1434
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v10

    .line 1436
    invoke-static {v9}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v11

    const/16 v12, 0x11

    const/4 v13, 0x1

    if-gt v11, v12, :cond_38

    .line 1440
    iget-object v12, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v5, 0x2

    aget v12, v12, v14

    and-int v14, v12, v4

    ushr-int/lit8 v15, v12, 0x14

    shl-int v15, v13, v15

    if-eq v14, v7, :cond_57

    int-to-long v7, v14

    .line 1445
    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v14

    goto :goto_57

    .line 1447
    :cond_38
    iget-boolean v12, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v12, :cond_55

    sget-object v12, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 1448
    invoke-virtual {v12}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v12

    if-lt v11, v12, :cond_55

    sget-object v12, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 1449
    invoke-virtual {v12}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v12

    if-gt v11, v12, :cond_55

    .line 1450
    iget-object v12, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v14, v5, 0x2

    aget v12, v12, v14

    and-int/2addr v12, v4

    :goto_53
    const/4 v15, 0x0

    goto :goto_57

    :cond_55
    const/4 v12, 0x0

    goto :goto_53

    .line 1453
    :cond_57
    :goto_57
    invoke-static {v9}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v13

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    packed-switch v11, :pswitch_data_53a

    goto :goto_77

    .line 1972
    :pswitch_62
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1976
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 1977
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v4

    .line 1974
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSize(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)I

    move-result v3

    :goto_76
    add-int/2addr v6, v3

    :cond_77
    :goto_77
    const/4 v11, 0x0

    goto/16 :goto_51c

    .line 1967
    :pswitch_7a
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1968
    invoke-static {v1, v13, v14}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v3

    goto :goto_76

    .line 1962
    :pswitch_89
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1963
    invoke-static {v1, v13, v14}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    goto :goto_76

    .line 1957
    :pswitch_98
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 1958
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v3

    goto :goto_76

    .line 1952
    :pswitch_a3
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v9, 0x0

    .line 1953
    invoke-static {v10, v9}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v3

    goto :goto_76

    .line 1947
    :pswitch_af
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1948
    invoke-static {v1, v13, v14}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    goto :goto_76

    .line 1942
    :pswitch_be
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1943
    invoke-static {v1, v13, v14}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto :goto_76

    .line 1935
    :pswitch_cd
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1938
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    .line 1937
    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v3

    goto :goto_76

    .line 1929
    :pswitch_de
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1930
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1931
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)I

    move-result v3

    goto :goto_76

    .line 1919
    :pswitch_f1
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1920
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1921
    instance-of v4, v3, Lcom/explorestack/protobuf/ByteString;

    if-eqz v4, :cond_107

    .line 1922
    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_76

    .line 1924
    :cond_107
    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_76

    .line 1914
    :pswitch_10f
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v3, 0x1

    .line 1915
    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    goto/16 :goto_76

    .line 1909
    :pswitch_11c
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v9, 0x0

    .line 1910
    invoke-static {v10, v9}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    goto/16 :goto_76

    .line 1904
    :pswitch_129
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 1905
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v3

    goto/16 :goto_76

    .line 1899
    :pswitch_135
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1900
    invoke-static {v1, v13, v14}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    goto/16 :goto_76

    .line 1894
    :pswitch_145
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1895
    invoke-static {v1, v13, v14}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    goto/16 :goto_76

    .line 1889
    :pswitch_155
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1890
    invoke-static {v1, v13, v14}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    goto/16 :goto_76

    .line 1884
    :pswitch_165
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1885
    invoke-static {v10, v9}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    goto/16 :goto_76

    .line 1879
    :pswitch_171
    invoke-virtual {v0, v1, v10, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_77

    const-wide/16 v3, 0x0

    .line 1880
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    goto/16 :goto_76

    .line 1874
    :pswitch_17f
    iget-object v3, v0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 1876
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v9

    .line 1875
    invoke-interface {v3, v10, v4, v9}, Lcom/explorestack/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_76

    .line 1869
    :pswitch_18f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1870
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v4

    .line 1867
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_76

    .line 1853
    :pswitch_19f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1852
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1855
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_1b3

    int-to-long v11, v12

    .line 1856
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1859
    :cond_1b3
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1860
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    :goto_1bb
    add-int/2addr v4, v9

    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto/16 :goto_77

    .line 1837
    :pswitch_1c0
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1836
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1839
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_1d4

    int-to-long v11, v12

    .line 1840
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1843
    :cond_1d4
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1844
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto :goto_1bb

    .line 1821
    :pswitch_1dd
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1820
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1823
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_1f1

    int-to-long v11, v12

    .line 1824
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1827
    :cond_1f1
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1828
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto :goto_1bb

    .line 1805
    :pswitch_1fa
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1804
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1807
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_20e

    int-to-long v11, v12

    .line 1808
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1811
    :cond_20e
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1812
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto :goto_1bb

    .line 1789
    :pswitch_217
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1788
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1791
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_22b

    int-to-long v11, v12

    .line 1792
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1795
    :cond_22b
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1796
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto :goto_1bb

    .line 1773
    :pswitch_234
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1772
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1775
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_248

    int-to-long v11, v12

    .line 1776
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1779
    :cond_248
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1780
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1757
    :pswitch_252
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1756
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1759
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_266

    int-to-long v11, v12

    .line 1760
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1763
    :cond_266
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1764
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1741
    :pswitch_270
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1740
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1743
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_284

    int-to-long v11, v12

    .line 1744
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1747
    :cond_284
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1748
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1725
    :pswitch_28e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1724
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1727
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_2a2

    int-to-long v11, v12

    .line 1728
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1731
    :cond_2a2
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1732
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1709
    :pswitch_2ac
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1708
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1711
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_2c0

    int-to-long v11, v12

    .line 1712
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1715
    :cond_2c0
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1716
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1693
    :pswitch_2ca
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1692
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1695
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_2de

    int-to-long v11, v12

    .line 1696
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1699
    :cond_2de
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1700
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1677
    :pswitch_2e8
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1676
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1679
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_2fc

    int-to-long v11, v12

    .line 1680
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1683
    :cond_2fc
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1684
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1661
    :pswitch_306
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1660
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1663
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_31a

    int-to-long v11, v12

    .line 1664
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1667
    :cond_31a
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1668
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1645
    :pswitch_324
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1644
    invoke-static {v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_77

    .line 1647
    iget-boolean v4, v0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v4, :cond_338

    int-to-long v11, v12

    .line 1648
    invoke-virtual {v2, v1, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1651
    :cond_338
    invoke-static {v10}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 1652
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v9

    goto/16 :goto_1bb

    .line 1639
    :pswitch_342
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    .line 1638
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v3

    :goto_34d
    add-int/2addr v6, v3

    move v11, v9

    goto/16 :goto_51c

    :pswitch_351
    const/4 v9, 0x0

    .line 1634
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1633
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_34d

    :pswitch_35d
    const/4 v9, 0x0

    .line 1629
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1628
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_34d

    :pswitch_369
    const/4 v9, 0x0

    .line 1624
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1623
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v3

    goto :goto_34d

    :pswitch_375
    const/4 v9, 0x0

    .line 1619
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1618
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v3

    goto :goto_34d

    :pswitch_381
    const/4 v9, 0x0

    .line 1614
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1613
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_76

    .line 1609
    :pswitch_38e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1608
    invoke-static {v10, v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_76

    .line 1604
    :pswitch_39a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v4

    .line 1603
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_76

    .line 1599
    :pswitch_3aa
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_76

    .line 1595
    :pswitch_3b6
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    .line 1594
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v3

    goto :goto_34d

    :pswitch_3c2
    const/4 v9, 0x0

    .line 1590
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1589
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_34d

    :pswitch_3cf
    const/4 v9, 0x0

    .line 1585
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1584
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_34d

    :pswitch_3dc
    const/4 v9, 0x0

    .line 1580
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1579
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_34d

    :pswitch_3e9
    const/4 v9, 0x0

    .line 1575
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1574
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_34d

    :pswitch_3f6
    const/4 v9, 0x0

    .line 1570
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1569
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_34d

    :pswitch_403
    const/4 v9, 0x0

    .line 1565
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1564
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_34d

    :pswitch_410
    const/4 v9, 0x0

    .line 1560
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1559
    invoke-static {v10, v3, v9}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_76

    :pswitch_41d
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1553
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    .line 1554
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v4

    .line 1551
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSize(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_76

    :pswitch_431
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1545
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v3

    goto/16 :goto_76

    :pswitch_43f
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1540
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v3

    goto/16 :goto_76

    :pswitch_44d
    and-int v11, v8, v15

    if-eqz v11, :cond_77

    .line 1535
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v3

    goto/16 :goto_76

    :pswitch_457
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    const/4 v9, 0x0

    .line 1530
    invoke-static {v10, v9}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v3

    goto/16 :goto_76

    :pswitch_462
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1525
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    goto/16 :goto_76

    :pswitch_470
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1520
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    goto/16 :goto_76

    :pswitch_47e
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1514
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    .line 1515
    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_76

    :pswitch_48e
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1508
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1509
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_76

    :pswitch_4a0
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    .line 1498
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 1499
    instance-of v4, v3, Lcom/explorestack/protobuf/ByteString;

    if-eqz v4, :cond_4b4

    .line 1500
    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_76

    .line 1502
    :cond_4b4
    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_76

    :pswitch_4bc
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    const/4 v3, 0x1

    .line 1493
    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    goto/16 :goto_76

    :pswitch_4c7
    and-int v3, v8, v15

    if-eqz v3, :cond_77

    const/4 v11, 0x0

    .line 1488
    invoke-static {v10, v11}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    :goto_4d0
    add-int/2addr v6, v3

    goto :goto_51c

    :pswitch_4d2
    const/4 v11, 0x0

    and-int v9, v8, v15

    if-eqz v9, :cond_51c

    .line 1483
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v3

    goto :goto_4d0

    :pswitch_4dc
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_51c

    .line 1478
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    goto :goto_4d0

    :pswitch_4ea
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_51c

    .line 1473
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    goto :goto_4d0

    :pswitch_4f8
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_51c

    .line 1468
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    goto :goto_4d0

    :pswitch_506
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_51c

    .line 1463
    invoke-static {v10, v9}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    goto :goto_4d0

    :pswitch_510
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_51c

    const-wide/16 v3, 0x0

    .line 1458
    invoke-static {v10, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    goto :goto_4d0

    :cond_51c
    :goto_51c
    add-int/lit8 v5, v5, 0x3

    const v4, 0xfffff

    goto/16 :goto_d

    .line 1985
    :cond_523
    iget-object v2, v0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    .line 1987
    iget-boolean v2, v0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v2, :cond_539

    .line 1988
    iget-object v2, v0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/FieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v6, v1

    :cond_539
    return v6

    :pswitch_data_53a
    .packed-switch 0x0
        :pswitch_510
        :pswitch_506
        :pswitch_4f8
        :pswitch_4ea
        :pswitch_4dc
        :pswitch_4d2
        :pswitch_4c7
        :pswitch_4bc
        :pswitch_4a0
        :pswitch_48e
        :pswitch_47e
        :pswitch_470
        :pswitch_462
        :pswitch_457
        :pswitch_44d
        :pswitch_43f
        :pswitch_431
        :pswitch_41d
        :pswitch_410
        :pswitch_403
        :pswitch_3f6
        :pswitch_3e9
        :pswitch_3dc
        :pswitch_3cf
        :pswitch_3c2
        :pswitch_3b6
        :pswitch_3aa
        :pswitch_39a
        :pswitch_38e
        :pswitch_381
        :pswitch_375
        :pswitch_369
        :pswitch_35d
        :pswitch_351
        :pswitch_342
        :pswitch_324
        :pswitch_306
        :pswitch_2e8
        :pswitch_2ca
        :pswitch_2ac
        :pswitch_28e
        :pswitch_270
        :pswitch_252
        :pswitch_234
        :pswitch_217
        :pswitch_1fa
        :pswitch_1dd
        :pswitch_1c0
        :pswitch_19f
        :pswitch_18f
        :pswitch_17f
        :pswitch_171
        :pswitch_165
        :pswitch_155
        :pswitch_145
        :pswitch_135
        :pswitch_129
        :pswitch_11c
        :pswitch_10f
        :pswitch_f1
        :pswitch_de
        :pswitch_cd
        :pswitch_be
        :pswitch_af
        :pswitch_a3
        :pswitch_98
        :pswitch_89
        :pswitch_7a
        :pswitch_62
    .end packed-switch
.end method

.method public final getSerializedSizeProto3(Ljava/lang/Object;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object v0, p1

    .line 1995
    sget-object v1, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1997
    :goto_6
    iget-object v5, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v5, v5

    if-ge v3, v5, :cond_4eb

    .line 1998
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v5

    .line 1999
    invoke-static {v5}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v6

    .line 2000
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 2002
    invoke-static {v5}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    .line 2003
    sget-object v5, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 2004
    invoke-virtual {v5}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v5

    if-lt v6, v5, :cond_36

    sget-object v5, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 2005
    invoke-virtual {v5}, Lcom/explorestack/protobuf/FieldType;->id()I

    move-result v5

    if-gt v6, v5, :cond_36

    iget-object v5, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v10, v3, 0x2

    aget v5, v5, v10

    const v10, 0xfffff

    and-int/2addr v5, v10

    goto :goto_37

    :cond_36
    move v5, v2

    :goto_37
    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v10, 0x0

    packed-switch v6, :pswitch_data_4f4

    goto/16 :goto_4e7

    .line 2508
    :pswitch_40
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2512
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/MessageLite;

    .line 2513
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 2510
    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSize(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)I

    move-result v5

    :goto_54
    add-int/2addr v4, v5

    goto/16 :goto_4e7

    .line 2503
    :pswitch_57
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2504
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v5

    goto :goto_54

    .line 2498
    :pswitch_66
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2499
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v5

    goto :goto_54

    .line 2493
    :pswitch_75
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2494
    invoke-static {v7, v10, v11}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v5

    goto :goto_54

    .line 2488
    :pswitch_80
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2489
    invoke-static {v7, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v5

    goto :goto_54

    .line 2483
    :pswitch_8b
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2484
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v5

    goto :goto_54

    .line 2478
    :pswitch_9a
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2479
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v5

    goto :goto_54

    .line 2471
    :pswitch_a9
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2474
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/ByteString;

    .line 2473
    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v5

    goto :goto_54

    .line 2465
    :pswitch_ba
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2466
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2467
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)I

    move-result v5

    goto :goto_54

    .line 2455
    :pswitch_cd
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2456
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2457
    instance-of v6, v5, Lcom/explorestack/protobuf/ByteString;

    if-eqz v6, :cond_e3

    .line 2458
    check-cast v5, Lcom/explorestack/protobuf/ByteString;

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v5

    goto/16 :goto_54

    .line 2460
    :cond_e3
    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    goto/16 :goto_54

    .line 2450
    :pswitch_eb
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2451
    invoke-static {v7, v13}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v5

    goto/16 :goto_54

    .line 2445
    :pswitch_f7
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2446
    invoke-static {v7, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v5

    goto/16 :goto_54

    .line 2440
    :pswitch_103
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2441
    invoke-static {v7, v10, v11}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2435
    :pswitch_10f
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2436
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    goto/16 :goto_54

    .line 2430
    :pswitch_11f
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2431
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2425
    :pswitch_12f
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2426
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2420
    :pswitch_13f
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2421
    invoke-static {v7, v12}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v5

    goto/16 :goto_54

    .line 2415
    :pswitch_14b
    invoke-virtual {p0, p1, v7, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e7

    const-wide/16 v5, 0x0

    .line 2416
    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v5

    goto/16 :goto_54

    .line 2410
    :pswitch_159
    iget-object v5, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 2412
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v8

    .line 2411
    invoke-interface {v5, v7, v6, v8}, Lcom/explorestack/protobuf/MapFieldSchema;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto/16 :goto_54

    .line 2406
    :pswitch_169
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 2405
    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)I

    move-result v5

    goto/16 :goto_54

    .line 2391
    :pswitch_177
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2390
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2393
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_18b

    int-to-long v8, v5

    .line 2394
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2397
    :cond_18b
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2398
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    :goto_193
    add-int/2addr v5, v7

    add-int/2addr v5, v6

    goto/16 :goto_54

    .line 2375
    :pswitch_197
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2374
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2377
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_1ab

    int-to-long v8, v5

    .line 2378
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2381
    :cond_1ab
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2382
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto :goto_193

    .line 2359
    :pswitch_1b4
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2358
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2361
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_1c8

    int-to-long v8, v5

    .line 2362
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2365
    :cond_1c8
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2366
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto :goto_193

    .line 2343
    :pswitch_1d1
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2342
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2345
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_1e5

    int-to-long v8, v5

    .line 2346
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2349
    :cond_1e5
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2350
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto :goto_193

    .line 2327
    :pswitch_1ee
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2326
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2329
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_202

    int-to-long v8, v5

    .line 2330
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2333
    :cond_202
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2334
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto :goto_193

    .line 2311
    :pswitch_20b
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2310
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2313
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_21f

    int-to-long v8, v5

    .line 2314
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2317
    :cond_21f
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2318
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2295
    :pswitch_229
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2294
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeBoolListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2297
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_23d

    int-to-long v8, v5

    .line 2298
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2301
    :cond_23d
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2302
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2279
    :pswitch_247
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2278
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2281
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_25b

    int-to-long v8, v5

    .line 2282
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2285
    :cond_25b
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2286
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2263
    :pswitch_265
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2262
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2265
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_279

    int-to-long v8, v5

    .line 2266
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2269
    :cond_279
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2270
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2247
    :pswitch_283
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2246
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2249
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_297

    int-to-long v8, v5

    .line 2250
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2253
    :cond_297
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2254
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2231
    :pswitch_2a1
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2230
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2233
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_2b5

    int-to-long v8, v5

    .line 2234
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2237
    :cond_2b5
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2238
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2215
    :pswitch_2bf
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2214
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2217
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_2d3

    int-to-long v8, v5

    .line 2218
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2221
    :cond_2d3
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2222
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2199
    :pswitch_2dd
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2198
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2201
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_2f1

    int-to-long v8, v5

    .line 2202
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2205
    :cond_2f1
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2206
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2183
    :pswitch_2fb
    invoke-virtual {v1, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2182
    invoke-static {v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4e7

    .line 2185
    iget-boolean v8, p0, Lcom/explorestack/protobuf/MessageSchema;->useCachedSizeField:Z

    if-eqz v8, :cond_30f

    int-to-long v8, v5

    .line 2186
    invoke-virtual {v1, p1, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2189
    :cond_30f
    invoke-static {v7}, Lcom/explorestack/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    .line 2190
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v7

    goto/16 :goto_193

    .line 2177
    :pswitch_319
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt64List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2173
    :pswitch_323
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2172
    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeSInt32List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2168
    :pswitch_32d
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2165
    :pswitch_337
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2162
    :pswitch_341
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2161
    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeEnumList(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2157
    :pswitch_34b
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2156
    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt32List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2152
    :pswitch_355
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2151
    invoke-static {v7, v5}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeByteStringList(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_54

    .line 2147
    :pswitch_35f
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 2146
    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Schema;)I

    move-result v5

    goto/16 :goto_54

    .line 2142
    :pswitch_36d
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeStringList(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_54

    .line 2139
    :pswitch_377
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeBoolList(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2136
    :pswitch_381
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2133
    :pswitch_38b
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2130
    :pswitch_395
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 2129
    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt32List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2125
    :pswitch_39f
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeUInt64List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2121
    :pswitch_3a9
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeInt64List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2117
    :pswitch_3b3
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed32List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2114
    :pswitch_3bd
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->listAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5, v2}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeFixed64List(ILjava/util/List;Z)I

    move-result v5

    goto/16 :goto_54

    .line 2105
    :pswitch_3c7
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2109
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/MessageLite;

    .line 2110
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 2107
    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeGroupSize(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/Schema;)I

    move-result v5

    goto/16 :goto_54

    .line 2099
    :pswitch_3dd
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2101
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2094
    :pswitch_3ed
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2095
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v5

    goto/16 :goto_54

    .line 2089
    :pswitch_3fd
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2090
    invoke-static {v7, v10, v11}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2084
    :pswitch_409
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2085
    invoke-static {v7, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeSFixed32Size(II)I

    move-result v5

    goto/16 :goto_54

    .line 2079
    :pswitch_415
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2080
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v5

    goto/16 :goto_54

    .line 2074
    :pswitch_425
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2075
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v5

    goto/16 :goto_54

    .line 2068
    :pswitch_435
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2069
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/ByteString;

    .line 2070
    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v5

    goto/16 :goto_54

    .line 2062
    :pswitch_447
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2063
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2064
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/SchemaUtil;->computeSizeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)I

    move-result v5

    goto/16 :goto_54

    .line 2052
    :pswitch_45b
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2053
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2054
    instance-of v6, v5, Lcom/explorestack/protobuf/ByteString;

    if-eqz v6, :cond_471

    .line 2055
    check-cast v5, Lcom/explorestack/protobuf/ByteString;

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v5

    goto/16 :goto_54

    .line 2057
    :cond_471
    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    goto/16 :goto_54

    .line 2047
    :pswitch_479
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2048
    invoke-static {v7, v13}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v5

    goto/16 :goto_54

    .line 2042
    :pswitch_485
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2043
    invoke-static {v7, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v5

    goto/16 :goto_54

    .line 2037
    :pswitch_491
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2038
    invoke-static {v7, v10, v11}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2032
    :pswitch_49d
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2033
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v7, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    goto/16 :goto_54

    .line 2026
    :pswitch_4ad
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2028
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2021
    :pswitch_4bd
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2022
    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v5

    goto/16 :goto_54

    .line 2016
    :pswitch_4cd
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    .line 2017
    invoke-static {v7, v12}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v5

    goto/16 :goto_54

    .line 2011
    :pswitch_4d9
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e7

    const-wide/16 v5, 0x0

    .line 2012
    invoke-static {v7, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v5

    goto/16 :goto_54

    :cond_4e7
    :goto_4e7
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_6

    .line 2521
    :cond_4eb
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {p0, v1, p1}, Lcom/explorestack/protobuf/MessageSchema;->getUnknownFieldsSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    return v4

    nop

    :pswitch_data_4f4
    .packed-switch 0x0
        :pswitch_4d9
        :pswitch_4cd
        :pswitch_4bd
        :pswitch_4ad
        :pswitch_49d
        :pswitch_491
        :pswitch_485
        :pswitch_479
        :pswitch_45b
        :pswitch_447
        :pswitch_435
        :pswitch_425
        :pswitch_415
        :pswitch_409
        :pswitch_3fd
        :pswitch_3ed
        :pswitch_3dd
        :pswitch_3c7
        :pswitch_3bd
        :pswitch_3b3
        :pswitch_3a9
        :pswitch_39f
        :pswitch_395
        :pswitch_38b
        :pswitch_381
        :pswitch_377
        :pswitch_36d
        :pswitch_35f
        :pswitch_355
        :pswitch_34b
        :pswitch_341
        :pswitch_337
        :pswitch_32d
        :pswitch_323
        :pswitch_319
        :pswitch_2fb
        :pswitch_2dd
        :pswitch_2bf
        :pswitch_2a1
        :pswitch_283
        :pswitch_265
        :pswitch_247
        :pswitch_229
        :pswitch_20b
        :pswitch_1ee
        :pswitch_1d1
        :pswitch_1b4
        :pswitch_197
        :pswitch_177
        :pswitch_169
        :pswitch_159
        :pswitch_14b
        :pswitch_13f
        :pswitch_12f
        :pswitch_11f
        :pswitch_10f
        :pswitch_103
        :pswitch_f7
        :pswitch_eb
        :pswitch_cd
        :pswitch_ba
        :pswitch_a9
        :pswitch_9a
        :pswitch_8b
        :pswitch_80
        :pswitch_75
        :pswitch_66
        :pswitch_57
        :pswitch_40
    .end packed-switch
.end method

.method public final getUnknownFieldsSerializedSize(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 2528
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2529
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_22d

    .line 952
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v3

    .line 953
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 955
    invoke-static {v3}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    .line 957
    invoke-static {v3}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_24c

    goto/16 :goto_229

    .line 1157
    :pswitch_1e
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    .line 1158
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 1159
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2e
    add-int/2addr v2, v3

    goto/16 :goto_229

    .line 1152
    :pswitch_31
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1153
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_2e

    .line 1147
    :pswitch_42
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1148
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2e

    .line 1142
    :pswitch_4f
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1143
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto :goto_2e

    .line 1137
    :pswitch_60
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1138
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2e

    .line 1132
    :pswitch_6d
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1133
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2e

    .line 1127
    :pswitch_7a
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1128
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2e

    .line 1122
    :pswitch_87
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1123
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2e

    .line 1116
    :pswitch_98
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    .line 1117
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 1118
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2e

    .line 1110
    :pswitch_a9
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1112
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2e

    .line 1105
    :pswitch_bd
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1106
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    goto/16 :goto_2e

    .line 1100
    :pswitch_cf
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1101
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    .line 1095
    :pswitch_dd
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1096
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    .line 1090
    :pswitch_ef
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1091
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    .line 1085
    :pswitch_fd
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1086
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    .line 1080
    :pswitch_10f
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1081
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    .line 1075
    :pswitch_121
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1076
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2e

    .line 1068
    :pswitch_133
    invoke-virtual {p0, p1, v4, v1}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_229

    mul-int/lit8 v2, v2, 0x35

    .line 1071
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_149
    mul-int/lit8 v2, v2, 0x35

    .line 1065
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2e

    :pswitch_155
    mul-int/lit8 v2, v2, 0x35

    .line 1062
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2e

    .line 1023
    :pswitch_161
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16b

    .line 1025
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_16b
    :goto_16b
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_229

    :pswitch_170
    mul-int/lit8 v2, v2, 0x35

    .line 1017
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_17c
    mul-int/lit8 v2, v2, 0x35

    .line 1014
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_184
    mul-int/lit8 v2, v2, 0x35

    .line 1011
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_190
    mul-int/lit8 v2, v2, 0x35

    .line 1008
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_198
    mul-int/lit8 v2, v2, 0x35

    .line 1005
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_1a0
    mul-int/lit8 v2, v2, 0x35

    .line 1002
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_1a8
    mul-int/lit8 v2, v2, 0x35

    .line 999
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2e

    .line 991
    :pswitch_1b4
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16b

    .line 993
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_16b

    :pswitch_1bf
    mul-int/lit8 v2, v2, 0x35

    .line 986
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2e

    :pswitch_1cd
    mul-int/lit8 v2, v2, 0x35

    .line 983
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_1d9
    mul-int/lit8 v2, v2, 0x35

    .line 980
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_1e1
    mul-int/lit8 v2, v2, 0x35

    .line 977
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_1ed
    mul-int/lit8 v2, v2, 0x35

    .line 974
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_1f5
    mul-int/lit8 v2, v2, 0x35

    .line 971
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_201
    mul-int/lit8 v2, v2, 0x35

    .line 968
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_20d
    mul-int/lit8 v2, v2, 0x35

    .line 965
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2e

    :pswitch_219
    mul-int/lit8 v2, v2, 0x35

    .line 962
    invoke-static {p1, v5, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 961
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v3

    goto/16 :goto_2e

    :cond_229
    :goto_229
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22d
    mul-int/lit8 v2, v2, 0x35

    .line 1168
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 1170
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_24b

    mul-int/lit8 v2, v2, 0x35

    .line 1171
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldSet;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_24b
    return v2

    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_219
        :pswitch_20d
        :pswitch_201
        :pswitch_1f5
        :pswitch_1ed
        :pswitch_1e1
        :pswitch_1d9
        :pswitch_1cd
        :pswitch_1bf
        :pswitch_1b4
        :pswitch_1a8
        :pswitch_1a0
        :pswitch_198
        :pswitch_190
        :pswitch_184
        :pswitch_17c
        :pswitch_170
        :pswitch_161
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_155
        :pswitch_149
        :pswitch_133
        :pswitch_121
        :pswitch_10f
        :pswitch_fd
        :pswitch_ef
        :pswitch_dd
        :pswitch_cf
        :pswitch_bd
        :pswitch_a9
        :pswitch_98
        :pswitch_87
        :pswitch_7a
        :pswitch_6d
        :pswitch_60
        :pswitch_4f
        :pswitch_42
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method public final isFieldPresent(Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 5804
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_e5

    .line 5807
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p2

    .line 5808
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5809
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_f2

    .line 5854
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5852
    :pswitch_29
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    return v5

    :cond_30
    return v4

    .line 5850
    :pswitch_31
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3a

    return v5

    :cond_3a
    return v4

    .line 5848
    :pswitch_3b
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    return v5

    :cond_42
    return v4

    .line 5846
    :pswitch_43
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4c

    return v5

    :cond_4c
    return v4

    .line 5844
    :pswitch_4d
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    return v5

    :cond_54
    return v4

    .line 5842
    :pswitch_55
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    return v5

    :cond_5c
    return v4

    .line 5840
    :pswitch_5d
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    return v5

    :cond_64
    return v4

    .line 5838
    :pswitch_65
    sget-object p2, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 5836
    :pswitch_71
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_78

    return v5

    :cond_78
    return v4

    .line 5827
    :pswitch_79
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5828
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_89

    .line 5829
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 5830
    :cond_89
    instance-of p2, p1, Lcom/explorestack/protobuf/ByteString;

    if-eqz p2, :cond_95

    .line 5831
    sget-object p2, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 5833
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5825
    :pswitch_9b
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 5823
    :pswitch_a0
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a7

    return v5

    :cond_a7
    return v4

    .line 5821
    :pswitch_a8
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b1

    return v5

    :cond_b1
    return v4

    .line 5819
    :pswitch_b2
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_b9

    return v5

    :cond_b9
    return v4

    .line 5817
    :pswitch_ba
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_c3

    return v5

    :cond_c3
    return v4

    .line 5815
    :pswitch_c4
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_cd

    return v5

    :cond_cd
    return v4

    .line 5813
    :pswitch_ce
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_d8

    return v5

    :cond_d8
    return v4

    .line 5811
    :pswitch_d9
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_e4

    return v5

    :cond_e4
    return v4

    :cond_e5
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 5858
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f1

    return v5

    :cond_f1
    return v4

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_ce
        :pswitch_c4
        :pswitch_ba
        :pswitch_b2
        :pswitch_a8
        :pswitch_a0
        :pswitch_9b
        :pswitch_79
        :pswitch_71
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method public final isFieldPresent(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 5797
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 5555
    :goto_7
    iget v5, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_9b

    .line 5556
    iget-object v5, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v9, v5, v2

    .line 5557
    invoke-virtual {p0, v9}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 5558
    invoke-virtual {p0, v9}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v13

    .line 5560
    iget-object v7, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v8, v9, 0x2

    aget v7, v7, v8

    and-int v8, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_32

    if-eq v8, v0, :cond_2f

    .line 5566
    sget-object v3, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v6, v8

    invoke-virtual {v3, p1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_2f
    move v11, v4

    move v10, v8

    goto :goto_34

    :cond_32
    move v10, v3

    move v11, v4

    .line 5570
    :goto_34
    invoke-static {v13}, Lcom/explorestack/protobuf/MessageSchema;->isRequired(I)Z

    move-result v3

    move-object v7, p0

    move-object v8, p1

    if-eqz v3, :cond_43

    .line 5571
    invoke-virtual/range {v7 .. v12}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result p1

    if-nez p1, :cond_43

    return v1

    .line 5580
    :cond_43
    invoke-static {v13}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result p1

    const/16 v3, 0x9

    if-eq p1, v3, :cond_83

    const/16 v3, 0x11

    if-eq p1, v3, :cond_83

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_7c

    const/16 v3, 0x3c

    if-eq p1, v3, :cond_6b

    const/16 v3, 0x44

    if-eq p1, v3, :cond_6b

    const/16 v3, 0x31

    if-eq p1, v3, :cond_7c

    const/16 v3, 0x32

    if-eq p1, v3, :cond_64

    goto :goto_94

    .line 5603
    :cond_64
    invoke-virtual {p0, v8, v13, v9}, Lcom/explorestack/protobuf/MessageSchema;->isMapInitialized(Ljava/lang/Object;II)Z

    move-result p1

    if-nez p1, :cond_94

    return v1

    .line 5597
    :cond_6b
    invoke-virtual {p0, v8, v5, v9}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 5598
    invoke-virtual {p0, v9}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    invoke-static {v8, v13, p1}, Lcom/explorestack/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/explorestack/protobuf/Schema;)Z

    move-result p1

    if-nez p1, :cond_94

    return v1

    .line 5591
    :cond_7c
    invoke-virtual {p0, v8, v13, v9}, Lcom/explorestack/protobuf/MessageSchema;->isListInitialized(Ljava/lang/Object;II)Z

    move-result p1

    if-nez p1, :cond_94

    return v1

    .line 5583
    :cond_83
    invoke-virtual/range {v7 .. v12}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;IIII)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 5585
    invoke-virtual {p0, v9}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object p1

    invoke-static {v8, v13, p1}, Lcom/explorestack/protobuf/MessageSchema;->isInitialized(Ljava/lang/Object;ILcom/explorestack/protobuf/Schema;)Z

    move-result p1

    if-nez p1, :cond_94

    return v1

    :cond_94
    :goto_94
    add-int/lit8 v2, v2, 0x1

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto/16 :goto_7

    :cond_9b
    move-object v7, p0

    move-object v8, p1

    .line 5612
    iget-boolean p1, v7, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz p1, :cond_ae

    .line 5613
    iget-object p1, v7, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {p1, v8}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldSet;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_ae

    return v1

    :cond_ae
    return v6
.end method

.method public final isListInitialized(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 5628
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 5629
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    return v0

    .line 5633
    :cond_12
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object p2

    const/4 p3, 0x0

    move v1, p3

    .line 5634
    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 5635
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5636
    invoke-interface {p2, v2}, Lcom/explorestack/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return p3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return v0
.end method

.method public final isMapInitialized(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5644
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 5645
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    return v0

    .line 5648
    :cond_16
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p2

    .line 5649
    iget-object p3, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {p3, p2}, Lcom/explorestack/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    move-result-object p2

    .line 5650
    iget-object p2, p2, Lcom/explorestack/protobuf/MapEntryLite$Metadata;->valueType:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    move-result-object p2

    sget-object p3, Lcom/explorestack/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$JavaType;

    if-eq p2, p3, :cond_2b

    return v0

    .line 5655
    :cond_2b
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_4c

    .line 5657
    invoke-static {}, Lcom/explorestack/protobuf/Protobuf;->getInstance()Lcom/explorestack/protobuf/Protobuf;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/explorestack/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/explorestack/protobuf/Schema;

    move-result-object p2

    .line 5659
    :cond_4c
    invoke-interface {p2, p3}, Lcom/explorestack/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_34

    const/4 p1, 0x0

    return p1

    :cond_54
    return v0
.end method

.method public final isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 5881
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5882
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 5883
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public final isOneofPresent(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 5876
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5877
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public makeImmutable(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5451
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_2
    iget v1, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v1, :cond_25

    .line 5452
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 5453
    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_22

    .line 5457
    :cond_19
    iget-object v4, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v4, v3}, Lcom/explorestack/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5459
    :cond_25
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    .line 5461
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    iget-object v3, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/explorestack/protobuf/ListFieldSchema;->makeImmutableListAt(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 5463
    :cond_37
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->makeImmutable(Ljava/lang/Object;)V

    .line 5464
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_45

    .line 5465
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->makeImmutable(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3854
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3856
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/explorestack/protobuf/MessageSchema;->mergeFromHelper(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1180
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1182
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 1184
    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/MessageSchema;->mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    .line 1187
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1189
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_1d

    .line 1190
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-static {v0, p1, p2}, Lcom/explorestack/protobuf/SchemaUtil;->mergeExtensions(Lcom/explorestack/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5441
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_8

    .line 5442
    invoke-virtual/range {p0 .. p5}, Lcom/explorestack/protobuf/MessageSchema;->parseProto3Message(Ljava/lang/Object;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    return-void

    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 5444
    invoke-virtual/range {v1 .. v7}, Lcom/explorestack/protobuf/MessageSchema;->parseProto2Message(Ljava/lang/Object;[BIIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    return-void
.end method

.method public final mergeFromHelper(Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TET;>;>(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;",
            "Lcom/explorestack/protobuf/ExtensionSchema<",
            "TET;>;TT;",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p3

    move-object/from16 v5, p5

    const/4 v0, 0x0

    move-object v7, v0

    move-object v10, v7

    .line 3874
    :cond_7
    :goto_7
    :try_start_7
    invoke-interface/range {p4 .. p4}, Lcom/explorestack/protobuf/Reader;->getFieldNumber()I

    move-result v2

    .line 3875
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v3
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_58

    if-gez v3, :cond_97

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2e

    .line 4334
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_18
    iget v2, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_27

    .line 4335
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v0

    .line 4336
    invoke-virtual {p0, v9, v2, v7, p1}, Lcom/explorestack/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_27
    if-eqz v7, :cond_631

    .line 4339
    :goto_29
    invoke-virtual {p1, v9, v7}, Lcom/explorestack/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_631

    .line 3881
    :cond_2e
    :try_start_2e
    iget-boolean v3, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-nez v3, :cond_36

    move-object/from16 v4, p2

    move-object v2, v0

    goto :goto_3e

    :cond_36
    iget-object v3, p0, Lcom/explorestack/protobuf/MessageSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    move-object/from16 v4, p2

    .line 3884
    invoke-virtual {v4, v5, v3, v2}, Lcom/explorestack/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v2
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_58

    :goto_3e
    if-eqz v2, :cond_5c

    if-nez v10, :cond_46

    .line 3888
    :try_start_42
    invoke-virtual/range {p2 .. p3}, Lcom/explorestack/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v10
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4e

    :cond_46
    move-object v3, v4

    move-object v4, v2

    move-object v2, v3

    move-object v8, p1

    move-object/from16 v3, p4

    move-object v6, v10

    goto :goto_51

    :catchall_4e
    move-exception v0

    goto/16 :goto_632

    .line 3891
    :goto_51
    :try_start_51
    invoke-virtual/range {v2 .. v8}, Lcom/explorestack/protobuf/ExtensionSchema;->parseExtension(Lcom/explorestack/protobuf/Reader;Ljava/lang/Object;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/FieldSet;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_58

    move-object v4, v3

    move-object v10, v6

    goto :goto_7

    :catchall_58
    move-exception v0

    move-object v11, v7

    goto/16 :goto_632

    :cond_5c
    move-object/from16 v4, p4

    move-object v11, v7

    .line 3900
    :try_start_5f
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/explorestack/protobuf/Reader;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 3901
    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->skipField()Z

    move-result v2

    if-eqz v2, :cond_6d

    :goto_6b
    move-object v7, v11

    goto :goto_7

    :cond_6d
    move-object v7, v11

    goto :goto_83

    :catchall_6f
    move-exception v0

    :goto_70
    move-object v7, v11

    goto/16 :goto_632

    :cond_73
    if-nez v11, :cond_7b

    .line 3906
    invoke-virtual {p1, v9}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_6f

    move-object v7, v2

    goto :goto_7c

    :cond_7b
    move-object v7, v11

    .line 3909
    :goto_7c
    :try_start_7c
    invoke-virtual {p1, v7, v4}, Lcom/explorestack/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;)Z

    move-result v2
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_4e

    if-eqz v2, :cond_83

    goto :goto_7

    .line 4334
    :cond_83
    :goto_83
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_85
    iget v2, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_94

    .line 4335
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v0

    .line 4336
    invoke-virtual {p0, v9, v2, v7, p1}, Lcom/explorestack/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_94
    if-eqz v7, :cond_631

    goto :goto_29

    :cond_97
    move-object/from16 v4, p4

    move-object v11, v7

    .line 3916
    :try_start_9a
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v6
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_6f

    .line 3919
    :try_start_9e
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_64a

    if-nez v11, :cond_af

    .line 4309
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v7
    :try_end_ab
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9e .. :try_end_ab} :catch_ac
    .catchall {:try_start_9e .. :try_end_ab} :catchall_6f

    goto :goto_b0

    :catch_ac
    :goto_ac
    move-object v7, v11

    goto/16 :goto_5ee

    :cond_af
    move-object v7, v11

    .line 4311
    :goto_b0
    :try_start_b0
    invoke-virtual {p1, v7, v4}, Lcom/explorestack/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;)Z

    move-result v2
    :try_end_b4
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b0 .. :try_end_b4} :catch_5ee
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_4e

    if-nez v2, :cond_7

    .line 4334
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_b8
    iget v2, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_c7

    .line 4335
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v0

    .line 4336
    invoke-virtual {p0, v9, v2, v7, p1}, Lcom/explorestack/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    :cond_c7
    if-eqz v7, :cond_631

    goto/16 :goto_29

    .line 4302
    :pswitch_cb
    :try_start_cb
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    .line 4303
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v12

    invoke-interface {v4, v12, v5}, Lcom/explorestack/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v12

    .line 4300
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4304
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_6b

    .line 4296
    :pswitch_de
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSInt64()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 4295
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4297
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4291
    :pswitch_f2
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4290
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4292
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4286
    :pswitch_106
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSFixed64()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 4285
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4287
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4281
    :pswitch_11a
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSFixed32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4280
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4282
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4267
    :pswitch_12e
    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readEnum()I

    move-result v7

    .line 4268
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object v12

    if-eqz v12, :cond_145

    .line 4269
    invoke-interface {v12, v7}, Lcom/explorestack/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v12

    if-eqz v12, :cond_13f

    goto :goto_145

    .line 4274
    :cond_13f
    invoke-static {v2, v7, v11, p1}, Lcom/explorestack/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_7

    .line 4270
    :cond_145
    :goto_145
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v12, v13, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4271
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4262
    :pswitch_155
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readUInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4261
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4263
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4257
    :pswitch_169
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v12

    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4258
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4239
    :pswitch_179
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_19b

    .line 4242
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    invoke-static {v9, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 4244
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v12

    .line 4243
    invoke-interface {v4, v12, v5}, Lcom/explorestack/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v12

    .line 4241
    invoke-static {v7, v12}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4245
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    invoke-static {v9, v12, v13, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1ad

    .line 4249
    :cond_19b
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    .line 4251
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v12

    .line 4250
    invoke-interface {v4, v12, v5}, Lcom/explorestack/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v12

    .line 4247
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4252
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    .line 4254
    :goto_1ad
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4235
    :pswitch_1b2
    invoke-virtual {p0, v9, v6, v4}, Lcom/explorestack/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/explorestack/protobuf/Reader;)V

    .line 4236
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4231
    :pswitch_1ba
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readBool()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 4230
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4232
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4226
    :pswitch_1ce
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readFixed32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4225
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4227
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4221
    :pswitch_1e2
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readFixed64()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 4220
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4222
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4216
    :pswitch_1f6
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readInt32()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 4215
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4217
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4211
    :pswitch_20a
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readUInt64()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 4210
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4212
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4206
    :pswitch_21e
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readInt64()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 4205
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4207
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4201
    :pswitch_232
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readFloat()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 4200
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4202
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_6b

    .line 4196
    :pswitch_246
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readDouble()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 4195
    invoke-static {v9, v6, v7, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4197
    invoke-virtual {p0, v9, v2, v3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_258
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_cb .. :try_end_258} :catch_ac
    .catchall {:try_start_cb .. :try_end_258} :catchall_6f

    goto/16 :goto_6b

    .line 4192
    :pswitch_25a
    :try_start_25a
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, p0

    move-object/from16 v6, p4

    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Reader;)V

    move-object/from16 v9, p3

    move-object/from16 v4, p4

    :goto_269
    move-object/from16 v5, p5

    goto/16 :goto_6b

    :catchall_26d
    move-exception v0

    move-object/from16 v9, p3

    goto/16 :goto_70

    :catch_272
    move-object/from16 v9, p3

    move-object/from16 v4, p4

    :catch_276
    move-object/from16 v5, p5

    goto/16 :goto_ac

    .line 4185
    :pswitch_27a
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v4

    .line 4187
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6
    :try_end_282
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_25a .. :try_end_282} :catch_272
    .catchall {:try_start_25a .. :try_end_282} :catchall_26d

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v7, p5

    move-wide v3, v4

    move-object/from16 v5, p4

    .line 4183
    :try_start_28a
    invoke-virtual/range {v1 .. v7}, Lcom/explorestack/protobuf/MessageSchema;->readGroupList(Ljava/lang/Object;JLcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    :try_end_28d
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_28a .. :try_end_28d} :catch_294
    .catchall {:try_start_28a .. :try_end_28d} :catchall_290

    move-object v9, v2

    move-object v4, v5

    goto :goto_269

    :catchall_290
    move-exception v0

    move-object v9, v2

    goto/16 :goto_70

    :catch_294
    move-object v9, v2

    move-object v4, v5

    move-object v7, v11

    move-object/from16 v5, p5

    goto/16 :goto_5ee

    .line 4178
    :pswitch_29b
    :try_start_29b
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4179
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4178
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    goto :goto_269

    .line 4174
    :pswitch_2a9
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4175
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4174
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    goto :goto_269

    .line 4170
    :pswitch_2b7
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4171
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4170
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    goto :goto_269

    .line 4166
    :pswitch_2c5
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4167
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4166
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    goto :goto_269

    .line 4153
    :pswitch_2d3
    iget-object v5, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4154
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v5, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 4155
    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4160
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4157
    invoke-static {v2, v5, v3, v11, p1}, Lcom/explorestack/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    :goto_2e8
    move-object/from16 v5, p5

    goto/16 :goto_7

    .line 4148
    :pswitch_2ec
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4149
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4148
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4144
    :pswitch_2fb
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4145
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4144
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4140
    :pswitch_30a
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4141
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4140
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4136
    :pswitch_319
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4137
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4136
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4132
    :pswitch_328
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4133
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4132
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4128
    :pswitch_337
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4129
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4128
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4124
    :pswitch_346
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4125
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4124
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4120
    :pswitch_355
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4121
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4120
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4116
    :pswitch_364
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4117
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4116
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4112
    :pswitch_373
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4113
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4112
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4108
    :pswitch_382
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4109
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4108
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4104
    :pswitch_391
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4105
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4104
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4100
    :pswitch_3a0
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4101
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4100
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4087
    :pswitch_3af
    iget-object v5, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4088
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v5, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 4089
    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 4094
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object v3

    .line 4091
    invoke-static {v2, v5, v3, v11, p1}, Lcom/explorestack/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_2e8

    .line 4082
    :pswitch_3c6
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4083
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4082
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4078
    :pswitch_3d5
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4079
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v5

    invoke-virtual {v2, v9, v5, v6}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4078
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    goto/16 :goto_269

    .line 4073
    :pswitch_3e4
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v5
    :try_end_3e8
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_29b .. :try_end_3e8} :catch_276
    .catchall {:try_start_29b .. :try_end_3e8} :catchall_6f

    move-object v1, p0

    move v3, v6

    move-object v2, v9

    move-object/from16 v6, p5

    .line 4069
    :try_start_3ed
    invoke-virtual/range {v1 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    :try_end_3f0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3ed .. :try_end_3f0} :catch_3f4
    .catchall {:try_start_3ed .. :try_end_3f0} :catchall_290

    move-object v9, v2

    move-object v5, v6

    goto/16 :goto_6b

    :catch_3f4
    move-object v9, v2

    move-object v5, v6

    goto/16 :goto_ac

    .line 4065
    :pswitch_3f8
    :try_start_3f8
    invoke-virtual {p0, v9, v6, v4}, Lcom/explorestack/protobuf/MessageSchema;->readStringList(Ljava/lang/Object;ILcom/explorestack/protobuf/Reader;)V

    goto/16 :goto_6b

    .line 4061
    :pswitch_3fd
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4062
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4061
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4057
    :pswitch_40c
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4058
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4057
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4053
    :pswitch_41b
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4054
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4053
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4049
    :pswitch_42a
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4050
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4049
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4045
    :pswitch_439
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4046
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4045
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4041
    :pswitch_448
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4042
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4041
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4037
    :pswitch_457
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4038
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4037
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4033
    :pswitch_466
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 4034
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-virtual {v2, v9, v6, v7}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 4033
    invoke-interface {v4, v2}, Lcom/explorestack/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    goto/16 :goto_6b

    .line 4015
    :pswitch_475
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_498

    .line 4018
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    invoke-static {v9, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4020
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v3

    .line 4019
    invoke-interface {v4, v3, v5}, Lcom/explorestack/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 4017
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4021
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6b

    .line 4025
    :cond_498
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    .line 4027
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v2

    .line 4026
    invoke-interface {v4, v2, v5}, Lcom/explorestack/protobuf/Reader;->readGroupBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 4023
    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4028
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 4010
    :pswitch_4ac
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSInt64()J

    move-result-wide v12

    invoke-static {v9, v6, v7, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 4011
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 4006
    :pswitch_4bc
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSInt32()I

    move-result v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 4007
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 4002
    :pswitch_4cc
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSFixed64()J

    move-result-wide v12

    invoke-static {v9, v6, v7, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 4003
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3998
    :pswitch_4dc
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readSFixed32()I

    move-result v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3999
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3985
    :pswitch_4ec
    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readEnum()I

    move-result v7

    .line 3986
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object v12

    if-eqz v12, :cond_503

    .line 3987
    invoke-interface {v12, v7}, Lcom/explorestack/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v12

    if-eqz v12, :cond_4fd

    goto :goto_503

    .line 3992
    :cond_4fd
    invoke-static {v2, v7, v11, p1}, Lcom/explorestack/protobuf/SchemaUtil;->storeUnknownEnum(IILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_7

    .line 3988
    :cond_503
    :goto_503
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    invoke-static {v9, v12, v13, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3989
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3980
    :pswitch_50f
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readUInt32()I

    move-result v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3981
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3976
    :pswitch_51f
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3977
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3958
    :pswitch_52f
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_552

    .line 3961
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v12

    invoke-static {v9, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 3963
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v3

    .line 3962
    invoke-interface {v4, v3, v5}, Lcom/explorestack/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    .line 3960
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3964
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6b

    .line 3968
    :cond_552
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    .line 3970
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v2

    .line 3969
    invoke-interface {v4, v2, v5}, Lcom/explorestack/protobuf/Reader;->readMessageBySchemaWithCheck(Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2

    .line 3966
    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3971
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3953
    :pswitch_566
    invoke-virtual {p0, v9, v6, v4}, Lcom/explorestack/protobuf/MessageSchema;->readString(Ljava/lang/Object;ILcom/explorestack/protobuf/Reader;)V

    .line 3954
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3949
    :pswitch_56e
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readBool()Z

    move-result v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 3950
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3945
    :pswitch_57e
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readFixed32()I

    move-result v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3946
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3941
    :pswitch_58e
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readFixed64()J

    move-result-wide v12

    invoke-static {v9, v6, v7, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3942
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3937
    :pswitch_59e
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readInt32()I

    move-result v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 3938
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3933
    :pswitch_5ae
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readUInt64()J

    move-result-wide v12

    invoke-static {v9, v6, v7, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3934
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3929
    :pswitch_5be
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readInt64()J

    move-result-wide v12

    invoke-static {v9, v6, v7, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 3930
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3925
    :pswitch_5ce
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readFloat()F

    move-result v2

    invoke-static {v9, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 3926
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_6b

    .line 3921
    :pswitch_5de
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->readDouble()D

    move-result-wide v12

    invoke-static {v9, v6, v7, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 3922
    invoke-virtual {p0, v9, v3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V
    :try_end_5ec
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3f8 .. :try_end_5ec} :catch_ac
    .catchall {:try_start_3f8 .. :try_end_5ec} :catchall_6f

    goto/16 :goto_6b

    .line 4319
    :catch_5ee
    :goto_5ee
    :try_start_5ee
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/UnknownFieldSchema;->shouldDiscardUnknownFields(Lcom/explorestack/protobuf/Reader;)Z

    move-result v2

    if-eqz v2, :cond_60f

    .line 4320
    invoke-interface {v4}, Lcom/explorestack/protobuf/Reader;->skipField()Z

    move-result v2
    :try_end_5f8
    .catchall {:try_start_5ee .. :try_end_5f8} :catchall_4e

    if-nez v2, :cond_7

    .line 4334
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_5fc
    iget v2, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_60b

    .line 4335
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v0

    .line 4336
    invoke-virtual {p0, v9, v2, v7, p1}, Lcom/explorestack/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_5fc

    :cond_60b
    if-eqz v7, :cond_631

    goto/16 :goto_29

    :cond_60f
    if-nez v7, :cond_616

    .line 4325
    :try_start_611
    invoke-virtual {p1, v9}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    .line 4327
    :cond_616
    invoke-virtual {p1, v7, v4}, Lcom/explorestack/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/explorestack/protobuf/Reader;)Z

    move-result v2
    :try_end_61a
    .catchall {:try_start_611 .. :try_end_61a} :catchall_4e

    if-nez v2, :cond_7

    .line 4334
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_61e
    iget v2, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_62d

    .line 4335
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v0

    .line 4336
    invoke-virtual {p0, v9, v2, v7, p1}, Lcom/explorestack/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_61e

    :cond_62d
    if-eqz v7, :cond_631

    goto/16 :goto_29

    :cond_631
    :goto_631
    return-void

    .line 4334
    :goto_632
    iget v2, p0, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    :goto_634
    iget v3, p0, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v2, v3, :cond_643

    .line 4335
    iget-object v3, p0, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v3, v3, v2

    .line 4336
    invoke-virtual {p0, v9, v3, v7, p1}, Lcom/explorestack/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_634

    :cond_643
    if-eqz v7, :cond_648

    .line 4339
    invoke-virtual {p1, v9, v7}, Lcom/explorestack/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4341
    :cond_648
    throw v0

    nop

    :pswitch_data_64a
    .packed-switch 0x0
        :pswitch_5de
        :pswitch_5ce
        :pswitch_5be
        :pswitch_5ae
        :pswitch_59e
        :pswitch_58e
        :pswitch_57e
        :pswitch_56e
        :pswitch_566
        :pswitch_52f
        :pswitch_51f
        :pswitch_50f
        :pswitch_4ec
        :pswitch_4dc
        :pswitch_4cc
        :pswitch_4bc
        :pswitch_4ac
        :pswitch_475
        :pswitch_466
        :pswitch_457
        :pswitch_448
        :pswitch_439
        :pswitch_42a
        :pswitch_41b
        :pswitch_40c
        :pswitch_3fd
        :pswitch_3f8
        :pswitch_3e4
        :pswitch_3d5
        :pswitch_3c6
        :pswitch_3af
        :pswitch_3a0
        :pswitch_391
        :pswitch_382
        :pswitch_373
        :pswitch_364
        :pswitch_355
        :pswitch_346
        :pswitch_337
        :pswitch_328
        :pswitch_319
        :pswitch_30a
        :pswitch_2fb
        :pswitch_2ec
        :pswitch_2d3
        :pswitch_2c5
        :pswitch_2b7
        :pswitch_2a9
        :pswitch_29b
        :pswitch_27a
        :pswitch_25a
        :pswitch_246
        :pswitch_232
        :pswitch_21e
        :pswitch_20a
        :pswitch_1f6
        :pswitch_1e2
        :pswitch_1ce
        :pswitch_1ba
        :pswitch_1b2
        :pswitch_179
        :pswitch_169
        :pswitch_155
        :pswitch_12e
        :pswitch_11a
        :pswitch_106
        :pswitch_f2
        :pswitch_de
        :pswitch_cb
    .end packed-switch
.end method

.method public final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Reader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            "Lcom/explorestack/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5477
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result p2

    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5478
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_18

    .line 5484
    iget-object p2, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {p2, p3}, Lcom/explorestack/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5485
    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2f

    .line 5486
    :cond_18
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v2, p2}, Lcom/explorestack/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 5488
    iget-object v2, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v2, p3}, Lcom/explorestack/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5489
    iget-object v3, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v3, v2, p2}, Lcom/explorestack/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5490
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    .line 5492
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 5493
    invoke-interface {p1, p2}, Lcom/explorestack/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 5494
    invoke-interface {p2, p3}, Lcom/explorestack/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    move-result-object p2

    .line 5492
    invoke-interface {p5, p1, p2, p4}, Lcom/explorestack/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/explorestack/protobuf/MapEntryLite$Metadata;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1378
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1379
    invoke-static {v0}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 1381
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_2e

    .line 1385
    :cond_f
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 1386
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_26

    if-eqz p2, :cond_26

    .line 1388
    invoke-static {v2, p2}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1389
    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1390
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    :cond_26
    if-eqz p2, :cond_2e

    .line 1392
    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1393
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1398
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1399
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v1

    .line 1400
    invoke-static {v0}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v2

    .line 1402
    invoke-virtual {p0, p2, v1, p3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_3a

    .line 1406
    :cond_13
    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1407
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1409
    :goto_1f
    invoke-static {p2, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_32

    if-eqz p2, :cond_32

    .line 1411
    invoke-static {v0, p2}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1412
    invoke-static {p1, v2, v3, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1413
    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    return-void

    :cond_32
    if-eqz p2, :cond_3a

    .line 1415
    invoke-static {p1, v2, v3, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1416
    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final mergeSingleField(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1195
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v0

    .line 1196
    invoke-static {v0}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    .line 1197
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    .line 1199
    invoke-static {v0}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v0

    packed-switch v0, :pswitch_data_164

    goto/16 :goto_162

    .line 1370
    :pswitch_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void

    .line 1364
    :pswitch_19
    invoke-virtual {p0, p2, v3, p3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1365
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1366
    invoke-virtual {p0, p1, v3, p3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    return-void

    .line 1355
    :pswitch_2a
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void

    .line 1348
    :pswitch_2e
    invoke-virtual {p0, p2, v3, p3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1349
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1350
    invoke-virtual {p0, p1, v3, p3}, Lcom/explorestack/protobuf/MessageSchema;->setOneofPresent(Ljava/lang/Object;II)V

    return-void

    .line 1337
    :pswitch_3f
    iget-object p3, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-static {p3, p1, p2, v1, v2}, Lcom/explorestack/protobuf/SchemaUtil;->mergeMap(Lcom/explorestack/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    return-void

    .line 1334
    :pswitch_45
    iget-object p3, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/explorestack/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-void

    .line 1300
    :pswitch_4b
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void

    .line 1294
    :pswitch_4f
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1295
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1296
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1288
    :pswitch_60
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1289
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1290
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1282
    :pswitch_71
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1283
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1284
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1276
    :pswitch_82
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1277
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1278
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1270
    :pswitch_93
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1271
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1272
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1264
    :pswitch_a4
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1265
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1266
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1258
    :pswitch_b5
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1259
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1260
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1255
    :pswitch_c6
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void

    .line 1249
    :pswitch_ca
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1250
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1251
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1243
    :pswitch_db
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1244
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1245
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1237
    :pswitch_ec
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1238
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1239
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1231
    :pswitch_fd
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1232
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1233
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1225
    :pswitch_10e
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1226
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1227
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1219
    :pswitch_11f
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1220
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1221
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1213
    :pswitch_130
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1214
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1215
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1207
    :pswitch_141
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1208
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1209
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    return-void

    .line 1201
    :pswitch_152
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1202
    invoke-static {p2, v1, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1203
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/protobuf/MessageSchema;->setFieldPresent(Ljava/lang/Object;I)V

    :cond_162
    :goto_162
    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_ec
        :pswitch_db
        :pswitch_ca
        :pswitch_c6
        :pswitch_b5
        :pswitch_a4
        :pswitch_93
        :pswitch_82
        :pswitch_71
        :pswitch_60
        :pswitch_4f
        :pswitch_4b
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_3f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2a
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_15
    .end packed-switch
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->newInstanceSchema:Lcom/explorestack/protobuf/NewInstanceSchema;

    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/NewInstanceSchema;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final numberAt(I)I
    .registers 3

    .line 5722
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    aget p1, v0, p1

    return p1
.end method

.method public final parseMapField(Ljava/lang/Object;[BIIIJLcom/explorestack/protobuf/ArrayDecoders$Registers;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v2, p6

    .line 4669
    sget-object v4, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4670
    invoke-virtual {p0, p5}, Lcom/explorestack/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object v5

    .line 4671
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 4672
    iget-object v7, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v7, v6}, Lcom/explorestack/protobuf/MapFieldSchema;->isImmutable(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 4674
    iget-object v7, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v7, v5}, Lcom/explorestack/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4675
    iget-object v8, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    invoke-interface {v8, v7, v6}, Lcom/explorestack/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4676
    invoke-virtual {v4, p1, v2, v3, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v7

    .line 4678
    :cond_22
    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 4682
    invoke-interface {v1, v5}, Lcom/explorestack/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    move-result-object v4

    iget-object v1, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 4683
    invoke-interface {v1, v6}, Lcom/explorestack/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p8

    .line 4678
    invoke-virtual/range {v0 .. v6}, Lcom/explorestack/protobuf/MessageSchema;->decodeMapEntry([BIILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    return v1
.end method

.method public final parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/explorestack/protobuf/ArrayDecoders$Registers;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v3, p7

    move-wide/from16 v9, p10

    move/from16 v4, p12

    .line 4701
    sget-object v11, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 4702
    iget-object v5, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v6, v4, 0x2

    aget v5, v5, v6

    const v6, 0xfffff

    and-int/2addr v5, v6

    int-to-long v12, v5

    const/4 v5, 0x5

    const/4 v14, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    packed-switch p9, :pswitch_data_1fa

    :cond_22
    move/from16 v15, p3

    goto/16 :goto_1f8

    :pswitch_26
    const/4 v5, 0x3

    if-ne v3, v5, :cond_22

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 4833
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 4832
    invoke-static/range {v2 .. v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeGroupField(Lcom/explorestack/protobuf/Schema;[BIIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v5, v7

    .line 4835
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_48

    .line 4836
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_48
    if-nez v14, :cond_50

    .line 4839
    iget-object v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_59

    .line 4841
    :cond_50
    iget-object v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4842
    invoke-static {v14, v3}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4841
    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4844
    :goto_59
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5d
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_1f8

    .line 4823
    invoke-static {v6, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4824
    iget-wide v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4825
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_7a
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_1f8

    .line 4816
    invoke-static {v6, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4817
    iget v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4818
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_97
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_1f8

    .line 4802
    invoke-static {v6, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 4803
    iget v5, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    .line 4804
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object v4

    if-eqz v4, :cond_bf

    .line 4805
    invoke-interface {v4, v5}, Lcom/explorestack/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_b2

    goto :goto_bf

    .line 4810
    :cond_b2
    invoke-static {v1}, Lcom/explorestack/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v1

    int-to-long v4, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    return v3

    .line 4806
    :cond_bf
    :goto_bf
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4807
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v3

    :pswitch_ca
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_1f8

    .line 4795
    invoke-static {v6, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeBytes([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4796
    iget-object v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4797
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_df
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_1f8

    .line 4779
    invoke-virtual {v0, v4}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v2

    move/from16 v3, p4

    .line 4778
    invoke-static {v2, v6, v15, v3, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageField(Lcom/explorestack/protobuf/Schema;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4781
    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_fb

    .line 4782
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_fb
    if-nez v14, :cond_103

    .line 4785
    iget-object v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10c

    .line 4787
    :cond_103
    iget-object v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 4788
    invoke-static {v14, v3}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4787
    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4790
    :goto_10c
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_110
    move-object/from16 v6, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-ne v3, v7, :cond_1f8

    .line 4759
    invoke-static {v6, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4760
    iget v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    if-nez v3, :cond_126

    .line 4762
    const-string v3, ""

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_145

    :cond_126
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_13a

    add-int v4, v2, v3

    .line 4765
    invoke-static {v6, v2, v4}, Lcom/explorestack/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v4

    if-eqz v4, :cond_135

    goto :goto_13a

    .line 4766
    :cond_135
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 4768
    :cond_13a
    :goto_13a
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4769
    invoke-virtual {v11, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    .line 4772
    :goto_145
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_149
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_1f8

    .line 4752
    invoke-static {v2, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4753
    iget-wide v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v14, 0x0

    cmp-long v3, v3, v14

    if-eqz v3, :cond_15e

    goto :goto_15f

    :cond_15e
    const/4 v6, 0x0

    :goto_15f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4754
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_16a
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v5, :cond_1f8

    .line 4745
    invoke-static/range {p2 .. p3}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v15, 0x4

    .line 4747
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_181
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v6, :cond_1f8

    .line 4737
    invoke-static/range {p2 .. p3}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v15, 0x8

    .line 4739
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_198
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_1f8

    .line 4729
    invoke-static {v2, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4730
    iget v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4731
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_1b1
    move-object/from16 v2, p2

    move/from16 v15, p3

    move-object/from16 v5, p13

    if-nez v3, :cond_1f8

    .line 4721
    invoke-static {v2, v15, v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4722
    iget-wide v3, v5, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4723
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_1ca
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v5, :cond_1f8

    .line 4713
    invoke-static/range {p2 .. p3}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v15, 0x4

    .line 4715
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_1e1
    move-object/from16 v2, p2

    move/from16 v15, p3

    if-ne v3, v6, :cond_1f8

    .line 4706
    invoke-static/range {p2 .. p3}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v11, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v15, 0x8

    .line 4708
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :cond_1f8
    :goto_1f8
    return v15

    nop

    :pswitch_data_1fa
    .packed-switch 0x33
        :pswitch_1e1
        :pswitch_1ca
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_198
        :pswitch_181
        :pswitch_16a
        :pswitch_149
        :pswitch_110
        :pswitch_df
        :pswitch_ca
        :pswitch_198
        :pswitch_97
        :pswitch_16a
        :pswitch_181
        :pswitch_7a
        :pswitch_5d
        :pswitch_26
    .end packed-switch
.end method

.method public parseProto2Message(Ljava/lang/Object;[BIIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    .line 4881
    sget-object v8, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v10, -0x1

    move/from16 v3, p3

    move v5, v10

    move/from16 v6, v16

    move v12, v6

    move v13, v12

    const v11, 0xfffff

    :goto_19
    if-ge v3, v4, :cond_44f

    add-int/lit8 v13, v3, 0x1

    .line 4888
    aget-byte v3, v2, v3

    if-gez v3, :cond_27

    .line 4890
    invoke-static {v3, v2, v13, v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v13

    .line 4891
    iget v3, v7, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    :cond_27
    move/from16 v22, v13

    move v13, v3

    move/from16 v3, v22

    ushr-int/lit8 v14, v13, 0x3

    and-int/lit8 v7, v13, 0x7

    const v17, 0xfffff

    const/4 v9, 0x3

    if-le v14, v5, :cond_3c

    .line 4896
    div-int/2addr v6, v9

    invoke-virtual {v0, v14, v6}, Lcom/explorestack/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v5

    goto :goto_40

    .line 4898
    :cond_3c
    invoke-virtual {v0, v14}, Lcom/explorestack/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v5

    :goto_40
    if-ne v5, v10, :cond_57

    move-object/from16 v9, p6

    move v2, v3

    move-object/from16 v19, v8

    move/from16 v20, v10

    move/from16 v18, v12

    move v5, v13

    move/from16 v21, v14

    move/from16 v12, v16

    move/from16 v15, v17

    move/from16 v10, p5

    move-object v8, v0

    goto/16 :goto_403

    .line 4905
    :cond_57
    iget-object v6, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v18, v5, 0x1

    aget v6, v6, v18

    .line 4906
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v10

    move/from16 v19, v10

    .line 4907
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v9

    const/16 v2, 0x11

    move/from16 v20, v3

    move/from16 v3, v19

    if-gt v3, v2, :cond_2dc

    .line 4910
    iget-object v2, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v19, v5, 0x2

    aget v2, v2, v19

    ushr-int/lit8 v19, v2, 0x14

    move/from16 v21, v2

    const/4 v2, 0x1

    shl-int v19, v2, v19

    and-int v2, v21, v17

    move/from16 v21, v14

    if-eq v2, v11, :cond_91

    move/from16 v14, v17

    if-eq v11, v14, :cond_8a

    int-to-long v14, v11

    .line 4917
    invoke-virtual {v8, v1, v14, v15, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8a
    int-to-long v11, v2

    .line 4920
    invoke-virtual {v8, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v12, v11

    move v11, v2

    :cond_91
    const/4 v2, 0x5

    packed-switch v3, :pswitch_data_496

    move-object/from16 p3, v8

    move v8, v4

    move-object/from16 v4, p3

    move-object/from16 v15, p2

    move-object/from16 v9, p6

    move v14, v5

    move/from16 p3, v11

    move/from16 v10, v20

    goto/16 :goto_2c9

    :pswitch_a5
    const/4 v2, 0x3

    if-ne v7, v2, :cond_e2

    shl-int/lit8 v2, v21, 0x3

    or-int/lit8 v6, v2, 0x4

    .line 5060
    invoke-virtual {v0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move v14, v5

    move v5, v4

    move/from16 v4, v20

    .line 5059
    invoke-static/range {v2 .. v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeGroupField(Lcom/explorestack/protobuf/Schema;[BIIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v15, v3

    move-object v3, v7

    and-int v4, v12, v19

    if-nez v4, :cond_c8

    .line 5062
    iget-object v4, v3, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v8, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d5

    .line 5068
    :cond_c8
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v3, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5067
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 5064
    invoke-virtual {v8, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d5
    or-int v12, v12, v19

    move/from16 v4, p4

    move-object v7, v3

    move v6, v14

    move/from16 v5, v21

    const/4 v10, -0x1

    :goto_de
    move v3, v2

    move-object v2, v15

    goto/16 :goto_19

    :cond_e2
    move-object/from16 v15, p2

    move v14, v5

    move-object/from16 v9, p6

    move-object v4, v8

    move/from16 p3, v11

    move/from16 v10, v20

    move/from16 v8, p4

    goto/16 :goto_2c9

    :pswitch_f0
    move-object/from16 v15, p2

    move-object/from16 v3, p6

    move v14, v5

    move/from16 v4, v20

    if-nez v7, :cond_11e

    .line 5047
    invoke-static {v15, v4, v3}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    .line 5048
    iget-wide v4, v3, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5049
    invoke-static {v4, v5}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v5

    move-wide/from16 v22, v9

    move-object v9, v3

    move-wide/from16 v3, v22

    move-object v2, v1

    move-object v1, v8

    move/from16 v8, p4

    .line 5048
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v3, v1

    move-object v1, v2

    or-int v12, v12, v19

    move v4, v8

    move v6, v14

    move-object v2, v15

    move/from16 v5, v21

    const/4 v10, -0x1

    move-object v8, v3

    move v3, v7

    move-object v7, v9

    goto/16 :goto_19

    :cond_11e
    move-object v9, v3

    move-object v3, v8

    move/from16 v8, p4

    :cond_122
    move v10, v4

    move/from16 p3, v11

    :cond_125
    :goto_125
    move-object v4, v3

    goto/16 :goto_2c9

    :pswitch_128
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move-wide v5, v9

    move-object/from16 v9, p6

    move v8, v4

    move/from16 v4, v20

    if-nez v7, :cond_122

    .line 5038
    invoke-static {v15, v4, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 5039
    iget v4, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5040
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v4

    .line 5039
    invoke-virtual {v3, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_141
    or-int v12, v12, v19

    :goto_143
    move v4, v8

    move-object v7, v9

    move v6, v14

    move/from16 v5, v21

    const/4 v10, -0x1

    move-object v8, v3

    goto :goto_de

    :pswitch_14b
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move-wide v5, v9

    move-object/from16 v9, p6

    move v8, v4

    move/from16 v4, v20

    if-nez v7, :cond_122

    .line 5023
    invoke-static {v15, v4, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 5024
    iget v4, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5025
    invoke-virtual {v0, v14}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object v7

    if-eqz v7, :cond_177

    .line 5026
    invoke-interface {v7, v4}, Lcom/explorestack/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v7

    if-eqz v7, :cond_16a

    goto :goto_177

    .line 5031
    :cond_16a
    invoke-static {v1}, Lcom/explorestack/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v13, v4}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_143

    .line 5027
    :cond_177
    :goto_177
    invoke-virtual {v3, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_141

    :pswitch_17b
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move-wide v5, v9

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move v8, v4

    move/from16 v4, v20

    if-ne v7, v2, :cond_122

    .line 5015
    invoke-static {v15, v4, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeBytes([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 5016
    iget-object v4, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v3, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_141

    :pswitch_192
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move-wide v5, v9

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move v8, v4

    move/from16 v4, v20

    if-ne v7, v2, :cond_122

    .line 4999
    invoke-virtual {v0, v14}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v2

    .line 4998
    invoke-static {v2, v15, v4, v8, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageField(Lcom/explorestack/protobuf/Schema;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    and-int v4, v12, v19

    if-nez v4, :cond_1b1

    .line 5001
    iget-object v4, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v3, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_141

    .line 5007
    :cond_1b1
    invoke-virtual {v3, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5006
    invoke-static {v4, v7}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 5003
    invoke-virtual {v3, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_141

    :pswitch_1bf
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move/from16 p3, v11

    const/4 v2, 0x2

    move v8, v4

    move-wide v10, v9

    move/from16 v4, v20

    move-object/from16 v9, p6

    if-ne v7, v2, :cond_1e7

    const/high16 v2, 0x20000000

    and-int/2addr v2, v6

    if-nez v2, :cond_1d8

    .line 4986
    invoke-static {v15, v4, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeString([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_1dc

    .line 4988
    :cond_1d8
    invoke-static {v15, v4, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4990
    :goto_1dc
    iget-object v4, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v3, v1, v10, v11, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1e1
    or-int v12, v12, v19

    move/from16 v11, p3

    goto/16 :goto_143

    :cond_1e7
    move v10, v4

    goto/16 :goto_125

    :pswitch_1ea
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move/from16 p3, v11

    move v8, v4

    move-wide v10, v9

    move/from16 v4, v20

    move-object/from16 v9, p6

    if-nez v7, :cond_1e7

    .line 4977
    invoke-static {v15, v4, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4978
    iget-wide v4, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_206

    const/4 v4, 0x1

    goto :goto_208

    :cond_206
    move/from16 v4, v16

    :goto_208
    invoke-static {v1, v10, v11, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    goto :goto_1e1

    :pswitch_20c
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move/from16 p3, v11

    move v8, v4

    move-wide v10, v9

    move/from16 v4, v20

    move-object/from16 v9, p6

    if-ne v7, v2, :cond_1e7

    .line 4969
    invoke-static {v15, v4}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v2

    invoke-virtual {v3, v1, v10, v11, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_1e1

    :pswitch_224
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move/from16 p3, v11

    const/4 v2, 0x1

    move v8, v4

    move-wide v10, v9

    move/from16 v4, v20

    move-object/from16 v9, p6

    if-ne v7, v2, :cond_1e7

    .line 4960
    invoke-static {v15, v4}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v5

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v22, v10

    move v10, v4

    move-wide/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v3, v1

    move-object v1, v2

    add-int/lit8 v2, v10, 0x8

    goto :goto_1e1

    :pswitch_246
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move-wide v5, v9

    move/from16 p3, v11

    move/from16 v10, v20

    move-object/from16 v9, p6

    move v8, v4

    if-nez v7, :cond_125

    .line 4951
    invoke-static {v15, v10, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 4952
    iget v4, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v3, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1e1

    :pswitch_25e
    move-object/from16 v15, p2

    move v14, v5

    move-object v3, v8

    move-wide v5, v9

    move/from16 p3, v11

    move/from16 v10, v20

    move-object/from16 v9, p6

    move v8, v4

    if-nez v7, :cond_125

    .line 4942
    invoke-static {v15, v10, v9}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move-wide v10, v5

    .line 4943
    iget-wide v5, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    move-object v2, v1

    move-object v1, v3

    move-wide v3, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v4, v1

    move-object v1, v2

    or-int v12, v12, v19

    move v2, v8

    move-object v8, v4

    move v4, v2

    move/from16 v11, p3

    move v3, v7

    :goto_283
    move-object v7, v9

    move v6, v14

    move-object v2, v15

    move/from16 v5, v21

    const/4 v10, -0x1

    goto/16 :goto_19

    :pswitch_28b
    move-object/from16 p3, v8

    move v8, v4

    move-object/from16 v4, p3

    move-object/from16 v15, p2

    move v14, v5

    move-wide v5, v9

    move/from16 p3, v11

    move/from16 v10, v20

    move-object/from16 v9, p6

    if-ne v7, v2, :cond_2c9

    .line 4933
    invoke-static {v15, v10}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v2

    invoke-static {v1, v5, v6, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v10, 0x4

    :goto_2a5
    or-int v12, v12, v19

    move v2, v8

    move-object v8, v4

    move v4, v2

    move/from16 v11, p3

    goto :goto_283

    :pswitch_2ad
    move-object/from16 p3, v8

    move v8, v4

    move-object/from16 v4, p3

    move-object/from16 v15, p2

    move v14, v5

    move-wide v5, v9

    move/from16 p3, v11

    move/from16 v10, v20

    const/4 v2, 0x1

    move-object/from16 v9, p6

    if-ne v7, v2, :cond_2c9

    .line 4925
    invoke-static {v15, v10}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v2

    invoke-static {v1, v5, v6, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v3, v10, 0x8

    goto :goto_2a5

    :cond_2c9
    :goto_2c9
    move/from16 v11, p3

    move-object v8, v0

    move-object/from16 v19, v4

    move v2, v10

    move/from16 v18, v12

    move v5, v13

    move v12, v14

    const v15, 0xfffff

    const/16 v20, -0x1

    move/from16 v10, p5

    goto/16 :goto_403

    :cond_2dc
    move-object/from16 v15, p2

    move-object v4, v8

    move-wide v8, v9

    move/from16 v21, v14

    move/from16 v10, v20

    move v14, v5

    const/16 v2, 0x1b

    if-ne v3, v2, :cond_33b

    const/4 v2, 0x2

    if-ne v7, v2, :cond_32b

    .line 5081
    invoke-virtual {v4, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Internal$ProtobufList;

    .line 5082
    invoke-interface {v2}, Lcom/explorestack/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_30a

    .line 5083
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_301

    const/16 v3, 0xa

    goto :goto_303

    :cond_301
    mul-int/lit8 v3, v3, 0x2

    .line 5085
    :goto_303
    invoke-interface {v2, v3}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v2

    .line 5087
    invoke-virtual {v4, v1, v8, v9, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_30a
    move-object v6, v2

    .line 5091
    invoke-virtual {v0, v14}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v2, v13

    move-object v3, v15

    move-object v15, v4

    move v4, v10

    .line 5090
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageList(Lcom/explorestack/protobuf/Schema;I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move v5, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v3, v1

    move v13, v5

    move v6, v14

    move-object v8, v15

    move/from16 v5, v21

    const/4 v10, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_19

    :cond_32b
    move-object v15, v4

    move v4, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v12, v14

    move-object/from16 v19, v15

    const v15, 0xfffff

    const/16 v20, -0x1

    goto/16 :goto_3d4

    :cond_33b
    move-object v15, v4

    move v4, v10

    move v5, v13

    const/16 v1, 0x31

    if-gt v3, v1, :cond_38a

    move v1, v12

    move-wide v12, v8

    int-to-long v9, v6

    move-object/from16 v2, p2

    move/from16 v18, v1

    move/from16 v17, v11

    move v8, v14

    move-object/from16 v19, v15

    move/from16 v6, v21

    const v15, 0xfffff

    const/16 v20, -0x1

    move-object/from16 v1, p1

    move-object/from16 v14, p6

    move v11, v3

    move v3, v4

    move/from16 v4, p4

    .line 5098
    invoke-virtual/range {v0 .. v14}, Lcom/explorestack/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move v4, v3

    move v13, v5

    move v12, v8

    if-eq v7, v4, :cond_37e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v3, v7

    move v6, v12

    move/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v8, v19

    move/from16 v10, v20

    move/from16 v5, v21

    move-object/from16 v7, p6

    goto/16 :goto_19

    :cond_37e
    move-object/from16 v8, p0

    move/from16 v10, p5

    move-object/from16 v9, p6

    move v2, v7

    :goto_385
    move v5, v13

    :goto_386
    move/from16 v11, v17

    goto/16 :goto_403

    :cond_38a
    move v13, v5

    move/from16 v17, v11

    move/from16 v18, v12

    move v12, v14

    move-object/from16 v19, v15

    const v15, 0xfffff

    const/16 v20, -0x1

    move-wide v10, v8

    move v9, v3

    const/16 v0, 0x32

    if-ne v9, v0, :cond_3dc

    const/4 v2, 0x2

    if-ne v7, v2, :cond_3d4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p6

    move v3, v4

    move-wide v6, v10

    move v5, v12

    move/from16 v4, p4

    .line 5117
    invoke-virtual/range {v0 .. v8}, Lcom/explorestack/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    move v4, v3

    if-eq v6, v4, :cond_3cc

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move v3, v6

    :goto_3bf
    move v6, v12

    move/from16 v11, v17

    :goto_3c2
    move/from16 v12, v18

    move-object/from16 v8, v19

    move/from16 v10, v20

    move/from16 v5, v21

    goto/16 :goto_19

    :cond_3cc
    move-object/from16 v8, p0

    move/from16 v10, p5

    move-object/from16 v9, p6

    move v2, v6

    goto :goto_385

    :cond_3d4
    :goto_3d4
    move-object/from16 v8, p0

    move/from16 v10, p5

    move-object/from16 v9, p6

    move v2, v4

    goto :goto_385

    :cond_3dc
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move v8, v6

    move v5, v13

    move/from16 v6, v21

    move/from16 v4, p4

    move-object/from16 v13, p6

    .line 5125
    invoke-virtual/range {v0 .. v13}, Lcom/explorestack/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move-object v8, v0

    move v4, v3

    move-object v9, v13

    if-eq v7, v4, :cond_3ff

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v13, v5

    move v3, v7

    move-object v0, v8

    move-object v7, v9

    goto :goto_3bf

    :cond_3ff
    move/from16 v10, p5

    move v2, v7

    goto :goto_386

    :goto_403
    if-ne v5, v10, :cond_410

    if-eqz v10, :cond_410

    move-object/from16 v6, p1

    move/from16 v4, p4

    move v3, v2

    move v13, v5

    move/from16 v12, v18

    goto :goto_45c

    .line 5147
    :cond_410
    iget-boolean v0, v8, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v0, :cond_432

    iget-object v0, v9, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/explorestack/protobuf/ExtensionRegistryLite;

    .line 5148
    invoke-static {}, Lcom/explorestack/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/explorestack/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_432

    move v0, v5

    .line 5149
    iget-object v5, v8, Lcom/explorestack/protobuf/MessageSchema;->defaultInstance:Lcom/explorestack/protobuf/MessageLite;

    iget-object v6, v8, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/UnknownFieldSchema;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v6, v4

    move/from16 v4, p4

    :goto_42f
    move v5, v0

    move v3, v2

    goto :goto_445

    :cond_432
    move-object/from16 v6, p1

    .line 5155
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v0, v5

    move-object/from16 v5, p6

    .line 5154
    invoke-static/range {v0 .. v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v4, v3

    goto :goto_42f

    :goto_445
    move-object/from16 v2, p2

    move-object/from16 v7, p6

    move v13, v5

    move-object v1, v6

    move-object v0, v8

    move v6, v12

    goto/16 :goto_3c2

    :cond_44f
    move/from16 v10, p5

    move-object v6, v1

    move-object/from16 v19, v8

    move/from16 v17, v11

    move/from16 v18, v12

    const v15, 0xfffff

    move-object v8, v0

    :goto_45c
    if-eq v11, v15, :cond_464

    int-to-long v0, v11

    move-object/from16 v15, v19

    .line 5159
    invoke-virtual {v15, v6, v0, v1, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 5162
    :cond_464
    iget v0, v8, Lcom/explorestack/protobuf/MessageSchema;->checkInitializedCount:I

    const/4 v1, 0x0

    :goto_467
    iget v2, v8, Lcom/explorestack/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    if-ge v0, v2, :cond_47a

    .line 5163
    iget-object v2, v8, Lcom/explorestack/protobuf/MessageSchema;->intArray:[I

    aget v2, v2, v0

    iget-object v5, v8, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    .line 5164
    invoke-virtual {v8, v6, v2, v1, v5}, Lcom/explorestack/protobuf/MessageSchema;->filterMapUnknownEnumValues(Ljava/lang/Object;ILjava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    add-int/lit8 v0, v0, 0x1

    goto :goto_467

    :cond_47a
    if-eqz v1, :cond_481

    .line 5171
    iget-object v0, v8, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    .line 5172
    invoke-virtual {v0, v6, v1}, Lcom/explorestack/protobuf/UnknownFieldSchema;->setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_481
    if-nez v10, :cond_48b

    if-ne v3, v4, :cond_486

    goto :goto_48f

    .line 5176
    :cond_486
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_48b
    if-gt v3, v4, :cond_490

    if-ne v13, v10, :cond_490

    :goto_48f
    return v3

    .line 5180
    :cond_490
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_496
    .packed-switch 0x0
        :pswitch_2ad
        :pswitch_28b
        :pswitch_25e
        :pswitch_25e
        :pswitch_246
        :pswitch_224
        :pswitch_20c
        :pswitch_1ea
        :pswitch_1bf
        :pswitch_192
        :pswitch_17b
        :pswitch_246
        :pswitch_14b
        :pswitch_20c
        :pswitch_224
        :pswitch_128
        :pswitch_f0
        :pswitch_a5
    .end packed-switch
.end method

.method public final parseProto3Message(Ljava/lang/Object;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    .line 5189
    sget-object v2, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v9, -0x1

    move/from16 v3, p3

    move v4, v9

    move/from16 v5, v16

    move v11, v5

    const v10, 0xfffff

    :goto_18
    if-ge v3, v8, :cond_310

    add-int/lit8 v6, v3, 0x1

    .line 5196
    aget-byte v3, v7, v3

    if-gez v3, :cond_26

    .line 5198
    invoke-static {v3, v7, v6, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    .line 5199
    iget v3, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    :cond_26
    move v12, v6

    ushr-int/lit8 v14, v3, 0x3

    and-int/lit8 v6, v3, 0x7

    if-le v14, v4, :cond_34

    .line 5204
    div-int/lit8 v5, v5, 0x3

    invoke-virtual {v0, v14, v5}, Lcom/explorestack/protobuf/MessageSchema;->positionForFieldNumber(II)I

    move-result v4

    goto :goto_38

    .line 5206
    :cond_34
    invoke-virtual {v0, v14}, Lcom/explorestack/protobuf/MessageSchema;->positionForFieldNumber(I)I

    move-result v4

    :goto_38
    if-ne v4, v9, :cond_47

    move-object v8, v1

    move-object/from16 v19, v2

    move/from16 v18, v3

    move/from16 v17, v9

    move v2, v12

    move v6, v14

    move/from16 v12, v16

    goto/16 :goto_2ef

    .line 5213
    :cond_47
    iget-object v5, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v17, v4, 0x1

    aget v5, v5, v17

    .line 5214
    invoke-static {v5}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v9

    move/from16 v18, v3

    move/from16 v19, v4

    .line 5215
    invoke-static {v5}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v3

    const v20, 0xfffff

    const/16 v15, 0x11

    move-wide/from16 v21, v3

    if-gt v9, v15, :cond_1e4

    .line 5218
    iget-object v4, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v15, v19, 0x2

    aget v4, v4, v15

    ushr-int/lit8 v15, v4, 0x14

    const/4 v3, 0x1

    shl-int v15, v3, v15

    and-int v4, v4, v20

    if-eq v4, v10, :cond_88

    move/from16 v3, v20

    if-eq v10, v3, :cond_80

    move/from16 v23, v4

    int-to-long v3, v10

    .line 5228
    invoke-virtual {v2, v1, v3, v4, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, v23

    const v3, 0xfffff

    :cond_80
    if-eq v4, v3, :cond_87

    int-to-long v10, v4

    .line 5231
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    :cond_87
    move v10, v4

    :cond_88
    const/4 v3, 0x5

    packed-switch v9, :pswitch_data_32c

    goto/16 :goto_1d8

    :pswitch_8e
    if-nez v6, :cond_1d8

    .line 5351
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v9

    .line 5352
    iget-wide v3, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    .line 5353
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v5

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v12, v19

    move-wide/from16 v3, v21

    .line 5352
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    or-int/2addr v11, v15

    move v3, v9

    move v5, v12

    :goto_ac
    move v4, v14

    :goto_ad
    const/4 v9, -0x1

    goto/16 :goto_18

    :pswitch_b0
    move/from16 v9, v19

    move-wide/from16 v3, v21

    if-nez v6, :cond_c7

    .line 5342
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5343
    iget v6, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    .line 5344
    invoke-static {v6}, Lcom/explorestack/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v6

    .line 5343
    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c3
    or-int/2addr v11, v15

    :goto_c4
    move v3, v5

    :goto_c5
    move v5, v9

    goto :goto_ac

    :cond_c7
    move/from16 v19, v9

    goto/16 :goto_1d8

    :pswitch_cb
    move/from16 v9, v19

    move-wide/from16 v3, v21

    if-nez v6, :cond_c7

    .line 5334
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5335
    iget v6, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c3

    :pswitch_db
    move/from16 v9, v19

    move-wide/from16 v3, v21

    const/4 v5, 0x2

    if-ne v6, v5, :cond_c7

    .line 5326
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeBytes([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5327
    iget-object v6, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c3

    :pswitch_ec
    move/from16 v9, v19

    move-wide/from16 v3, v21

    const/4 v5, 0x2

    if-ne v6, v5, :cond_c7

    .line 5312
    invoke-virtual {v0, v9}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v5

    .line 5311
    invoke-static {v5, v7, v12, v8, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageField(Lcom/explorestack/protobuf/Schema;[BIILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5313
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_107

    .line 5315
    iget-object v6, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c3

    .line 5317
    :cond_107
    iget-object v12, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 5318
    invoke-static {v6, v12}, Lcom/explorestack/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 5317
    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c3

    :pswitch_111
    move/from16 v9, v19

    move-wide/from16 v3, v21

    const/4 v8, 0x2

    if-ne v6, v8, :cond_c7

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-nez v5, :cond_122

    .line 5299
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeString([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    goto :goto_126

    .line 5301
    :cond_122
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeStringRequireUtf8([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5303
    :goto_126
    iget-object v6, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_12b
    or-int/2addr v11, v15

    move/from16 v8, p4

    goto :goto_c4

    :pswitch_12f
    move/from16 v9, v19

    move-wide/from16 v3, v21

    if-nez v6, :cond_c7

    .line 5290
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    move/from16 p3, v5

    .line 5291
    iget-wide v5, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v18, 0x0

    cmp-long v5, v5, v18

    if-eqz v5, :cond_145

    const/4 v5, 0x1

    goto :goto_147

    :cond_145
    move/from16 v5, v16

    :goto_147
    invoke-static {v1, v3, v4, v5}, Lcom/explorestack/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    or-int/2addr v11, v15

    move/from16 v3, p3

    :goto_14d
    move/from16 v8, p4

    goto/16 :goto_c5

    :pswitch_151
    move/from16 v9, v19

    move-wide/from16 v4, v21

    if-ne v6, v3, :cond_c7

    .line 5282
    invoke-static {v7, v12}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v3

    invoke-virtual {v2, v1, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_15e
    add-int/lit8 v3, v12, 0x4

    :goto_160
    or-int/2addr v11, v15

    goto :goto_14d

    :pswitch_162
    move/from16 v9, v19

    move-wide/from16 v4, v21

    const/4 v3, 0x1

    if-ne v6, v3, :cond_c7

    move-wide v3, v4

    .line 5273
    invoke-static {v7, v12}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v5

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    add-int/lit8 v3, v12, 0x8

    goto :goto_160

    :pswitch_17e
    move/from16 v9, v19

    move-wide/from16 v3, v21

    if-nez v6, :cond_c7

    .line 5264
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    .line 5265
    iget v6, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_12b

    :pswitch_18e
    move/from16 v9, v19

    move-wide/from16 v3, v21

    if-nez v6, :cond_c7

    .line 5255
    invoke-static {v7, v12, v13}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64([BILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v8

    .line 5256
    iget-wide v5, v13, Lcom/explorestack/protobuf/ArrayDecoders$Registers;->long1:J

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    or-int/2addr v11, v15

    move v3, v8

    move v5, v9

    move v4, v14

    const/4 v9, -0x1

    :goto_1ac
    move/from16 v8, p4

    goto/16 :goto_18

    :pswitch_1b0
    move/from16 v9, v19

    move-wide/from16 v4, v21

    if-ne v6, v3, :cond_c7

    .line 5246
    invoke-static {v7, v12}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v3

    invoke-static {v1, v4, v5, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    goto :goto_15e

    :pswitch_1be
    move/from16 v9, v19

    move-wide/from16 v4, v21

    const/4 v3, 0x1

    if-ne v6, v3, :cond_c7

    move/from16 v19, v9

    .line 5238
    invoke-static {v7, v12}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v8

    invoke-static {v1, v4, v5, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    add-int/lit8 v3, v12, 0x8

    or-int/2addr v11, v15

    move/from16 v8, p4

    move v4, v14

    move/from16 v5, v19

    goto/16 :goto_ad

    :cond_1d8
    :goto_1d8
    move/from16 v6, v19

    move-object/from16 v19, v2

    move v2, v12

    move v12, v6

    move-object v8, v1

    move v6, v14

    const/16 v17, -0x1

    goto/16 :goto_2ef

    :cond_1e4
    move/from16 v8, v19

    move-wide/from16 v3, v21

    const/16 v15, 0x1b

    if-ne v9, v15, :cond_236

    const/4 v15, 0x2

    if-ne v6, v15, :cond_22a

    .line 5364
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Internal$ProtobufList;

    .line 5365
    invoke-interface {v5}, Lcom/explorestack/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v6

    if-nez v6, :cond_20d

    .line 5366
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_204

    const/16 v6, 0xa

    goto :goto_206

    :cond_204
    mul-int/lit8 v6, v6, 0x2

    .line 5368
    :goto_206
    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v5

    .line 5370
    invoke-virtual {v2, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_20d
    move-object v6, v5

    .line 5374
    invoke-virtual {v0, v8}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v1

    move/from16 v5, p4

    move-object v15, v2

    move-object v3, v7

    move v4, v12

    move-object v7, v13

    move/from16 v2, v18

    .line 5373
    invoke-static/range {v1 .. v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageList(Lcom/explorestack/protobuf/Schema;I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v3, v1

    move v5, v8

    move v4, v14

    move-object v2, v15

    const/4 v9, -0x1

    move-object/from16 v1, p1

    goto :goto_1ac

    :cond_22a
    move-object/from16 v19, v2

    move v15, v10

    move/from16 v24, v11

    move v3, v12

    move v9, v14

    const/16 v17, -0x1

    move v12, v8

    goto/16 :goto_2be

    :cond_236
    move-object v15, v2

    move v1, v12

    const/16 v2, 0x31

    if-gt v9, v2, :cond_27c

    move v2, v10

    move v7, v11

    move v11, v9

    int-to-long v9, v5

    move-wide v12, v3

    move/from16 v24, v7

    move-object/from16 v19, v15

    move/from16 v5, v18

    const/16 v17, -0x1

    move/from16 v4, p4

    move v3, v1

    move v15, v2

    move v7, v6

    move v6, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v14, p5

    .line 5381
    invoke-virtual/range {v0 .. v14}, Lcom/explorestack/protobuf/MessageSchema;->parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move v9, v6

    move v12, v8

    if-eq v7, v3, :cond_273

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p4

    move-object/from16 v13, p5

    move v3, v7

    move v4, v9

    move v5, v12

    move v10, v15

    move/from16 v9, v17

    move-object/from16 v2, v19

    move/from16 v11, v24

    move-object/from16 v7, p2

    goto/16 :goto_18

    :cond_273
    move-object/from16 v8, p1

    move v2, v7

    :goto_276
    move v6, v9

    :goto_277
    move v10, v15

    move/from16 v11, v24

    goto/16 :goto_2ef

    :cond_27c
    move-wide/from16 v21, v3

    move v7, v6

    move v12, v8

    move/from16 v24, v11

    move-object/from16 v19, v15

    const/16 v17, -0x1

    move v3, v1

    move v11, v9

    move v15, v10

    move v9, v14

    const/16 v0, 0x32

    if-ne v11, v0, :cond_2c2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2be

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v8, p5

    move v5, v12

    move-wide/from16 v6, v21

    .line 5400
    invoke-virtual/range {v0 .. v8}, Lcom/explorestack/protobuf/MessageSchema;->parseMapField(Ljava/lang/Object;[BIIIJLcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    if-eq v6, v3, :cond_2ba

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    move v3, v6

    move v4, v9

    move v5, v12

    move v10, v15

    move/from16 v9, v17

    move-object/from16 v2, v19

    move/from16 v11, v24

    goto/16 :goto_18

    :cond_2ba
    move-object/from16 v8, p1

    move v2, v6

    goto :goto_276

    :cond_2be
    :goto_2be
    move-object/from16 v8, p1

    move v2, v3

    goto :goto_276

    :cond_2c2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v13, p5

    move v8, v5

    move v6, v9

    move v9, v11

    move/from16 v5, v18

    move-wide/from16 v10, v21

    .line 5408
    invoke-virtual/range {v0 .. v13}, Lcom/explorestack/protobuf/MessageSchema;->parseOneofField(Ljava/lang/Object;[BIIIIIIIJILcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move-object v8, v1

    if-eq v7, v3, :cond_2ed

    move-object/from16 v0, p0

    move-object/from16 v13, p5

    move v4, v6

    move v3, v7

    move-object v1, v8

    move v5, v12

    move v10, v15

    move/from16 v9, v17

    move-object/from16 v2, v19

    move/from16 v11, v24

    move-object/from16 v7, p2

    goto/16 :goto_1ac

    :cond_2ed
    move v2, v7

    goto :goto_277

    .line 5427
    :goto_2ef
    invoke-static {v8}, Lcom/explorestack/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    move/from16 v0, v18

    .line 5426
    invoke-static/range {v0 .. v5}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/explorestack/protobuf/UnknownFieldSetLite;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v4, v6

    move-object v1, v8

    move v5, v12

    move/from16 v9, v17

    move-object/from16 v2, v19

    move v8, v3

    move v3, v0

    move-object/from16 v0, p0

    goto/16 :goto_18

    :cond_310
    move-object/from16 v19, v2

    move v4, v8

    move v15, v10

    move/from16 v24, v11

    const v0, 0xfffff

    move-object v8, v1

    if-eq v15, v0, :cond_324

    int-to-long v0, v15

    move-object/from16 v2, v19

    move/from16 v7, v24

    .line 5430
    invoke-virtual {v2, v8, v0, v1, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_324
    if-ne v3, v4, :cond_327

    return v3

    .line 5433
    :cond_327
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_32c
    .packed-switch 0x0
        :pswitch_1be
        :pswitch_1b0
        :pswitch_18e
        :pswitch_18e
        :pswitch_17e
        :pswitch_162
        :pswitch_151
        :pswitch_12f
        :pswitch_111
        :pswitch_ec
        :pswitch_db
        :pswitch_17e
        :pswitch_cb
        :pswitch_151
        :pswitch_162
        :pswitch_b0
        :pswitch_8e
    .end packed-switch
.end method

.method public final parseRepeatedField(Ljava/lang/Object;[BIIIIIIJIJLcom/explorestack/protobuf/ArrayDecoders$Registers;)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/explorestack/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v1, p8

    move-wide/from16 v2, p12

    .line 4497
    sget-object v4, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Internal$ProtobufList;

    .line 4498
    invoke-interface {v5}, Lcom/explorestack/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_24

    .line 4499
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1c

    const/16 v6, 0xa

    goto :goto_1d

    :cond_1c
    mul-int/2addr v6, v7

    .line 4501
    :goto_1d
    invoke-interface {v5, v6}, Lcom/explorestack/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;

    move-result-object v5

    .line 4503
    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_24
    move-object v6, v5

    const/4 v2, 0x1

    const/4 v3, 0x5

    packed-switch p11, :pswitch_data_1b0

    goto/16 :goto_1af

    :pswitch_2c
    const/4 p1, 0x3

    if-ne p7, p1, :cond_1af

    .line 4645
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object p6

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move p7, p5

    move-object/from16 p12, p14

    move-object/from16 p11, v6

    .line 4644
    invoke-static/range {p6 .. p12}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeGroupList(Lcom/explorestack/protobuf/Schema;I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_43
    move-object/from16 p1, p14

    if-ne p7, v7, :cond_4c

    .line 4636
    invoke-static {p2, p3, v6, p1}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_4c
    if-nez p7, :cond_1af

    move-object/from16 p11, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v6

    .line 4638
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeSInt64List(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_5d
    move-object/from16 p1, p14

    if-ne p7, v7, :cond_66

    .line 4628
    invoke-static {p2, p3, v6, p1}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_66
    if-nez p7, :cond_1af

    move-object/from16 p11, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v6

    .line 4630
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeSInt32List(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_77
    move-object/from16 v2, p14

    if-ne p7, v7, :cond_80

    .line 4600
    invoke-static {p2, p3, v6, v2}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_8b

    :cond_80
    if-nez p7, :cond_1af

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, v2

    move v2, p5

    .line 4602
    invoke-static/range {v2 .. v7}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 4606
    :goto_8b
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    iget-object p3, p1, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    .line 4607
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSetLite;

    move-result-object p4

    if-ne p3, p4, :cond_96

    const/4 p3, 0x0

    .line 4618
    :cond_96
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/MessageSchema;->getEnumFieldVerifier(I)Lcom/explorestack/protobuf/Internal$EnumVerifier;

    move-result-object p4

    iget-object p5, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    .line 4615
    invoke-static {p6, v6, p4, p3, p5}, Lcom/explorestack/protobuf/SchemaUtil;->filterUnknownEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/explorestack/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/explorestack/protobuf/UnknownFieldSetLite;

    if-eqz p3, :cond_a6

    .line 4622
    iput-object p3, p1, Lcom/explorestack/protobuf/GeneratedMessageLite;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSetLite;

    :cond_a6
    return p2

    :pswitch_a7
    if-ne p7, v7, :cond_1af

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, p14

    move-object/from16 p10, v6

    .line 4594
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeBytesList(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_b8
    if-ne p7, v7, :cond_1af

    .line 4583
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object p6

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move p7, p5

    move-object/from16 p12, p14

    move-object/from16 p11, v6

    .line 4582
    invoke-static/range {p6 .. p12}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeMessageList(Lcom/explorestack/protobuf/Schema;I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_ce
    if-ne p7, v7, :cond_1af

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_ea

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, p14

    move-object/from16 p10, v6

    .line 4573
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeStringList(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_ea
    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, p14

    move-object/from16 p10, v6

    .line 4575
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeStringListRequireUtf8(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_f9
    move-object/from16 p1, p14

    if-ne p7, v7, :cond_102

    .line 4565
    invoke-static {p2, p3, v6, p1}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_102
    if-nez p7, :cond_1af

    move-object/from16 p11, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v6

    .line 4567
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeBoolList(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_113
    move-object/from16 v2, p14

    if-ne p7, v7, :cond_11c

    .line 4557
    invoke-static {p2, p3, v6, v2}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_11c
    if-ne p7, v3, :cond_1af

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v2

    move-object/from16 p10, v6

    .line 4559
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed32List(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_12d
    move-object/from16 p1, p14

    if-ne p7, v7, :cond_136

    .line 4547
    invoke-static {p2, p3, v6, p1}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_136
    if-ne p7, v2, :cond_1af

    move-object/from16 p11, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v6

    .line 4549
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFixed64List(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_147
    move-object/from16 p1, p14

    if-ne p7, v7, :cond_150

    .line 4537
    invoke-static {p2, p3, v6, p1}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_150
    if-nez p7, :cond_1af

    move-object/from16 p11, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v6

    .line 4539
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint32List(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_161
    move-object/from16 p1, p14

    if-ne p7, v7, :cond_16a

    .line 4527
    invoke-static {p2, p3, v6, p1}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_16a
    if-nez p7, :cond_1af

    move-object/from16 p11, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v6

    .line 4529
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeVarint64List(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_17b
    move-object/from16 v2, p14

    if-ne p7, v7, :cond_184

    .line 4517
    invoke-static {p2, p3, v6, v2}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_184
    if-ne p7, v3, :cond_1af

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p11, v2

    move-object/from16 p10, v6

    .line 4519
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeFloatList(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :pswitch_195
    move-object/from16 p1, p14

    if-ne p7, v7, :cond_19e

    .line 4509
    invoke-static {p2, p3, v6, p1}, Lcom/explorestack/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_19e
    if-ne p7, v2, :cond_1af

    move-object/from16 p11, p1

    move-object p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move p6, p5

    move-object/from16 p10, v6

    .line 4511
    invoke-static/range {p6 .. p11}, Lcom/explorestack/protobuf/ArrayDecoders;->decodeDoubleList(I[BIILcom/explorestack/protobuf/Internal$ProtobufList;Lcom/explorestack/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    return p1

    :cond_1af
    :goto_1af
    return p3

    :pswitch_data_1b0
    .packed-switch 0x12
        :pswitch_195
        :pswitch_17b
        :pswitch_161
        :pswitch_161
        :pswitch_147
        :pswitch_12d
        :pswitch_113
        :pswitch_f9
        :pswitch_ce
        :pswitch_b8
        :pswitch_a7
        :pswitch_147
        :pswitch_77
        :pswitch_113
        :pswitch_12d
        :pswitch_5d
        :pswitch_43
        :pswitch_195
        :pswitch_17b
        :pswitch_161
        :pswitch_161
        :pswitch_147
        :pswitch_12d
        :pswitch_113
        :pswitch_f9
        :pswitch_147
        :pswitch_77
        :pswitch_113
        :pswitch_12d
        :pswitch_5d
        :pswitch_43
        :pswitch_2c
    .end packed-switch
.end method

.method public final positionForFieldNumber(I)I
    .registers 3

    .line 5892
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    .line 5893
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method public final positionForFieldNumber(II)I
    .registers 4

    .line 5899
    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->minFieldNumber:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/explorestack/protobuf/MessageSchema;->maxFieldNumber:I

    if-gt p1, v0, :cond_d

    .line 5900
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MessageSchema;->slowPositionForFieldNumber(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public final presenceMaskAndOffsetAt(I)I
    .registers 3

    .line 5730
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final readGroupList(Ljava/lang/Object;JLcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/Schema<",
            "TE;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5717
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 5718
    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 5717
    invoke-interface {p4, p1, p5, p6}, Lcom/explorestack/protobuf/Reader;->readGroupList(Ljava/util/List;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final readMessageList(Ljava/lang/Object;ILcom/explorestack/protobuf/Reader;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/explorestack/protobuf/Reader;",
            "Lcom/explorestack/protobuf/Schema<",
            "TE;>;",
            "Lcom/explorestack/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5705
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    .line 5706
    iget-object p2, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 5707
    invoke-virtual {p2, p1, v0, v1}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 5706
    invoke-interface {p3, p1, p4, p5}, Lcom/explorestack/protobuf/Reader;->readMessageList(Ljava/util/List;Lcom/explorestack/protobuf/Schema;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final readString(Ljava/lang/Object;ILcom/explorestack/protobuf/Reader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5675
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5677
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/explorestack/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 5678
    :cond_12
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->lite:Z

    if-eqz v0, :cond_22

    .line 5681
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/explorestack/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 5685
    :cond_22
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/explorestack/protobuf/Reader;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final readStringList(Ljava/lang/Object;ILcom/explorestack/protobuf/Reader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5690
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5691
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    .line 5692
    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 5691
    invoke-interface {p3, p1}, Lcom/explorestack/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    return-void

    .line 5694
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->listFieldSchema:Lcom/explorestack/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/explorestack/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/explorestack/protobuf/Reader;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method public final setFieldPresent(Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 5863
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    .line 5872
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 5869
    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final setOneofPresent(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 5887
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageSchema;->presenceMaskAndOffsetAt(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 5888
    invoke-static {p1, v0, v1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final slowPositionForFieldNumber(II)I
    .registers 7

    .line 5906
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_20

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 5911
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v3

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1c

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_7

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_7

    :cond_20
    const/4 p1, -0x1

    return p1
.end method

.method public final typeAndOffsetAt(I)I
    .registers 3

    .line 5726
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2557
    iget-boolean v3, v0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    if-eqz v3, :cond_21

    .line 2558
    iget-object v3, v0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v3, v1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v3

    .line 2559
    invoke-virtual {v3}, Lcom/explorestack/protobuf/FieldSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    .line 2560
    invoke-virtual {v3}, Lcom/explorestack/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2561
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2566
    :goto_23
    iget-object v6, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v6, v6

    .line 2567
    sget-object v7, Lcom/explorestack/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_2d
    if-ge v10, v6, :cond_48c

    .line 2569
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v13

    .line 2570
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v14

    .line 2571
    invoke-static {v13}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v15

    const/16 v4, 0x11

    const v16, 0xfffff

    const/4 v8, 0x1

    if-gt v15, v4, :cond_58

    .line 2576
    iget-object v4, v0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    add-int/lit8 v17, v10, 0x2

    aget v4, v4, v17

    and-int v9, v4, v16

    if-eq v9, v11, :cond_53

    int-to-long v11, v9

    .line 2580
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_53
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v8, v4

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    if-eqz v5, :cond_77

    .line 2586
    iget-object v9, v0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v9, v5}, Lcom/explorestack/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_77

    .line 2587
    iget-object v9, v0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v9, v2, v5}, Lcom/explorestack/protobuf/ExtensionSchema;->serializeExtension(Lcom/explorestack/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2588
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_59

    :cond_75
    const/4 v5, 0x0

    goto :goto_59

    .line 2590
    :cond_77
    invoke-static {v13}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_4aa

    :cond_7e
    :goto_7e
    const/4 v13, 0x0

    goto/16 :goto_488

    .line 2912
    :pswitch_81
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2914
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    .line 2913
    invoke-interface {v2, v14, v4, v8}, Lcom/explorestack/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto :goto_7e

    .line 2907
    :pswitch_93
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2908
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSInt64(IJ)V

    goto :goto_7e

    .line 2902
    :pswitch_a1
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2903
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeSInt32(II)V

    goto :goto_7e

    .line 2897
    :pswitch_af
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2898
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSFixed64(IJ)V

    goto :goto_7e

    .line 2892
    :pswitch_bd
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2893
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeSFixed32(II)V

    goto :goto_7e

    .line 2887
    :pswitch_cb
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2888
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeEnum(II)V

    goto :goto_7e

    .line 2882
    :pswitch_d9
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2883
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeUInt32(II)V

    goto :goto_7e

    .line 2877
    :pswitch_e7
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2878
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/ByteString;

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto :goto_7e

    .line 2871
    :pswitch_f7
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2872
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2873
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/explorestack/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_7e

    .line 2866
    :pswitch_10a
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2867
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lcom/explorestack/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_7e

    .line 2861
    :pswitch_119
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2862
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_7e

    .line 2856
    :pswitch_128
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2857
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_7e

    .line 2851
    :pswitch_137
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2852
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_7e

    .line 2846
    :pswitch_146
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2847
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_7e

    .line 2841
    :pswitch_155
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2842
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_7e

    .line 2836
    :pswitch_164
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2837
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_7e

    .line 2831
    :pswitch_173
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2832
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_7e

    .line 2826
    :pswitch_182
    invoke-virtual {v0, v1, v14, v10}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2827
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_7e

    .line 2823
    :pswitch_191
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v14, v4, v10}, Lcom/explorestack/protobuf/MessageSchema;->writeMapHelper(Lcom/explorestack/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_7e

    .line 2816
    :pswitch_19a
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 2817
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2819
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v9

    .line 2815
    invoke-static {v4, v8, v2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_7e

    .line 2812
    :pswitch_1ad
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    .line 2811
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1bd
    const/4 v13, 0x1

    .line 2808
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2807
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1cd
    const/4 v13, 0x1

    .line 2804
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2803
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1dd
    const/4 v13, 0x1

    .line 2800
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2799
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1ed
    const/4 v13, 0x1

    .line 2796
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2795
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_1fd
    const/4 v13, 0x1

    .line 2792
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2791
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_20d
    const/4 v13, 0x1

    .line 2788
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2787
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_21d
    const/4 v13, 0x1

    .line 2783
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2782
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_22d
    const/4 v13, 0x1

    .line 2779
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2778
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_23d
    const/4 v13, 0x1

    .line 2775
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2774
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_24d
    const/4 v13, 0x1

    .line 2771
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2770
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_25d
    const/4 v13, 0x1

    .line 2767
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2766
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_26d
    const/4 v13, 0x1

    .line 2763
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2762
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    :pswitch_27d
    const/4 v13, 0x1

    .line 2759
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2758
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_7e

    .line 2754
    :pswitch_28d
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 2753
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_29d
    const/4 v13, 0x0

    .line 2750
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2749
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2ad
    const/4 v13, 0x0

    .line 2746
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2745
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2bd
    const/4 v13, 0x0

    .line 2742
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2741
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2cd
    const/4 v13, 0x0

    .line 2738
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2737
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_2dd
    const/4 v13, 0x0

    .line 2734
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2733
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    .line 2730
    :pswitch_2ed
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2729
    invoke-static {v4, v8, v2}, Lcom/explorestack/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_7e

    .line 2723
    :pswitch_2fc
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    .line 2724
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2726
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v9

    .line 2722
    invoke-static {v4, v8, v2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_7e

    .line 2719
    :pswitch_30f
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2718
    invoke-static {v4, v8, v2}, Lcom/explorestack/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_7e

    .line 2715
    :pswitch_31e
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    .line 2714
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_32e
    const/4 v13, 0x0

    .line 2711
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2710
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_33e
    const/4 v13, 0x0

    .line 2707
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2706
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_34e
    const/4 v13, 0x0

    .line 2703
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2702
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_35e
    const/4 v13, 0x0

    .line 2699
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2698
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_36e
    const/4 v13, 0x0

    .line 2695
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2694
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_37e
    const/4 v13, 0x0

    .line 2691
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2690
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_38e
    const/4 v13, 0x0

    .line 2687
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2686
    invoke-static {v4, v8, v2, v13}, Lcom/explorestack/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_488

    :pswitch_39e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2682
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    .line 2681
    invoke-interface {v2, v14, v4, v8}, Lcom/explorestack/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_488

    :pswitch_3af
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2676
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_488

    :pswitch_3bc
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2671
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_488

    :pswitch_3c9
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2666
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_488

    :pswitch_3d6
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2661
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_488

    :pswitch_3e3
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2656
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_488

    :pswitch_3f0
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2651
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_488

    :pswitch_3fd
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2646
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/ByteString;

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto/16 :goto_488

    :pswitch_40c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2640
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2641
    invoke-virtual {v0, v10}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/explorestack/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_488

    :pswitch_41d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2635
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lcom/explorestack/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    goto :goto_488

    :pswitch_429
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2630
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeBool(IZ)V

    goto :goto_488

    :pswitch_435
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2625
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeFixed32(II)V

    goto :goto_488

    :pswitch_441
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2620
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_488

    :pswitch_44d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2615
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeInt32(II)V

    goto :goto_488

    :pswitch_459
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2610
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_488

    :pswitch_465
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2605
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_488

    :pswitch_471
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2600
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/explorestack/protobuf/Writer;->writeFloat(IF)V

    goto :goto_488

    :pswitch_47d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_488

    .line 2595
    invoke-static {v1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeDouble(ID)V

    :cond_488
    :goto_488
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_2d

    :cond_48c
    :goto_48c
    if-eqz v5, :cond_4a3

    .line 2923
    iget-object v4, v0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v4, v2, v5}, Lcom/explorestack/protobuf/ExtensionSchema;->serializeExtension(Lcom/explorestack/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2924
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_48c

    :cond_4a1
    const/4 v5, 0x0

    goto :goto_48c

    .line 2926
    :cond_4a3
    iget-object v3, v0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, v3, v1, v2}, Lcom/explorestack/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void

    nop

    :pswitch_data_4aa
    .packed-switch 0x0
        :pswitch_47d
        :pswitch_471
        :pswitch_465
        :pswitch_459
        :pswitch_44d
        :pswitch_441
        :pswitch_435
        :pswitch_429
        :pswitch_41d
        :pswitch_40c
        :pswitch_3fd
        :pswitch_3f0
        :pswitch_3e3
        :pswitch_3d6
        :pswitch_3c9
        :pswitch_3bc
        :pswitch_3af
        :pswitch_39e
        :pswitch_38e
        :pswitch_37e
        :pswitch_36e
        :pswitch_35e
        :pswitch_34e
        :pswitch_33e
        :pswitch_32e
        :pswitch_31e
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2ed
        :pswitch_2dd
        :pswitch_2cd
        :pswitch_2bd
        :pswitch_2ad
        :pswitch_29d
        :pswitch_28d
        :pswitch_27d
        :pswitch_26d
        :pswitch_25d
        :pswitch_24d
        :pswitch_23d
        :pswitch_22d
        :pswitch_21d
        :pswitch_20d
        :pswitch_1fd
        :pswitch_1ed
        :pswitch_1dd
        :pswitch_1cd
        :pswitch_1bd
        :pswitch_1ad
        :pswitch_19a
        :pswitch_191
        :pswitch_182
        :pswitch_173
        :pswitch_164
        :pswitch_155
        :pswitch_146
        :pswitch_137
        :pswitch_128
        :pswitch_119
        :pswitch_10a
        :pswitch_f7
        :pswitch_e7
        :pswitch_d9
        :pswitch_cb
        :pswitch_bd
        :pswitch_af
        :pswitch_a1
        :pswitch_93
        :pswitch_81
    .end packed-switch
.end method

.method public final writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2933
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 2934
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    .line 2935
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2936
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2937
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1e

    :cond_1c
    move-object v0, v1

    move-object v2, v0

    .line 2940
    :goto_1e
    iget-object v3, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v3, :cond_586

    .line 2942
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v6

    .line 2943
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    :goto_2d
    if-eqz v2, :cond_4b

    .line 2946
    iget-object v8, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v8, v2}, Lcom/explorestack/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_4b

    .line 2947
    iget-object v8, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v8, p2, v2}, Lcom/explorestack/protobuf/ExtensionSchema;->serializeExtension(Lcom/explorestack/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 2948
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_49
    move-object v2, v1

    goto :goto_2d

    .line 2951
    :cond_4b
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_5a2

    goto/16 :goto_582

    .line 3363
    :pswitch_55
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3366
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3367
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    .line 3364
    invoke-interface {p2, v7, v6, v8}, Lcom/explorestack/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_582

    .line 3358
    :pswitch_6c
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3359
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_582

    .line 3353
    :pswitch_7f
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3354
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_582

    .line 3348
    :pswitch_92
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3349
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_582

    .line 3343
    :pswitch_a5
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3344
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_582

    .line 3338
    :pswitch_b8
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3339
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_582

    .line 3333
    :pswitch_cb
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3334
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_582

    .line 3327
    :pswitch_de
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3329
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/ByteString;

    .line 3328
    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto/16 :goto_582

    .line 3321
    :pswitch_f3
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3322
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3323
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/explorestack/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_582

    .line 3316
    :pswitch_10a
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3317
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_582

    .line 3311
    :pswitch_11d
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3312
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_582

    .line 3306
    :pswitch_130
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3307
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_582

    .line 3301
    :pswitch_143
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3302
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_582

    .line 3296
    :pswitch_156
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3297
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_582

    .line 3291
    :pswitch_169
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3292
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_582

    .line 3286
    :pswitch_17c
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3287
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_582

    .line 3281
    :pswitch_18f
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3282
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_582

    .line 3276
    :pswitch_1a2
    invoke-virtual {p0, p1, v7, v5}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3277
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_582

    .line 3273
    :pswitch_1b5
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p2, v7, v6, v5}, Lcom/explorestack/protobuf/MessageSchema;->writeMapHelper(Lcom/explorestack/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_582

    .line 3266
    :pswitch_1c2
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3267
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3269
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    .line 3265
    invoke-static {v7, v6, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_582

    .line 3259
    :pswitch_1d9
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3260
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3258
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3252
    :pswitch_1ec
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3253
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3251
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3245
    :pswitch_1ff
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3246
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3244
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3238
    :pswitch_212
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3239
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3237
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3231
    :pswitch_225
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3232
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3230
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3224
    :pswitch_238
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3225
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3223
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3217
    :pswitch_24b
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3218
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3216
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3209
    :pswitch_25e
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3210
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3208
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3202
    :pswitch_271
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3203
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3201
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3195
    :pswitch_284
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3196
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3194
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3188
    :pswitch_297
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3189
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3187
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3181
    :pswitch_2aa
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3182
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3180
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3174
    :pswitch_2bd
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3175
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3173
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3167
    :pswitch_2d0
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3168
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3166
    invoke-static {v7, v6, p2, v9}, Lcom/explorestack/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3159
    :pswitch_2e3
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3160
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3158
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3152
    :pswitch_2f6
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3153
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3151
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3145
    :pswitch_309
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3146
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3144
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3138
    :pswitch_31c
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3139
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3137
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3131
    :pswitch_32f
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3132
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3130
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3124
    :pswitch_342
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3125
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3123
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3118
    :pswitch_355
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3119
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3117
    invoke-static {v7, v6, p2}, Lcom/explorestack/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_582

    .line 3111
    :pswitch_368
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3112
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3114
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    .line 3110
    invoke-static {v7, v6, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_582

    .line 3105
    :pswitch_37f
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3106
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3104
    invoke-static {v7, v6, p2}, Lcom/explorestack/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_582

    .line 3098
    :pswitch_392
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3099
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3097
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3091
    :pswitch_3a5
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3092
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3090
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3084
    :pswitch_3b8
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3085
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3083
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3077
    :pswitch_3cb
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3078
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3076
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3070
    :pswitch_3de
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3071
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3069
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3063
    :pswitch_3f1
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3064
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3062
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3056
    :pswitch_404
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3057
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3055
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3049
    :pswitch_417
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v7

    .line 3050
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3048
    invoke-static {v7, v6, p2, v4}, Lcom/explorestack/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_582

    .line 3040
    :pswitch_42a
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3043
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3044
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    .line 3041
    invoke-interface {p2, v7, v6, v8}, Lcom/explorestack/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_582

    .line 3035
    :pswitch_441
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3036
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_582

    .line 3030
    :pswitch_454
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3031
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_582

    .line 3025
    :pswitch_467
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3026
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_582

    .line 3020
    :pswitch_47a
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3021
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_582

    .line 3015
    :pswitch_48d
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3016
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_582

    .line 3010
    :pswitch_4a0
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3011
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_582

    .line 3004
    :pswitch_4b3
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 3006
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/explorestack/protobuf/ByteString;

    .line 3005
    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto/16 :goto_582

    .line 2998
    :pswitch_4c8
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2999
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 3000
    invoke-virtual {p0, v5}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/explorestack/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_582

    .line 2993
    :pswitch_4df
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2994
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_582

    .line 2988
    :pswitch_4f2
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2989
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_582

    .line 2983
    :pswitch_505
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2984
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeFixed32(II)V

    goto :goto_582

    .line 2978
    :pswitch_517
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2979
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_582

    .line 2973
    :pswitch_529
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2974
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeInt32(II)V

    goto :goto_582

    .line 2968
    :pswitch_53b
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2969
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_582

    .line 2963
    :pswitch_54d
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2964
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_582

    .line 2958
    :pswitch_55f
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2959
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/explorestack/protobuf/Writer;->writeFloat(IF)V

    goto :goto_582

    .line 2953
    :pswitch_571
    invoke-virtual {p0, p1, v5}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 2954
    invoke-static {v6}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/explorestack/protobuf/Writer;->writeDouble(ID)V

    :cond_582
    :goto_582
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_23

    :cond_586
    :goto_586
    if-eqz v2, :cond_59c

    .line 3376
    iget-object v3, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v3, p2, v2}, Lcom/explorestack/protobuf/ExtensionSchema;->serializeExtension(Lcom/explorestack/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3377
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_586

    :cond_59a
    move-object v2, v1

    goto :goto_586

    .line 3379
    :cond_59c
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {p0, v0, p1, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void

    :pswitch_data_5a2
    .packed-switch 0x0
        :pswitch_571
        :pswitch_55f
        :pswitch_54d
        :pswitch_53b
        :pswitch_529
        :pswitch_517
        :pswitch_505
        :pswitch_4f2
        :pswitch_4df
        :pswitch_4c8
        :pswitch_4b3
        :pswitch_4a0
        :pswitch_48d
        :pswitch_47a
        :pswitch_467
        :pswitch_454
        :pswitch_441
        :pswitch_42a
        :pswitch_417
        :pswitch_404
        :pswitch_3f1
        :pswitch_3de
        :pswitch_3cb
        :pswitch_3b8
        :pswitch_3a5
        :pswitch_392
        :pswitch_37f
        :pswitch_368
        :pswitch_355
        :pswitch_342
        :pswitch_32f
        :pswitch_31c
        :pswitch_309
        :pswitch_2f6
        :pswitch_2e3
        :pswitch_2d0
        :pswitch_2bd
        :pswitch_2aa
        :pswitch_297
        :pswitch_284
        :pswitch_271
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_225
        :pswitch_212
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1b5
        :pswitch_1a2
        :pswitch_18f
        :pswitch_17c
        :pswitch_169
        :pswitch_156
        :pswitch_143
        :pswitch_130
        :pswitch_11d
        :pswitch_10a
        :pswitch_f3
        :pswitch_de
        :pswitch_cb
        :pswitch_b8
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_6c
        :pswitch_55
    .end packed-switch
.end method

.method public final writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3384
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->unknownFieldSchema:Lcom/explorestack/protobuf/UnknownFieldSchema;

    invoke-virtual {p0, v0, p1, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeUnknownInMessageTo(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    .line 3388
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->hasExtensions:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 3389
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/explorestack/protobuf/FieldSet;

    move-result-object v0

    .line 3390
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 3391
    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_23

    :cond_21
    move-object v0, v1

    move-object v2, v0

    .line 3396
    :goto_23
    iget-object v3, p0, Lcom/explorestack/protobuf/MessageSchema;->buffer:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    :goto_28
    if-ltz v3, :cond_58c

    .line 3397
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v4

    .line 3398
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    :goto_32
    if-eqz v2, :cond_50

    .line 3401
    iget-object v6, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v6, v2}, Lcom/explorestack/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_50

    .line 3402
    iget-object v6, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2, v2}, Lcom/explorestack/protobuf/ExtensionSchema;->serializeExtension(Lcom/explorestack/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3403
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_32

    :cond_4e
    move-object v2, v1

    goto :goto_32

    .line 3406
    :cond_50
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->type(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v6, :pswitch_data_5a4

    goto/16 :goto_588

    .line 3817
    :pswitch_5b
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3820
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3821
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 3818
    invoke-interface {p2, v5, v4, v6}, Lcom/explorestack/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_588

    .line 3812
    :pswitch_72
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3813
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_588

    .line 3807
    :pswitch_85
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3808
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_588

    .line 3802
    :pswitch_98
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3803
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_588

    .line 3797
    :pswitch_ab
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3798
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_588

    .line 3792
    :pswitch_be
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3793
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_588

    .line 3787
    :pswitch_d1
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3788
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_588

    .line 3781
    :pswitch_e4
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3783
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/ByteString;

    .line 3782
    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto/16 :goto_588

    .line 3775
    :pswitch_f9
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3776
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3777
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/explorestack/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_588

    .line 3770
    :pswitch_110
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3771
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_588

    .line 3765
    :pswitch_123
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3766
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_588

    .line 3760
    :pswitch_136
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3761
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_588

    .line 3755
    :pswitch_149
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3756
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_588

    .line 3750
    :pswitch_15c
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3751
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_588

    .line 3745
    :pswitch_16f
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3746
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_588

    .line 3740
    :pswitch_182
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3741
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_588

    .line 3735
    :pswitch_195
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3736
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_588

    .line 3730
    :pswitch_1a8
    invoke-virtual {p0, p1, v5, v3}, Lcom/explorestack/protobuf/MessageSchema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3731
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_588

    .line 3727
    :pswitch_1bb
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p2, v5, v4, v3}, Lcom/explorestack/protobuf/MessageSchema;->writeMapHelper(Lcom/explorestack/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_588

    .line 3720
    :pswitch_1c8
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3721
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3723
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 3719
    invoke-static {v5, v4, p2, v6}, Lcom/explorestack/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_588

    .line 3713
    :pswitch_1df
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3714
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3712
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3706
    :pswitch_1f2
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3707
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3705
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3699
    :pswitch_205
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3700
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3698
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3692
    :pswitch_218
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3693
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3691
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3685
    :pswitch_22b
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3686
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3684
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3678
    :pswitch_23e
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3679
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3677
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3671
    :pswitch_251
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3672
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3670
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3663
    :pswitch_264
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3664
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3662
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3656
    :pswitch_277
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3657
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3655
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3649
    :pswitch_28a
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3650
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3648
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3642
    :pswitch_29d
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3643
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3641
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3635
    :pswitch_2b0
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3636
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3634
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3628
    :pswitch_2c3
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3629
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3627
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3621
    :pswitch_2d6
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3622
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3620
    invoke-static {v5, v4, p2, v8}, Lcom/explorestack/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3614
    :pswitch_2e9
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3615
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3613
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3607
    :pswitch_2fc
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3608
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3606
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3600
    :pswitch_30f
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3601
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3599
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3593
    :pswitch_322
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3594
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3592
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3586
    :pswitch_335
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3587
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3585
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3579
    :pswitch_348
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3580
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3578
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3573
    :pswitch_35b
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3574
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3572
    invoke-static {v5, v4, p2}, Lcom/explorestack/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_588

    .line 3566
    :pswitch_36e
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3567
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3569
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 3565
    invoke-static {v5, v4, p2, v6}, Lcom/explorestack/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_588

    .line 3560
    :pswitch_385
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3561
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3559
    invoke-static {v5, v4, p2}, Lcom/explorestack/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_588

    .line 3553
    :pswitch_398
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3554
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3552
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3546
    :pswitch_3ab
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3547
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3545
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3539
    :pswitch_3be
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3540
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3538
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3532
    :pswitch_3d1
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3533
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3531
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3525
    :pswitch_3e4
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3526
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3524
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3518
    :pswitch_3f7
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3519
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3517
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3511
    :pswitch_40a
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3512
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3510
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3504
    :pswitch_41d
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->numberAt(I)I

    move-result v5

    .line 3505
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3503
    invoke-static {v5, v4, p2, v7}, Lcom/explorestack/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/explorestack/protobuf/Writer;Z)V

    goto/16 :goto_588

    .line 3495
    :pswitch_430
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3498
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3499
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    .line 3496
    invoke-interface {p2, v5, v4, v6}, Lcom/explorestack/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_588

    .line 3490
    :pswitch_447
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3491
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_588

    .line 3485
    :pswitch_45a
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3486
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_588

    .line 3480
    :pswitch_46d
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3481
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_588

    .line 3475
    :pswitch_480
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3476
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_588

    .line 3470
    :pswitch_493
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3471
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_588

    .line 3465
    :pswitch_4a6
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3466
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_588

    .line 3459
    :pswitch_4b9
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3461
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/ByteString;

    .line 3460
    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    goto/16 :goto_588

    .line 3453
    :pswitch_4ce
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3454
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 3455
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/MessageSchema;->getMessageFieldSchema(I)Lcom/explorestack/protobuf/Schema;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/explorestack/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/explorestack/protobuf/Schema;)V

    goto/16 :goto_588

    .line 3448
    :pswitch_4e5
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3449
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    goto/16 :goto_588

    .line 3443
    :pswitch_4f8
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3444
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_588

    .line 3438
    :pswitch_50b
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3439
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeFixed32(II)V

    goto :goto_588

    .line 3433
    :pswitch_51d
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3434
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_588

    .line 3428
    :pswitch_52f
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3429
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeInt32(II)V

    goto :goto_588

    .line 3423
    :pswitch_541
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3424
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_588

    .line 3418
    :pswitch_553
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3419
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_588

    .line 3413
    :pswitch_565
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3414
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/explorestack/protobuf/Writer;->writeFloat(IF)V

    goto :goto_588

    .line 3408
    :pswitch_577
    invoke-virtual {p0, p1, v3}, Lcom/explorestack/protobuf/MessageSchema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 3409
    invoke-static {v4}, Lcom/explorestack/protobuf/MessageSchema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/explorestack/protobuf/MessageSchema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/explorestack/protobuf/Writer;->writeDouble(ID)V

    :cond_588
    :goto_588
    add-int/lit8 v3, v3, -0x3

    goto/16 :goto_28

    :cond_58c
    :goto_58c
    if-eqz v2, :cond_5a3

    .line 3829
    iget-object p1, p0, Lcom/explorestack/protobuf/MessageSchema;->extensionSchema:Lcom/explorestack/protobuf/ExtensionSchema;

    invoke-virtual {p1, p2, v2}, Lcom/explorestack/protobuf/ExtensionSchema;->serializeExtension(Lcom/explorestack/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 3830
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v2, p1

    goto :goto_58c

    :cond_5a1
    move-object v2, v1

    goto :goto_58c

    :cond_5a3
    return-void

    :pswitch_data_5a4
    .packed-switch 0x0
        :pswitch_577
        :pswitch_565
        :pswitch_553
        :pswitch_541
        :pswitch_52f
        :pswitch_51d
        :pswitch_50b
        :pswitch_4f8
        :pswitch_4e5
        :pswitch_4ce
        :pswitch_4b9
        :pswitch_4a6
        :pswitch_493
        :pswitch_480
        :pswitch_46d
        :pswitch_45a
        :pswitch_447
        :pswitch_430
        :pswitch_41d
        :pswitch_40a
        :pswitch_3f7
        :pswitch_3e4
        :pswitch_3d1
        :pswitch_3be
        :pswitch_3ab
        :pswitch_398
        :pswitch_385
        :pswitch_36e
        :pswitch_35b
        :pswitch_348
        :pswitch_335
        :pswitch_322
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2e9
        :pswitch_2d6
        :pswitch_2c3
        :pswitch_2b0
        :pswitch_29d
        :pswitch_28a
        :pswitch_277
        :pswitch_264
        :pswitch_251
        :pswitch_23e
        :pswitch_22b
        :pswitch_218
        :pswitch_205
        :pswitch_1f2
        :pswitch_1df
        :pswitch_1c8
        :pswitch_1bb
        :pswitch_1a8
        :pswitch_195
        :pswitch_182
        :pswitch_16f
        :pswitch_15c
        :pswitch_149
        :pswitch_136
        :pswitch_123
        :pswitch_110
        :pswitch_f9
        :pswitch_e4
        :pswitch_d1
        :pswitch_be
        :pswitch_ab
        :pswitch_98
        :pswitch_85
        :pswitch_72
        :pswitch_5b
    .end packed-switch
.end method

.method public final writeMapHelper(Lcom/explorestack/protobuf/Writer;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    .line 3838
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 3840
    invoke-virtual {p0, p4}, Lcom/explorestack/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/explorestack/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntryLite$Metadata;

    move-result-object p4

    iget-object v0, p0, Lcom/explorestack/protobuf/MessageSchema;->mapFieldSchema:Lcom/explorestack/protobuf/MapFieldSchema;

    .line 3841
    invoke-interface {v0, p3}, Lcom/explorestack/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 3838
    invoke-interface {p1, p2, p4, p3}, Lcom/explorestack/protobuf/Writer;->writeMap(ILcom/explorestack/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method public final writeString(ILjava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5667
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 5668
    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/explorestack/protobuf/Writer;->writeString(ILjava/lang/String;)V

    return-void

    .line 5670
    :cond_a
    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-interface {p3, p1, p2}, Lcom/explorestack/protobuf/Writer;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public writeTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2542
    invoke-interface {p2}, Lcom/explorestack/protobuf/Writer;->fieldOrder()Lcom/explorestack/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/explorestack/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/explorestack/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_c

    .line 2543
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void

    .line 2545
    :cond_c
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MessageSchema;->proto3:Z

    if-eqz v0, :cond_14

    .line 2546
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto3(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void

    .line 2548
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method

.method public final writeUnknownInMessageTo(Lcom/explorestack/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;",
            "Lcom/explorestack/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3847
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    return-void
.end method

###### Class com.explorestack.protobuf.MessageSchema.AnonymousClass1 (com.explorestack.protobuf.MessageSchema$1)
.class public synthetic Lcom/explorestack/protobuf/MessageSchema$1;
.super Ljava/lang/Object;
.source "MessageSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MessageSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$WireFormat$FieldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 4363
    invoke-static {}, Lcom/explorestack/protobuf/WireFormat$FieldType;->values()[Lcom/explorestack/protobuf/WireFormat$FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    :try_start_9
    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->BOOL:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->BYTES:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->FIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->FLOAT:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->ENUM:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->INT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->UINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT32:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->SINT64:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lcom/explorestack/protobuf/MessageSchema$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/WireFormat$FieldType;->STRING:Lcom/explorestack/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    return-void
.end method
