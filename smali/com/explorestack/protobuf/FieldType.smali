###### Class com.explorestack.protobuf.FieldType (com.explorestack.protobuf.FieldType)
.class public final enum Lcom/explorestack/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/explorestack/protobuf/FieldType;

.field public static final enum BOOL:Lcom/explorestack/protobuf/FieldType;

.field public static final enum BOOL_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum BYTES:Lcom/explorestack/protobuf/FieldType;

.field public static final enum BYTES_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/explorestack/protobuf/FieldType;

.field public static final enum ENUM_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FIXED32:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FIXED64:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum GROUP:Lcom/explorestack/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum INT32:Lcom/explorestack/protobuf/FieldType;

.field public static final enum INT32_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum INT64:Lcom/explorestack/protobuf/FieldType;

.field public static final enum INT64_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum MAP:Lcom/explorestack/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SFIXED32:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SFIXED64:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SINT32:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SINT32_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SINT64:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SINT64_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum STRING:Lcom/explorestack/protobuf/FieldType;

.field public static final enum STRING_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum UINT32:Lcom/explorestack/protobuf/FieldType;

.field public static final enum UINT32_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final enum UINT64:Lcom/explorestack/protobuf/FieldType;

.field public static final enum UINT64_LIST:Lcom/explorestack/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

.field public static final VALUES:[Lcom/explorestack/protobuf/FieldType;


# instance fields
.field public final collection:Lcom/explorestack/protobuf/FieldType$Collection;

.field public final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final id:I

.field public final javaType:Lcom/explorestack/protobuf/JavaType;

.field public final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 86

    .line 42
    new-instance v0, Lcom/explorestack/protobuf/FieldType;

    sget-object v5, Lcom/explorestack/protobuf/FieldType$Collection;->SCALAR:Lcom/explorestack/protobuf/FieldType$Collection;

    sget-object v11, Lcom/explorestack/protobuf/JavaType;->DOUBLE:Lcom/explorestack/protobuf/JavaType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object v5, v4

    sput-object v0, Lcom/explorestack/protobuf/FieldType;->DOUBLE:Lcom/explorestack/protobuf/FieldType;

    .line 43
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v17, Lcom/explorestack/protobuf/JavaType;->FLOAT:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "FLOAT"

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v18, v1

    sput-object v18, Lcom/explorestack/protobuf/FieldType;->FLOAT:Lcom/explorestack/protobuf/FieldType;

    .line 44
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v24, Lcom/explorestack/protobuf/JavaType;->LONG:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v25, v1

    sput-object v25, Lcom/explorestack/protobuf/FieldType;->INT64:Lcom/explorestack/protobuf/FieldType;

    .line 45
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/4 v3, 0x3

    const/4 v4, 0x3

    const-string v2, "UINT64"

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v26, v1

    sput-object v26, Lcom/explorestack/protobuf/FieldType;->UINT64:Lcom/explorestack/protobuf/FieldType;

    .line 46
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v32, Lcom/explorestack/protobuf/JavaType;->INT:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v33, v1

    sput-object v33, Lcom/explorestack/protobuf/FieldType;->INT32:Lcom/explorestack/protobuf/FieldType;

    .line 47
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-string v2, "FIXED64"

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v34, v1

    sput-object v34, Lcom/explorestack/protobuf/FieldType;->FIXED64:Lcom/explorestack/protobuf/FieldType;

    .line 48
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/4 v3, 0x6

    const/4 v4, 0x6

    const-string v2, "FIXED32"

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v35, v1

    sput-object v35, Lcom/explorestack/protobuf/FieldType;->FIXED32:Lcom/explorestack/protobuf/FieldType;

    .line 49
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v41, Lcom/explorestack/protobuf/JavaType;->BOOLEAN:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "BOOL"

    const/4 v3, 0x7

    const/4 v4, 0x7

    move-object/from16 v6, v41

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v42, v1

    sput-object v42, Lcom/explorestack/protobuf/FieldType;->BOOL:Lcom/explorestack/protobuf/FieldType;

    .line 50
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v48, Lcom/explorestack/protobuf/JavaType;->STRING:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object/from16 v6, v48

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v49, v1

    sput-object v49, Lcom/explorestack/protobuf/FieldType;->STRING:Lcom/explorestack/protobuf/FieldType;

    .line 51
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v6, Lcom/explorestack/protobuf/JavaType;->MESSAGE:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "MESSAGE"

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v56, v1

    move-object/from16 v55, v6

    sput-object v56, Lcom/explorestack/protobuf/FieldType;->MESSAGE:Lcom/explorestack/protobuf/FieldType;

    .line 52
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v6, Lcom/explorestack/protobuf/JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v63, v1

    move-object/from16 v62, v6

    sput-object v63, Lcom/explorestack/protobuf/FieldType;->BYTES:Lcom/explorestack/protobuf/FieldType;

    .line 53
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/16 v3, 0xb

    const/16 v4, 0xb

    const-string v2, "UINT32"

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v64, v1

    sput-object v64, Lcom/explorestack/protobuf/FieldType;->UINT32:Lcom/explorestack/protobuf/FieldType;

    .line 54
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    sget-object v70, Lcom/explorestack/protobuf/JavaType;->ENUM:Lcom/explorestack/protobuf/JavaType;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object/from16 v6, v70

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v71, v1

    sput-object v71, Lcom/explorestack/protobuf/FieldType;->ENUM:Lcom/explorestack/protobuf/FieldType;

    .line 55
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/16 v3, 0xd

    const/16 v4, 0xd

    const-string v2, "SFIXED32"

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v72, v1

    sput-object v72, Lcom/explorestack/protobuf/FieldType;->SFIXED32:Lcom/explorestack/protobuf/FieldType;

    .line 56
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/16 v3, 0xe

    const/16 v4, 0xe

    const-string v2, "SFIXED64"

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v73, v1

    sput-object v73, Lcom/explorestack/protobuf/FieldType;->SFIXED64:Lcom/explorestack/protobuf/FieldType;

    .line 57
    new-instance v16, Lcom/explorestack/protobuf/FieldType;

    const/16 v3, 0xf

    const/16 v4, 0xf

    const-string v2, "SINT32"

    move-object/from16 v1, v16

    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v74, v1

    sput-object v74, Lcom/explorestack/protobuf/FieldType;->SINT32:Lcom/explorestack/protobuf/FieldType;

    .line 58
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/16 v3, 0x10

    const/16 v4, 0x10

    const-string v2, "SINT64"

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v75, v1

    sput-object v75, Lcom/explorestack/protobuf/FieldType;->SINT64:Lcom/explorestack/protobuf/FieldType;

    .line 59
    new-instance v1, Lcom/explorestack/protobuf/FieldType;

    const/16 v3, 0x11

    const/16 v4, 0x11

    const-string v2, "GROUP"

    move-object/from16 v6, v55

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v1, Lcom/explorestack/protobuf/FieldType;->GROUP:Lcom/explorestack/protobuf/FieldType;

    .line 60
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    sget-object v23, Lcom/explorestack/protobuf/FieldType$Collection;->VECTOR:Lcom/explorestack/protobuf/FieldType$Collection;

    const-string v7, "DOUBLE_LIST"

    const/16 v8, 0x12

    const/16 v9, 0x12

    move-object/from16 v6, v19

    move-object/from16 v10, v23

    invoke-direct/range {v6 .. v11}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object v2, v6

    sput-object v2, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 61
    new-instance v20, Lcom/explorestack/protobuf/FieldType;

    const/16 v14, 0x13

    const/16 v15, 0x13

    const-string v13, "FLOAT_LIST"

    move-object/from16 v12, v20

    move-object/from16 v16, v23

    invoke-direct/range {v12 .. v17}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object v3, v12

    sput-object v3, Lcom/explorestack/protobuf/FieldType;->FLOAT_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 62
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x14

    const/16 v22, 0x14

    const-string v20, "INT64_LIST"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v4, v19

    sput-object v4, Lcom/explorestack/protobuf/FieldType;->INT64_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 63
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x15

    const/16 v22, 0x15

    const-string v20, "UINT64_LIST"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v5, v19

    sput-object v5, Lcom/explorestack/protobuf/FieldType;->UINT64_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 64
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x16

    const/16 v30, 0x16

    const-string v28, "INT32_LIST"

    move-object/from16 v31, v23

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v76, v27

    sput-object v76, Lcom/explorestack/protobuf/FieldType;->INT32_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 65
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x17

    const/16 v22, 0x17

    const-string v20, "FIXED64_LIST"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v77, v19

    sput-object v77, Lcom/explorestack/protobuf/FieldType;->FIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 66
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x18

    const/16 v30, 0x18

    const-string v28, "FIXED32_LIST"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v78, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v27

    sput-object v25, Lcom/explorestack/protobuf/FieldType;->FIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 67
    new-instance v36, Lcom/explorestack/protobuf/FieldType;

    const/16 v38, 0x19

    const/16 v39, 0x19

    const-string v37, "BOOL_LIST"

    move-object/from16 v40, v23

    invoke-direct/range {v36 .. v41}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v79, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v36

    sput-object v26, Lcom/explorestack/protobuf/FieldType;->BOOL_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 68
    new-instance v43, Lcom/explorestack/protobuf/FieldType;

    const/16 v45, 0x1a

    const/16 v46, 0x1a

    const-string v44, "STRING_LIST"

    move-object/from16 v47, v23

    invoke-direct/range {v43 .. v48}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v43, Lcom/explorestack/protobuf/FieldType;->STRING_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 69
    new-instance v50, Lcom/explorestack/protobuf/FieldType;

    const/16 v52, 0x1b

    const/16 v53, 0x1b

    const-string v51, "MESSAGE_LIST"

    move-object/from16 v54, v23

    invoke-direct/range {v50 .. v55}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v44, v50

    sput-object v44, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 70
    new-instance v57, Lcom/explorestack/protobuf/FieldType;

    const/16 v59, 0x1c

    const/16 v60, 0x1c

    const-string v58, "BYTES_LIST"

    move-object/from16 v61, v23

    invoke-direct/range {v57 .. v62}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v57, Lcom/explorestack/protobuf/FieldType;->BYTES_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 71
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x1d

    const/16 v30, 0x1d

    const-string v28, "UINT32_LIST"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v45, v27

    sput-object v45, Lcom/explorestack/protobuf/FieldType;->UINT32_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 72
    new-instance v65, Lcom/explorestack/protobuf/FieldType;

    const/16 v67, 0x1e

    const/16 v68, 0x1e

    const-string v66, "ENUM_LIST"

    move-object/from16 v69, v23

    invoke-direct/range {v65 .. v70}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v46, v65

    sput-object v46, Lcom/explorestack/protobuf/FieldType;->ENUM_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 73
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x1f

    const/16 v30, 0x1f

    const-string v28, "SFIXED32_LIST"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v47, v27

    sput-object v47, Lcom/explorestack/protobuf/FieldType;->SFIXED32_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 74
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x20

    const/16 v22, 0x20

    const-string v20, "SFIXED64_LIST"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v48, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v19

    sput-object v33, Lcom/explorestack/protobuf/FieldType;->SFIXED64_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 75
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x21

    const/16 v30, 0x21

    const-string v28, "SINT32_LIST"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v58, v34

    move-object/from16 v34, v27

    sput-object v34, Lcom/explorestack/protobuf/FieldType;->SINT32_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 76
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x22

    const/16 v22, 0x22

    const-string v20, "SINT64_LIST"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v59, v35

    move-object/from16 v35, v19

    sput-object v35, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 77
    new-instance v36, Lcom/explorestack/protobuf/FieldType;

    sget-object v23, Lcom/explorestack/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/explorestack/protobuf/FieldType$Collection;

    const-string v7, "DOUBLE_LIST_PACKED"

    const/16 v8, 0x23

    const/16 v9, 0x23

    move-object/from16 v10, v23

    move-object/from16 v6, v36

    invoke-direct/range {v6 .. v11}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v6, Lcom/explorestack/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 78
    new-instance v37, Lcom/explorestack/protobuf/FieldType;

    const/16 v14, 0x24

    const/16 v15, 0x24

    const-string v13, "FLOAT_LIST_PACKED"

    move-object/from16 v16, v23

    move-object/from16 v12, v37

    invoke-direct/range {v12 .. v17}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v12, Lcom/explorestack/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 79
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x25

    const/16 v22, 0x25

    const-string v20, "INT64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v7, v19

    sput-object v7, Lcom/explorestack/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 80
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x26

    const/16 v22, 0x26

    const-string v20, "UINT64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v8, v19

    sput-object v8, Lcom/explorestack/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 81
    new-instance v40, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x27

    const/16 v30, 0x27

    const-string v28, "INT32_LIST_PACKED"

    move-object/from16 v31, v23

    move-object/from16 v27, v40

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v9, v27

    sput-object v9, Lcom/explorestack/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 82
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x28

    const/16 v22, 0x28

    const-string v20, "FIXED64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v10, v19

    sput-object v10, Lcom/explorestack/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 83
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x29

    const/16 v30, 0x29

    const-string v28, "FIXED32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object v11, v8

    move-object/from16 v8, v42

    move-object/from16 v42, v27

    sput-object v42, Lcom/explorestack/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 84
    new-instance v36, Lcom/explorestack/protobuf/FieldType;

    const/16 v38, 0x2a

    const/16 v39, 0x2a

    const-string v37, "BOOL_LIST_PACKED"

    move-object/from16 v40, v23

    invoke-direct/range {v36 .. v41}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v36, Lcom/explorestack/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 85
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x2b

    const/16 v30, 0x2b

    const-string v28, "UINT32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v13, v44

    move-object/from16 v44, v27

    sput-object v44, Lcom/explorestack/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 86
    new-instance v65, Lcom/explorestack/protobuf/FieldType;

    const/16 v67, 0x2c

    const/16 v68, 0x2c

    const-string v66, "ENUM_LIST_PACKED"

    move-object/from16 v69, v23

    invoke-direct/range {v65 .. v70}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v65, Lcom/explorestack/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 87
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x2d

    const/16 v30, 0x2d

    const-string v28, "SFIXED32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v14, v46

    move-object/from16 v46, v27

    sput-object v46, Lcom/explorestack/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 88
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x2e

    const/16 v22, 0x2e

    const-string v20, "SFIXED64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    move-object/from16 v15, v47

    move-object/from16 v47, v19

    sput-object v47, Lcom/explorestack/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 89
    new-instance v27, Lcom/explorestack/protobuf/FieldType;

    const/16 v29, 0x2f

    const/16 v30, 0x2f

    const-string v28, "SINT32_LIST_PACKED"

    invoke-direct/range {v27 .. v32}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v27, Lcom/explorestack/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 90
    new-instance v19, Lcom/explorestack/protobuf/FieldType;

    const/16 v21, 0x30

    const/16 v22, 0x30

    const-string v20, "SINT64_LIST_PACKED"

    invoke-direct/range {v19 .. v24}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v19, Lcom/explorestack/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/explorestack/protobuf/FieldType;

    .line 91
    new-instance v50, Lcom/explorestack/protobuf/FieldType;

    const/16 v52, 0x31

    const/16 v53, 0x31

    const-string v51, "GROUP_LIST"

    invoke-direct/range {v50 .. v55}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v50, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    .line 92
    new-instance v80, Lcom/explorestack/protobuf/FieldType;

    sget-object v84, Lcom/explorestack/protobuf/FieldType$Collection;->MAP:Lcom/explorestack/protobuf/FieldType$Collection;

    sget-object v85, Lcom/explorestack/protobuf/JavaType;->VOID:Lcom/explorestack/protobuf/JavaType;

    const-string v81, "MAP"

    const/16 v82, 0x32

    const/16 v83, 0x32

    invoke-direct/range {v80 .. v85}, Lcom/explorestack/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V

    sput-object v80, Lcom/explorestack/protobuf/FieldType;->MAP:Lcom/explorestack/protobuf/FieldType;

    move-object/from16 v38, v7

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v39, v11

    move-object/from16 v37, v12

    move-object/from16 v28, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v30, v45

    move-object/from16 v22, v48

    move-object/from16 v9, v49

    move-object/from16 v10, v56

    move-object/from16 v29, v57

    move-object/from16 v7, v59

    move-object/from16 v11, v63

    move-object/from16 v12, v64

    move-object/from16 v45, v65

    move-object/from16 v13, v71

    move-object/from16 v14, v72

    move-object/from16 v15, v73

    move-object/from16 v16, v74

    move-object/from16 v17, v75

    move-object/from16 v23, v76

    move-object/from16 v24, v77

    move-object/from16 v20, v78

    move-object/from16 v21, v79

    move-object/from16 v51, v80

    move-object/from16 v49, v19

    move-object/from16 v48, v27

    move-object/from16 v27, v43

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    move-object/from16 v43, v36

    move-object/from16 v18, v1

    move-object/from16 v36, v6

    move-object/from16 v6, v58

    move-object v1, v0

    .line 40
    filled-new-array/range {v1 .. v51}, [Lcom/explorestack/protobuf/FieldType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/FieldType;->$VALUES:[Lcom/explorestack/protobuf/FieldType;

    const/4 v0, 0x0

    .line 215
    new-array v1, v0, [Ljava/lang/reflect/Type;

    sput-object v1, Lcom/explorestack/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 218
    invoke-static {}, Lcom/explorestack/protobuf/FieldType;->values()[Lcom/explorestack/protobuf/FieldType;

    move-result-object v1

    .line 219
    array-length v2, v1

    new-array v2, v2, [Lcom/explorestack/protobuf/FieldType;

    sput-object v2, Lcom/explorestack/protobuf/FieldType;->VALUES:[Lcom/explorestack/protobuf/FieldType;

    .line 220
    array-length v2, v1

    :goto_3af
    if-ge v0, v2, :cond_3bc

    aget-object v3, v1, v0

    .line 221
    sget-object v4, Lcom/explorestack/protobuf/FieldType;->VALUES:[Lcom/explorestack/protobuf/FieldType;

    iget v5, v3, Lcom/explorestack/protobuf/FieldType;->id:I

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3af

    :cond_3bc
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/explorestack/protobuf/FieldType$Collection;Lcom/explorestack/protobuf/JavaType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/explorestack/protobuf/FieldType$Collection;",
            "Lcom/explorestack/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/explorestack/protobuf/FieldType;->id:I

    .line 102
    iput-object p4, p0, Lcom/explorestack/protobuf/FieldType;->collection:Lcom/explorestack/protobuf/FieldType$Collection;

    .line 103
    iput-object p5, p0, Lcom/explorestack/protobuf/FieldType;->javaType:Lcom/explorestack/protobuf/JavaType;

    .line 105
    sget-object p1, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_22

    if-eq p1, p2, :cond_1b

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/explorestack/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_28

    .line 110
    :cond_1b
    invoke-virtual {p5}, Lcom/explorestack/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_28

    .line 107
    :cond_22
    invoke-virtual {p5}, Lcom/explorestack/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 119
    :goto_28
    sget-object p1, Lcom/explorestack/protobuf/FieldType$Collection;->SCALAR:Lcom/explorestack/protobuf/FieldType$Collection;

    if-ne p4, p1, :cond_3c

    .line 120
    sget-object p1, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    if-eq p1, p3, :cond_3c

    if-eq p1, p2, :cond_3c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 p3, 0x0

    .line 130
    :goto_3d
    iput-boolean p3, p0, Lcom/explorestack/protobuf/FieldType;->primitiveScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/FieldType;
    .registers 2

    .line 40
    const-class v0, Lcom/explorestack/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FieldType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/FieldType;
    .registers 1

    .line 40
    sget-object v0, Lcom/explorestack/protobuf/FieldType;->$VALUES:[Lcom/explorestack/protobuf/FieldType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/explorestack/protobuf/JavaType;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldType;->javaType:Lcom/explorestack/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/explorestack/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldType;->collection:Lcom/explorestack/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldType;->collection:Lcom/explorestack/protobuf/FieldType$Collection;

    sget-object v1, Lcom/explorestack/protobuf/FieldType$Collection;->MAP:Lcom/explorestack/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isScalar()Z
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldType;->collection:Lcom/explorestack/protobuf/FieldType$Collection;

    sget-object v1, Lcom/explorestack/protobuf/FieldType$Collection;->SCALAR:Lcom/explorestack/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class com.explorestack.protobuf.FieldType.AnonymousClass1 (com.explorestack.protobuf.FieldType$1)
.class public synthetic Lcom/explorestack/protobuf/FieldType$1;
.super Ljava/lang/Object;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$protobuf$FieldType$Collection:[I

.field public static final synthetic $SwitchMap$com$google$protobuf$JavaType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 120
    invoke-static {}, Lcom/explorestack/protobuf/JavaType;->values()[Lcom/explorestack/protobuf/JavaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/explorestack/protobuf/JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v3, Lcom/explorestack/protobuf/JavaType;->MESSAGE:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    sget-object v4, Lcom/explorestack/protobuf/JavaType;->STRING:Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 105
    :catch_28
    invoke-static {}, Lcom/explorestack/protobuf/FieldType$Collection;->values()[Lcom/explorestack/protobuf/FieldType$Collection;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    :try_start_31
    sget-object v4, Lcom/explorestack/protobuf/FieldType$Collection;->MAP:Lcom/explorestack/protobuf/FieldType$Collection;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    sget-object v3, Lcom/explorestack/protobuf/FieldType$Collection;->VECTOR:Lcom/explorestack/protobuf/FieldType$Collection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/explorestack/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    sget-object v1, Lcom/explorestack/protobuf/FieldType$Collection;->SCALAR:Lcom/explorestack/protobuf/FieldType$Collection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method

###### Class com.explorestack.protobuf.FieldType.Collection (com.explorestack.protobuf.FieldType$Collection)
.class public final enum Lcom/explorestack/protobuf/FieldType$Collection;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Collection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/FieldType$Collection;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/explorestack/protobuf/FieldType$Collection;

.field public static final enum MAP:Lcom/explorestack/protobuf/FieldType$Collection;

.field public static final enum PACKED_VECTOR:Lcom/explorestack/protobuf/FieldType$Collection;

.field public static final enum SCALAR:Lcom/explorestack/protobuf/FieldType$Collection;

.field public static final enum VECTOR:Lcom/explorestack/protobuf/FieldType$Collection;


# instance fields
.field public final isList:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 328
    new-instance v0, Lcom/explorestack/protobuf/FieldType$Collection;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/explorestack/protobuf/FieldType$Collection;->SCALAR:Lcom/explorestack/protobuf/FieldType$Collection;

    .line 329
    new-instance v1, Lcom/explorestack/protobuf/FieldType$Collection;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/explorestack/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/explorestack/protobuf/FieldType$Collection;->VECTOR:Lcom/explorestack/protobuf/FieldType$Collection;

    .line 330
    new-instance v3, Lcom/explorestack/protobuf/FieldType$Collection;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/explorestack/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/explorestack/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/explorestack/protobuf/FieldType$Collection;

    .line 331
    new-instance v4, Lcom/explorestack/protobuf/FieldType$Collection;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/explorestack/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/explorestack/protobuf/FieldType$Collection;->MAP:Lcom/explorestack/protobuf/FieldType$Collection;

    .line 327
    filled-new-array {v0, v1, v3, v4}, [Lcom/explorestack/protobuf/FieldType$Collection;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/FieldType$Collection;->$VALUES:[Lcom/explorestack/protobuf/FieldType$Collection;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput-boolean p3, p0, Lcom/explorestack/protobuf/FieldType$Collection;->isList:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/FieldType$Collection;
    .registers 2

    .line 327
    const-class v0, Lcom/explorestack/protobuf/FieldType$Collection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FieldType$Collection;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/FieldType$Collection;
    .registers 1

    .line 327
    sget-object v0, Lcom/explorestack/protobuf/FieldType$Collection;->$VALUES:[Lcom/explorestack/protobuf/FieldType$Collection;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/FieldType$Collection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/FieldType$Collection;

    return-object v0
.end method


# virtual methods
.method public isList()Z
    .registers 2

    .line 341
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldType$Collection;->isList:Z

    return v0
.end method
