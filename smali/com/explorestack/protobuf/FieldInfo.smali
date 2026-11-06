###### Class com.explorestack.protobuf.FieldInfo (com.explorestack.protobuf.FieldInfo)
.class public final Lcom/explorestack/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/explorestack/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final cachedSizeField:Ljava/lang/reflect/Field;

.field public final enforceUtf8:Z

.field public final enumVerifier:Lcom/explorestack/protobuf/Internal$EnumVerifier;

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldNumber:I

.field public final mapDefaultEntry:Ljava/lang/Object;

.field public final messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final oneof:Lcom/explorestack/protobuf/OneofInfo;

.field public final oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final presenceField:Ljava/lang/reflect/Field;

.field public final presenceMask:I

.field public final required:Z

.field public final type:Lcom/explorestack/protobuf/FieldType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/explorestack/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/explorestack/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/explorestack/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 334
    iput-object p3, p0, Lcom/explorestack/protobuf/FieldInfo;->type:Lcom/explorestack/protobuf/FieldType;

    .line 335
    iput-object p4, p0, Lcom/explorestack/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    .line 336
    iput p2, p0, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    .line 337
    iput-object p5, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    .line 338
    iput p6, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceMask:I

    .line 339
    iput-boolean p7, p0, Lcom/explorestack/protobuf/FieldInfo;->required:Z

    .line 340
    iput-boolean p8, p0, Lcom/explorestack/protobuf/FieldInfo;->enforceUtf8:Z

    .line 341
    iput-object p9, p0, Lcom/explorestack/protobuf/FieldInfo;->oneof:Lcom/explorestack/protobuf/OneofInfo;

    .line 342
    iput-object p10, p0, Lcom/explorestack/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 343
    iput-object p11, p0, Lcom/explorestack/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    .line 344
    iput-object p12, p0, Lcom/explorestack/protobuf/FieldInfo;->enumVerifier:Lcom/explorestack/protobuf/Internal$EnumVerifier;

    .line 345
    iput-object p13, p0, Lcom/explorestack/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static checkFieldNumber(I)V
    .registers 4

    if-lez p0, :cond_3

    return-void

    .line 261
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fieldNumber must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Z)Lcom/explorestack/protobuf/FieldInfo;
    .registers 18

    move-object/from16 v3, p2

    .line 66
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 67
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    sget-object v0, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    .line 72
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 70
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 19

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 139
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    new-instance v1, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 19

    .line 300
    const-string v0, "mapDefaultEntry"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 302
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    new-instance v1, Lcom/explorestack/protobuf/FieldInfo;

    sget-object v4, Lcom/explorestack/protobuf/FieldType;->MAP:Lcom/explorestack/protobuf/FieldType;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static forOneofMemberField(ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/explorestack/protobuf/FieldType;",
            "Lcom/explorestack/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/explorestack/protobuf/FieldInfo;"
        }
    .end annotation

    .line 232
    invoke-static {p0}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 233
    const-string v0, "fieldType"

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    const-string v0, "oneof"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    const-string v0, "oneofStoredType"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p1}, Lcom/explorestack/protobuf/FieldType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 243
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    move/from16 v8, p4

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 237
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forPackedField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 18

    move-object/from16 v3, p2

    .line 91
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 92
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string v0, "fieldType"

    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    sget-object v0, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_2a

    .line 97
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 95
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 20

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 163
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    new-instance v1, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 21

    move-object/from16 v5, p3

    .line 189
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 190
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1e

    .line 193
    invoke-static/range {p4 .. p4}, Lcom/explorestack/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1e
    move/from16 v6, p4

    goto :goto_3a

    .line 194
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "presenceMask must have exactly one bit set: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :goto_3a
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 21

    move-object/from16 v5, p3

    .line 274
    invoke-static {p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 275
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "fieldType"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 277
    const-string v0, "presenceField"

    invoke-static {v5, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1e

    .line 278
    invoke-static/range {p4 .. p4}, Lcom/explorestack/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1e
    move/from16 v6, p4

    goto :goto_3a

    .line 279
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "presenceMask must have exactly one bit set: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :goto_3a
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;)Lcom/explorestack/protobuf/FieldInfo;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/explorestack/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/FieldInfo;"
        }
    .end annotation

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    .line 117
    const-string v0, "field"

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "fieldType"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "messageClass"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v1
.end method

.method public static isExactlyOneBitSet(I)Z
    .registers 2

    .line 0
    if-eqz p0, :cond_9

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/explorestack/protobuf/FieldInfo;)I
    .registers 3

    .line 384
    iget v0, p0, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    iget p1, p1, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 39
    check-cast p1, Lcom/explorestack/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldInfo;->compareTo(Lcom/explorestack/protobuf/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public getCachedSizeField()Ljava/lang/reflect/Field;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getEnumVerifier()Lcom/explorestack/protobuf/Internal$EnumVerifier;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->enumVerifier:Lcom/explorestack/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldNumber()I
    .registers 2

    .line 350
    iget v0, p0, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public getMapDefaultEntry()Ljava/lang/Object;
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageFieldClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/explorestack/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, p0, Lcom/explorestack/protobuf/FieldInfo;->type:Lcom/explorestack/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0

    .line 436
    :cond_1b
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public getOneof()Lcom/explorestack/protobuf/OneofInfo;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->oneof:Lcom/explorestack/protobuf/OneofInfo;

    return-object v0
.end method

.method public getPresenceField()Ljava/lang/reflect/Field;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getPresenceMask()I
    .registers 2

    .line 409
    iget v0, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public getType()Lcom/explorestack/protobuf/FieldType;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->type:Lcom/explorestack/protobuf/FieldType;

    return-object v0
.end method

.method public isEnforceUtf8()Z
    .registers 2

    .line 421
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public isRequired()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldInfo;->required:Z

    return v0
.end method

###### Class com.explorestack.protobuf.FieldInfo.AnonymousClass1 (com.explorestack.protobuf.FieldInfo$1)
.class public synthetic Lcom/explorestack/protobuf/FieldInfo$1;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/FieldInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$FieldType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 433
    invoke-static {}, Lcom/explorestack/protobuf/FieldType;->values()[Lcom/explorestack/protobuf/FieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    :try_start_9
    sget-object v1, Lcom/explorestack/protobuf/FieldType;->MESSAGE:Lcom/explorestack/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/explorestack/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/FieldType;->GROUP:Lcom/explorestack/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/explorestack/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/explorestack/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    sget-object v1, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
