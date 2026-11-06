###### Class ads_mobile_sdk.lx (ads_mobile_sdk.lx)
.class public final enum Lads_mobile_sdk/lx;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/lx;

.field public static final enum c:Lads_mobile_sdk/lx;

.field public static final synthetic d:[Lads_mobile_sdk/lx;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 1
    new-instance v1, Lads_mobile_sdk/lx;

    const-string v0, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v2, Lads_mobile_sdk/lx;

    const-string v0, "UNIT_TEST"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v3, Lads_mobile_sdk/lx;

    const-string v0, "ADSENSE"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v4, Lads_mobile_sdk/lx;

    const-string v0, "GPT_PROD_IMPL_CONTEXT"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v4, v0, v5, v6}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 17
    new-instance v5, Lads_mobile_sdk/lx;

    const-string v0, "GENOTYPE_OBSERVER"

    const/4 v7, 0x6

    invoke-direct {v5, v0, v6, v7}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 21
    new-instance v6, Lads_mobile_sdk/lx;

    const-string v0, "CLIENT_AGE"

    const/4 v8, 0x5

    const/4 v9, 0x7

    invoke-direct {v6, v0, v8, v9}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 25
    new-instance v0, Lads_mobile_sdk/lx;

    const-string v8, "GENERATE_BID_WIN"

    const/16 v10, 0x8

    invoke-direct {v0, v8, v7, v10}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 29
    new-instance v8, Lads_mobile_sdk/lx;

    const-string v7, "GENERATE_BID_LOSS"

    const/16 v11, 0x9

    invoke-direct {v8, v7, v9, v11}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 33
    new-instance v9, Lads_mobile_sdk/lx;

    const-string v7, "SCORE_ADS"

    const/16 v12, 0xa

    invoke-direct {v9, v7, v10, v12}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 37
    new-instance v10, Lads_mobile_sdk/lx;

    const-string v7, "GPT_LOADER"

    const/16 v13, 0xb

    invoke-direct {v10, v7, v11, v13}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 46
    new-instance v11, Lads_mobile_sdk/lx;

    const-string v7, "GPT_LOADER_FOR_NON_GPT_TESTS"

    const/16 v14, 0x12

    invoke-direct {v11, v7, v12, v14}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 50
    new-instance v12, Lads_mobile_sdk/lx;

    const-string v7, "GMA_SDK"

    const/16 v15, 0xc

    invoke-direct {v12, v7, v13, v15}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lads_mobile_sdk/lx;->b:Lads_mobile_sdk/lx;

    .line 54
    new-instance v13, Lads_mobile_sdk/lx;

    const-string v7, "GPT_PUB_CONSOLE"

    const/16 v14, 0xe

    invoke-direct {v13, v7, v15, v14}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 58
    new-instance v7, Lads_mobile_sdk/lx;

    const-string v15, "ADSHIELD"

    const/16 v14, 0xd

    move-object/from16 v18, v0

    const/16 v0, 0xf

    invoke-direct {v7, v15, v14, v0}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 62
    new-instance v15, Lads_mobile_sdk/lx;

    const-string v14, "IMA"

    const/16 v0, 0x10

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v15, v14, v1, v0}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 66
    new-instance v1, Lads_mobile_sdk/lx;

    const-string v14, "GPT_SHOPPIT"

    const/16 v0, 0x11

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-direct {v1, v14, v2, v0}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 70
    new-instance v2, Lads_mobile_sdk/lx;

    const-string v14, "REAL_USER_MONITORING"

    const/16 v0, 0x13

    move-object/from16 v22, v1

    const/16 v1, 0x10

    invoke-direct {v2, v14, v1, v0}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 74
    new-instance v1, Lads_mobile_sdk/lx;

    const-string v14, "HYPERACTIVE_BUCKET"

    const/16 v0, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x11

    invoke-direct {v1, v14, v2, v0}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 78
    new-instance v0, Lads_mobile_sdk/lx;

    const-string v2, "UNITY_GMA_SDK"

    const/16 v14, 0x15

    move-object/from16 v19, v1

    const/16 v1, 0x12

    invoke-direct {v0, v2, v1, v14}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    .line 79
    new-instance v1, Lads_mobile_sdk/lx;

    const-string v2, "UNRECOGNIZED"

    const/4 v14, -0x1

    move-object/from16 v16, v0

    const/16 v0, 0x13

    invoke-direct {v1, v2, v0, v14}, Lads_mobile_sdk/lx;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/lx;->c:Lads_mobile_sdk/lx;

    move-object/from16 v2, v20

    move-object/from16 v20, v1

    move-object v1, v2

    move-object v14, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v19

    move-object/from16 v2, v21

    move-object/from16 v17, v23

    move-object/from16 v19, v16

    move-object/from16 v16, v22

    .line 80
    filled-new-array/range {v1 .. v20}, [Lads_mobile_sdk/lx;

    move-result-object v0

    .line 81
    sput-object v0, Lads_mobile_sdk/lx;->d:[Lads_mobile_sdk/lx;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 290
    iput p3, p0, Lads_mobile_sdk/lx;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/lx;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/lx;->d:[Lads_mobile_sdk/lx;

    invoke-virtual {v0}, [Lads_mobile_sdk/lx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/lx;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 207
    sget-object v0, Lads_mobile_sdk/lx;->c:Lads_mobile_sdk/lx;

    if-ne p0, v0, :cond_9

    .line 208
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 210
    :cond_9
    iget v0, p0, Lads_mobile_sdk/lx;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    const-class v1, Lads_mobile_sdk/lx;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 556
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    sget-object v1, Lads_mobile_sdk/lx;->c:Lads_mobile_sdk/lx;

    if-eq p0, v1, :cond_2a

    .line 559
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/lx;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
