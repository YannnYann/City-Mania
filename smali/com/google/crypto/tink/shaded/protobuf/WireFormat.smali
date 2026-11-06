###### Class com.google.crypto.tink.shaded.protobuf.WireFormat (com.google.crypto.tink.shaded.protobuf.WireFormat)
.class public final Lcom/google/crypto/tink/shaded/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;,
        Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field public static final MESSAGE_SET_ITEM_END_TAG:I

.field public static final MESSAGE_SET_ITEM_TAG:I

.field public static final MESSAGE_SET_MESSAGE_TAG:I

.field public static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 155
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x4

    .line 156
    invoke-static {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 157
    invoke-static {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 159
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 0
    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static getTagWireType(I)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 0
    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static makeTag(II)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    .line 0
    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

###### Class com.google.crypto.tink.shaded.protobuf.WireFormat.AnonymousClass1 (com.google.crypto.tink.shaded.protobuf.WireFormat$1)
.class public synthetic Lcom/google/crypto/tink/shaded/protobuf/WireFormat$1;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.shaded.protobuf.WireFormat.FieldType (com.google.crypto.tink.shaded.protobuf.WireFormat$FieldType)
.class public enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum BOOL:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum BYTES:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum FIXED32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum FIXED64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum FLOAT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum GROUP:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum INT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum INT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum SFIXED64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum SINT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum SINT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum UINT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

.field public static final enum UINT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;


# instance fields
.field public final javaType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public final wireType:I


# direct methods
.method public static synthetic $values()[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .registers 19

    .line 88
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->FLOAT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->INT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->UINT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->INT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->FIXED64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->FIXED32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->BOOL:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v12, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->UINT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v15, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v16, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v17, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SINT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v18, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SINT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    filled-new-array/range {v1 .. v18}, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 89
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 90
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v2, "FLOAT"

    const/4 v5, 0x5

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->FLOAT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 91
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->LONG:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v2, "INT64"

    const/4 v6, 0x2

    invoke-direct {v0, v2, v6, v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->INT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 92
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v2, "UINT64"

    const/4 v7, 0x3

    invoke-direct {v0, v2, v7, v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->UINT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 93
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->INT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v8, "INT32"

    const/4 v9, 0x4

    invoke-direct {v0, v8, v9, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->INT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 94
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v8, "FIXED64"

    invoke-direct {v0, v8, v5, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->FIXED64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 95
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v8, "FIXED32"

    const/4 v9, 0x6

    invoke-direct {v0, v8, v9, v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->FIXED32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 96
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const/4 v8, 0x7

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v10, "BOOL"

    invoke-direct {v0, v10, v8, v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->BOOL:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 97
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$1;

    const/16 v8, 0x8

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v10, "STRING"

    invoke-direct {v0, v10, v8, v9, v6}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$1;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 103
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$2;

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v9, "GROUP"

    const/16 v10, 0x9

    invoke-direct {v0, v9, v10, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$2;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 109
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$3;

    const-string v7, "MESSAGE"

    const/16 v9, 0xa

    invoke-direct {v0, v7, v9, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$3;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 115
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$4;

    const/16 v7, 0xb

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v9, "BYTES"

    invoke-direct {v0, v9, v7, v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$4;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->BYTES:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 121
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v6, "UINT32"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->UINT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 122
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const/16 v6, 0xd

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v8, "ENUM"

    invoke-direct {v0, v8, v6, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 123
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v6, "SFIXED32"

    const/16 v7, 0xe

    invoke-direct {v0, v6, v7, v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SFIXED32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 124
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v5, "SFIXED64"

    const/16 v6, 0xf

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SFIXED64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 125
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v4, "SINT32"

    const/16 v5, 0x10

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SINT32:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 126
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-string v2, "SINT64"

    const/16 v4, 0x11

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->SINT64:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    .line 88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->$values()[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javaType",
            "wireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;",
            "I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->javaType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 130
    iput p4, p0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$1;)V
    .registers 6

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 88
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .registers 1

    .line 88
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->javaType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    return-object v0
.end method

###### Class com.google.crypto.tink.shaded.protobuf.WireFormat.FieldType.AnonymousClass1 (com.google.crypto.tink.shaded.protobuf.WireFormat$FieldType$1)
.class public final enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$1;
.super Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javaType",
            "wireType"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$1;)V

    return-void
.end method

###### Class com.google.crypto.tink.shaded.protobuf.WireFormat.FieldType.AnonymousClass2 (com.google.crypto.tink.shaded.protobuf.WireFormat$FieldType$2)
.class public final enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$2;
.super Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javaType",
            "wireType"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$1;)V

    return-void
.end method

###### Class com.google.crypto.tink.shaded.protobuf.WireFormat.FieldType.AnonymousClass3 (com.google.crypto.tink.shaded.protobuf.WireFormat$FieldType$3)
.class public final enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$3;
.super Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javaType",
            "wireType"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$1;)V

    return-void
.end method

###### Class com.google.crypto.tink.shaded.protobuf.WireFormat.FieldType.AnonymousClass4 (com.google.crypto.tink.shaded.protobuf.WireFormat$FieldType$4)
.class public final enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType$4;
.super Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "javaType",
            "wireType"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$1;)V

    return-void
.end method

###### Class com.google.crypto.tink.shaded.protobuf.WireFormat.JavaType (com.google.crypto.tink.shaded.protobuf.WireFormat$JavaType)
.class public final enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum BOOLEAN:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum BYTE_STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum FLOAT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum INT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum LONG:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

.field public static final enum STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;


# instance fields
.field public final defaultDefault:Ljava/lang/Object;


# direct methods
.method public static synthetic $values()[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;
    .registers 9

    .line 61
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->INT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->LONG:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    filled-new-array/range {v0 .. v8}, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 62
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->INT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LONG"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->LONG:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 64
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "FLOAT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->FLOAT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 65
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "DOUBLE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 66
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->BOOLEAN:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 67
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const/4 v1, 0x5

    const-string v2, ""

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 68
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const/4 v1, 0x6

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    const-string v3, "BYTE_STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->BYTE_STRING:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 69
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 70
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    .line 61
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->$values()[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "defaultDefault"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 61
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;
    .registers 1

    .line 61
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$JavaType;

    return-object v0
.end method
