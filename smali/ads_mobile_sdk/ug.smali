###### Class ads_mobile_sdk.ug (ads_mobile_sdk.ug)
.class public final enum Lads_mobile_sdk/ug;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/ug;

.field public static final enum c:Lads_mobile_sdk/ug;

.field public static final synthetic d:[Lads_mobile_sdk/ug;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 30

    .line 1
    new-instance v1, Lads_mobile_sdk/ug;

    const-string v0, "ERROR_ENCODE_SIZE_FAIL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v2, Lads_mobile_sdk/ug;

    const-string v0, "ERROR_UNKNOWN"

    const/4 v4, 0x3

    invoke-direct {v2, v0, v3, v4}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v3, Lads_mobile_sdk/ug;

    const-string v0, "ERROR_NO_SIGNALS"

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-direct {v3, v0, v5, v6}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v0, Lads_mobile_sdk/ug;

    const-string v7, "ERROR_ENCRYPTION"

    const/4 v8, 0x7

    invoke-direct {v0, v7, v4, v8}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 17
    new-instance v4, Lads_mobile_sdk/ug;

    const-string v7, "ERROR_MEMORY"

    const/4 v9, 0x4

    const/16 v10, 0x9

    invoke-direct {v4, v7, v9, v10}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 21
    new-instance v7, Lads_mobile_sdk/ug;

    const-string v11, "ERROR_SIMULATOR"

    const/16 v12, 0xb

    invoke-direct {v7, v11, v6, v12}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    move-object v6, v7

    .line 25
    new-instance v7, Lads_mobile_sdk/ug;

    const-string v11, "ERROR_SERVICE"

    const/4 v13, 0x6

    const/16 v14, 0xd

    invoke-direct {v7, v11, v13, v14}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 29
    new-instance v11, Lads_mobile_sdk/ug;

    const-string v13, "ERROR_THREAD"

    const/16 v15, 0xf

    invoke-direct {v11, v13, v8, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 33
    new-instance v8, Lads_mobile_sdk/ug;

    const-string v13, "ERROR_COLLECTION_TIMEOUT"

    const/16 v15, 0x8

    const/16 v14, 0x11

    invoke-direct {v8, v13, v15, v14}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 37
    new-instance v13, Lads_mobile_sdk/ug;

    const-string v14, "ERROR_FALLBACK_SIGNALS"

    const/16 v15, 0x13

    invoke-direct {v13, v14, v10, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    move-object v10, v8

    move-object v8, v11

    .line 45
    new-instance v11, Lads_mobile_sdk/ug;

    const-string v14, "PSN_WEB64_FAIL"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v5}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 53
    new-instance v5, Lads_mobile_sdk/ug;

    const-string v14, "PSN_DECRYPT_SIZE_FAIL"

    invoke-direct {v5, v14, v12, v9}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    move-object v9, v10

    move-object v10, v13

    .line 61
    new-instance v13, Lads_mobile_sdk/ug;

    const-string v12, "PSN_MD5_CHECK_FAIL"

    const/16 v14, 0xc

    const/16 v15, 0x8

    invoke-direct {v13, v12, v14, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 69
    new-instance v14, Lads_mobile_sdk/ug;

    const-string v12, "PSN_MD5_SIZE_FAIL"

    const/16 v15, 0x10

    move-object/from16 v19, v0

    const/16 v0, 0xd

    invoke-direct {v14, v12, v0, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 77
    new-instance v0, Lads_mobile_sdk/ug;

    const/16 v12, 0xe

    const/16 v15, 0x20

    move-object/from16 v21, v1

    const-string v1, "PSN_MD5_FAIL"

    invoke-direct {v0, v1, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 85
    new-instance v1, Lads_mobile_sdk/ug;

    const-string v12, "PSN_DECODE_FAIL"

    const/16 v15, 0x40

    move-object/from16 v22, v0

    const/16 v0, 0xf

    invoke-direct {v1, v12, v0, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 93
    new-instance v0, Lads_mobile_sdk/ug;

    const-string v12, "PSN_SALT_FAIL"

    const/16 v15, 0x80

    move-object/from16 v16, v1

    const/16 v1, 0x10

    invoke-direct {v0, v12, v1, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 101
    new-instance v1, Lads_mobile_sdk/ug;

    const-string v12, "PSN_BITSLICER_FAIL"

    const/16 v15, 0x100

    move-object/from16 v17, v0

    const/16 v0, 0x11

    invoke-direct {v1, v12, v0, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 109
    new-instance v0, Lads_mobile_sdk/ug;

    const/16 v12, 0x12

    const/16 v15, 0x200

    move-object/from16 v18, v1

    const-string v1, "PSN_REQUEST_TYPE_FAIL"

    invoke-direct {v0, v1, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 117
    new-instance v1, Lads_mobile_sdk/ug;

    const-string v12, "PSN_INVALID_ERROR_CODE"

    const/16 v15, 0x400

    move-object/from16 v23, v0

    const/16 v0, 0x13

    invoke-direct {v1, v12, v0, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 125
    new-instance v0, Lads_mobile_sdk/ug;

    const/16 v12, 0x14

    const/16 v15, 0x800

    move-object/from16 v20, v1

    const-string v1, "PSN_TIMESTAMP_EXPIRED"

    invoke-direct {v0, v1, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 133
    new-instance v1, Lads_mobile_sdk/ug;

    const/16 v12, 0x15

    const/16 v15, 0x1000

    move-object/from16 v24, v0

    const-string v0, "PSN_ENCODE_SIZE_FAIL"

    invoke-direct {v1, v0, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/ug;->b:Lads_mobile_sdk/ug;

    .line 141
    new-instance v0, Lads_mobile_sdk/ug;

    const/16 v12, 0x16

    const/16 v15, 0x2000

    move-object/from16 v25, v1

    const-string v1, "PSN_BLANK_VALUE"

    invoke-direct {v0, v1, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 149
    new-instance v1, Lads_mobile_sdk/ug;

    const/16 v12, 0x17

    const/16 v15, 0x4000

    move-object/from16 v26, v0

    const-string v0, "PSN_INITIALIZATION_FAIL"

    invoke-direct {v1, v0, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/ug;->c:Lads_mobile_sdk/ug;

    .line 157
    new-instance v0, Lads_mobile_sdk/ug;

    const/16 v12, 0x18

    const v15, 0x8000

    move-object/from16 v27, v1

    const-string v1, "PSN_GASS_CLIENT_FAIL"

    invoke-direct {v0, v1, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 165
    new-instance v1, Lads_mobile_sdk/ug;

    const/16 v12, 0x19

    const/high16 v15, 0x10000

    move-object/from16 v28, v0

    const-string v0, "PSN_SIGNALS_TIMEOUT"

    invoke-direct {v1, v0, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    .line 173
    new-instance v0, Lads_mobile_sdk/ug;

    const/16 v12, 0x1a

    const/high16 v15, 0x20000

    move-object/from16 v29, v1

    const-string v1, "PSN_TINK_FAIL"

    invoke-direct {v0, v1, v12, v15}, Lads_mobile_sdk/ug;-><init>(Ljava/lang/String;II)V

    move-object v12, v5

    move-object/from16 v1, v21

    move-object/from16 v15, v22

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v27, v0

    move-object v5, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v23

    move-object/from16 v23, v26

    move-object/from16 v26, v29

    .line 174
    filled-new-array/range {v1 .. v27}, [Lads_mobile_sdk/ug;

    move-result-object v0

    .line 175
    sput-object v0, Lads_mobile_sdk/ug;->d:[Lads_mobile_sdk/ug;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 8588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8589
    iput p3, p0, Lads_mobile_sdk/ug;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/ug;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ug;->d:[Lads_mobile_sdk/ug;

    invoke-virtual {v0}, [Lads_mobile_sdk/ug;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ug;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 8503
    iget v0, p0, Lads_mobile_sdk/ug;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/ug;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8581
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 8582
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8584
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8585
    iget v1, p0, Lads_mobile_sdk/ug;->a:I

    .line 8586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8587
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8588
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
