###### Class ads_mobile_sdk.jt (ads_mobile_sdk.jt)
.class public final enum Lads_mobile_sdk/jt;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/jt;

.field public static final enum c:Lads_mobile_sdk/jt;

.field public static final enum d:Lads_mobile_sdk/jt;

.field public static final enum e:Lads_mobile_sdk/jt;

.field public static final enum f:Lads_mobile_sdk/jt;

.field public static final enum g:Lads_mobile_sdk/jt;

.field public static final enum h:Lads_mobile_sdk/jt;

.field public static final enum i:Lads_mobile_sdk/jt;

.field public static final enum j:Lads_mobile_sdk/jt;

.field public static final enum k:Lads_mobile_sdk/jt;

.field public static final enum l:Lads_mobile_sdk/jt;

.field public static final enum m:Lads_mobile_sdk/jt;

.field public static final enum n:Lads_mobile_sdk/jt;

.field public static final enum o:Lads_mobile_sdk/jt;

.field public static final enum p:Lads_mobile_sdk/jt;

.field public static final enum q:Lads_mobile_sdk/jt;

.field public static final enum r:Lads_mobile_sdk/jt;

.field public static final enum s:Lads_mobile_sdk/jt;

.field public static final enum t:Lads_mobile_sdk/jt;

.field public static final enum u:Lads_mobile_sdk/jt;

.field public static final enum v:Lads_mobile_sdk/jt;

.field public static final enum w:Lads_mobile_sdk/jt;

.field public static final enum x:Lads_mobile_sdk/jt;

.field public static final synthetic y:[Lads_mobile_sdk/jt;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 1
    new-instance v1, Lads_mobile_sdk/jt;

    const-string v0, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/jt;->b:Lads_mobile_sdk/jt;

    .line 10
    new-instance v2, Lads_mobile_sdk/jt;

    const-string v0, "ADAPTER_CREATION_FAILURE"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/jt;->c:Lads_mobile_sdk/jt;

    .line 18
    new-instance v3, Lads_mobile_sdk/jt;

    const-string v0, "SIGNAL_COLLECTION_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/jt;->d:Lads_mobile_sdk/jt;

    .line 26
    new-instance v4, Lads_mobile_sdk/jt;

    const-string v0, "SIGNAL_COLLECTION_TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/jt;->e:Lads_mobile_sdk/jt;

    .line 35
    new-instance v5, Lads_mobile_sdk/jt;

    const-string v0, "UNKNOWN_ERROR"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/jt;->f:Lads_mobile_sdk/jt;

    .line 44
    new-instance v6, Lads_mobile_sdk/jt;

    const-string v0, "ADAPTER_PROTOCOL_CONFORMANCE_FAILURE"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/jt;->g:Lads_mobile_sdk/jt;

    .line 53
    new-instance v7, Lads_mobile_sdk/jt;

    const/4 v0, 0x6

    const/16 v8, 0x64

    const-string v9, "COLLECTOR_FUNCTION_TIMEDOUT"

    invoke-direct {v7, v9, v0, v8}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/jt;->h:Lads_mobile_sdk/jt;

    .line 62
    new-instance v8, Lads_mobile_sdk/jt;

    const/4 v0, 0x7

    const/16 v9, 0x65

    const-string v10, "COLLECTOR_NOT_REGISTERED"

    invoke-direct {v8, v10, v0, v9}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/jt;->i:Lads_mobile_sdk/jt;

    .line 70
    new-instance v9, Lads_mobile_sdk/jt;

    const/16 v0, 0x8

    const/16 v10, 0x66

    const-string v11, "INVALID_COLLECTOR_ID"

    invoke-direct {v9, v11, v0, v10}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/jt;->j:Lads_mobile_sdk/jt;

    .line 79
    new-instance v10, Lads_mobile_sdk/jt;

    const/16 v0, 0x9

    const/16 v11, 0x67

    const-string v12, "UNKNOWN_COLLECTOR"

    invoke-direct {v10, v12, v0, v11}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lads_mobile_sdk/jt;->k:Lads_mobile_sdk/jt;

    .line 87
    new-instance v11, Lads_mobile_sdk/jt;

    const/16 v0, 0xa

    const/16 v12, 0x68

    const-string v13, "COLLECTOR_THROTTLED"

    invoke-direct {v11, v13, v0, v12}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lads_mobile_sdk/jt;->l:Lads_mobile_sdk/jt;

    .line 95
    new-instance v12, Lads_mobile_sdk/jt;

    const/16 v0, 0xb

    const/16 v13, 0x69

    const-string v14, "INVALID_COLLECTOR_FUNCTION"

    invoke-direct {v12, v14, v0, v13}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lads_mobile_sdk/jt;->m:Lads_mobile_sdk/jt;

    .line 103
    new-instance v13, Lads_mobile_sdk/jt;

    const/16 v0, 0xc

    const/16 v14, 0x6a

    const-string v15, "COLLECTOR_FUNCTION_REJECTED"

    invoke-direct {v13, v15, v0, v14}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lads_mobile_sdk/jt;->n:Lads_mobile_sdk/jt;

    .line 111
    new-instance v14, Lads_mobile_sdk/jt;

    const/16 v0, 0xd

    const/16 v15, 0x6b

    move-object/from16 v16, v1

    const-string v1, "COLLECTOR_FUNCTION_FAILED"

    invoke-direct {v14, v1, v0, v15}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lads_mobile_sdk/jt;->o:Lads_mobile_sdk/jt;

    .line 119
    new-instance v15, Lads_mobile_sdk/jt;

    const/16 v0, 0xe

    const/16 v1, 0x6c

    move-object/from16 v17, v2

    const-string v2, "SIGNAL_EXCEEDS_MAX_LENGTH"

    invoke-direct {v15, v2, v0, v1}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lads_mobile_sdk/jt;->p:Lads_mobile_sdk/jt;

    .line 127
    new-instance v0, Lads_mobile_sdk/jt;

    const/16 v1, 0xf

    const/16 v2, 0x6d

    move-object/from16 v18, v3

    const-string v3, "COLLECTOR_SCRIPT_LOAD_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/jt;->q:Lads_mobile_sdk/jt;

    .line 135
    new-instance v1, Lads_mobile_sdk/jt;

    const/16 v2, 0x10

    const/16 v3, 0x6e

    move-object/from16 v19, v0

    const-string v0, "UNDEFINED_PROVIDER"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/jt;->r:Lads_mobile_sdk/jt;

    .line 143
    new-instance v0, Lads_mobile_sdk/jt;

    const/16 v2, 0x11

    const/16 v3, 0x70

    move-object/from16 v20, v1

    const-string v1, "INVALID_PROVIDER_TYPE"

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/jt;->s:Lads_mobile_sdk/jt;

    .line 151
    new-instance v1, Lads_mobile_sdk/jt;

    const/16 v2, 0x12

    const/16 v3, 0x6f

    move-object/from16 v21, v0

    const-string v0, "SIGNAL_NULL_OR_UNDEFINED"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/jt;->t:Lads_mobile_sdk/jt;

    .line 160
    new-instance v0, Lads_mobile_sdk/jt;

    const/16 v2, 0x13

    const/16 v3, 0x71

    move-object/from16 v22, v1

    const-string v1, "SIGNAL_INVALID_TYPE"

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/jt;->u:Lads_mobile_sdk/jt;

    .line 168
    new-instance v1, Lads_mobile_sdk/jt;

    const/16 v2, 0x14

    const/16 v3, 0x72

    move-object/from16 v23, v0

    const-string v0, "COLLECTOR_ENDPOINT_LOAD_FAILED"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/jt;->v:Lads_mobile_sdk/jt;

    .line 176
    new-instance v0, Lads_mobile_sdk/jt;

    const/16 v2, 0x15

    const/16 v3, 0xc8

    move-object/from16 v24, v1

    const-string v1, "URL_PARAM_SECURE_SIGNALS_PARSING_FAILED"

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/jt;->w:Lads_mobile_sdk/jt;

    .line 184
    new-instance v1, Lads_mobile_sdk/jt;

    const/16 v2, 0x16

    const/16 v3, 0xc9

    move-object/from16 v25, v0

    const-string v0, "URL_PARAM_SECURE_SIGNALS_JSON_PARSING_FAILED"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/jt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/jt;->x:Lads_mobile_sdk/jt;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    .line 185
    filled-new-array/range {v1 .. v23}, [Lads_mobile_sdk/jt;

    move-result-object v0

    .line 186
    sput-object v0, Lads_mobile_sdk/jt;->y:[Lads_mobile_sdk/jt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 542
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 543
    iput p3, p0, Lads_mobile_sdk/jt;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/jt;
    .registers 2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_60

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_5d

    if-eqz p0, :cond_5a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_57

    const/4 v0, 0x2

    if-eq p0, v0, :cond_54

    const/4 v0, 0x3

    if-eq p0, v0, :cond_51

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4b

    packed-switch p0, :pswitch_data_64

    const/4 p0, 0x0

    return-object p0

    .line 487
    :pswitch_1e
    sget-object p0, Lads_mobile_sdk/jt;->v:Lads_mobile_sdk/jt;

    return-object p0

    .line 488
    :pswitch_21
    sget-object p0, Lads_mobile_sdk/jt;->u:Lads_mobile_sdk/jt;

    return-object p0

    .line 489
    :pswitch_24
    sget-object p0, Lads_mobile_sdk/jt;->s:Lads_mobile_sdk/jt;

    return-object p0

    .line 490
    :pswitch_27
    sget-object p0, Lads_mobile_sdk/jt;->t:Lads_mobile_sdk/jt;

    return-object p0

    .line 491
    :pswitch_2a
    sget-object p0, Lads_mobile_sdk/jt;->r:Lads_mobile_sdk/jt;

    return-object p0

    .line 492
    :pswitch_2d
    sget-object p0, Lads_mobile_sdk/jt;->q:Lads_mobile_sdk/jt;

    return-object p0

    .line 493
    :pswitch_30
    sget-object p0, Lads_mobile_sdk/jt;->p:Lads_mobile_sdk/jt;

    return-object p0

    .line 494
    :pswitch_33
    sget-object p0, Lads_mobile_sdk/jt;->o:Lads_mobile_sdk/jt;

    return-object p0

    .line 495
    :pswitch_36
    sget-object p0, Lads_mobile_sdk/jt;->n:Lads_mobile_sdk/jt;

    return-object p0

    .line 496
    :pswitch_39
    sget-object p0, Lads_mobile_sdk/jt;->m:Lads_mobile_sdk/jt;

    return-object p0

    .line 497
    :pswitch_3c
    sget-object p0, Lads_mobile_sdk/jt;->l:Lads_mobile_sdk/jt;

    return-object p0

    .line 498
    :pswitch_3f
    sget-object p0, Lads_mobile_sdk/jt;->k:Lads_mobile_sdk/jt;

    return-object p0

    .line 499
    :pswitch_42
    sget-object p0, Lads_mobile_sdk/jt;->j:Lads_mobile_sdk/jt;

    return-object p0

    .line 500
    :pswitch_45
    sget-object p0, Lads_mobile_sdk/jt;->i:Lads_mobile_sdk/jt;

    return-object p0

    .line 501
    :pswitch_48
    sget-object p0, Lads_mobile_sdk/jt;->h:Lads_mobile_sdk/jt;

    return-object p0

    .line 502
    :cond_4b
    sget-object p0, Lads_mobile_sdk/jt;->g:Lads_mobile_sdk/jt;

    return-object p0

    .line 503
    :cond_4e
    sget-object p0, Lads_mobile_sdk/jt;->f:Lads_mobile_sdk/jt;

    return-object p0

    .line 504
    :cond_51
    sget-object p0, Lads_mobile_sdk/jt;->e:Lads_mobile_sdk/jt;

    return-object p0

    .line 505
    :cond_54
    sget-object p0, Lads_mobile_sdk/jt;->d:Lads_mobile_sdk/jt;

    return-object p0

    .line 506
    :cond_57
    sget-object p0, Lads_mobile_sdk/jt;->c:Lads_mobile_sdk/jt;

    return-object p0

    .line 507
    :cond_5a
    sget-object p0, Lads_mobile_sdk/jt;->b:Lads_mobile_sdk/jt;

    return-object p0

    .line 529
    :cond_5d
    sget-object p0, Lads_mobile_sdk/jt;->x:Lads_mobile_sdk/jt;

    return-object p0

    .line 530
    :cond_60
    sget-object p0, Lads_mobile_sdk/jt;->w:Lads_mobile_sdk/jt;

    return-object p0

    nop

    :pswitch_data_64
    .packed-switch 0x64
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static values()[Lads_mobile_sdk/jt;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/jt;->y:[Lads_mobile_sdk/jt;

    invoke-virtual {v0}, [Lads_mobile_sdk/jt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/jt;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 461
    iget v0, p0, Lads_mobile_sdk/jt;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/jt;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 536
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget v1, p0, Lads_mobile_sdk/jt;->a:I

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
