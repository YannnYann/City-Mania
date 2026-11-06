###### Class ads_mobile_sdk.s00 (ads_mobile_sdk.s00)
.class public final enum Lads_mobile_sdk/s00;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum A:Lads_mobile_sdk/s00;

.field public static final enum B:Lads_mobile_sdk/s00;

.field public static final enum C:Lads_mobile_sdk/s00;

.field public static final enum D:Lads_mobile_sdk/s00;

.field public static final enum E:Lads_mobile_sdk/s00;

.field public static final enum F:Lads_mobile_sdk/s00;

.field public static final synthetic G:[Lads_mobile_sdk/s00;

.field public static final enum b:Lads_mobile_sdk/s00;

.field public static final enum c:Lads_mobile_sdk/s00;

.field public static final enum d:Lads_mobile_sdk/s00;

.field public static final enum e:Lads_mobile_sdk/s00;

.field public static final enum f:Lads_mobile_sdk/s00;

.field public static final enum g:Lads_mobile_sdk/s00;

.field public static final enum h:Lads_mobile_sdk/s00;

.field public static final enum i:Lads_mobile_sdk/s00;

.field public static final enum j:Lads_mobile_sdk/s00;

.field public static final enum k:Lads_mobile_sdk/s00;

.field public static final enum l:Lads_mobile_sdk/s00;

.field public static final enum m:Lads_mobile_sdk/s00;

.field public static final enum n:Lads_mobile_sdk/s00;

.field public static final enum o:Lads_mobile_sdk/s00;

.field public static final enum p:Lads_mobile_sdk/s00;

.field public static final enum q:Lads_mobile_sdk/s00;

.field public static final enum r:Lads_mobile_sdk/s00;

.field public static final enum s:Lads_mobile_sdk/s00;

.field public static final enum t:Lads_mobile_sdk/s00;

.field public static final enum u:Lads_mobile_sdk/s00;

.field public static final enum v:Lads_mobile_sdk/s00;

.field public static final enum w:Lads_mobile_sdk/s00;

.field public static final enum x:Lads_mobile_sdk/s00;

.field public static final enum y:Lads_mobile_sdk/s00;

.field public static final enum z:Lads_mobile_sdk/s00;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 34

    .line 1
    new-instance v1, Lads_mobile_sdk/s00;

    const-string v0, "API_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->b:Lads_mobile_sdk/s00;

    .line 10
    new-instance v2, Lads_mobile_sdk/s00;

    const-string v0, "API_READ_SHARED_PREFERENCES_CONSENT_DATA"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/s00;->c:Lads_mobile_sdk/s00;

    .line 19
    new-instance v3, Lads_mobile_sdk/s00;

    const-string v0, "API_READ_FLAG_VALUES"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/s00;->d:Lads_mobile_sdk/s00;

    .line 28
    new-instance v4, Lads_mobile_sdk/s00;

    const-string v0, "API_WRITE_FLAG_VALUES"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/s00;->e:Lads_mobile_sdk/s00;

    .line 36
    new-instance v5, Lads_mobile_sdk/s00;

    const-string v0, "API_READ_CLD_RESPONSE"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/s00;->f:Lads_mobile_sdk/s00;

    .line 44
    new-instance v6, Lads_mobile_sdk/s00;

    const-string v0, "API_WRITE_CLD_RESPONSE"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/s00;->g:Lads_mobile_sdk/s00;

    .line 52
    new-instance v7, Lads_mobile_sdk/s00;

    const-string v0, "API_GET_WEBVIEW_COOKIE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/s00;->h:Lads_mobile_sdk/s00;

    .line 60
    new-instance v8, Lads_mobile_sdk/s00;

    const-string v0, "API_SET_WEBVIEW_COOKIE"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/s00;->i:Lads_mobile_sdk/s00;

    .line 68
    new-instance v9, Lads_mobile_sdk/s00;

    const-string v0, "API_CLEAR_WEBVIEW_COOKIE"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/s00;->j:Lads_mobile_sdk/s00;

    .line 76
    new-instance v10, Lads_mobile_sdk/s00;

    const-string v0, "API_READ_SESSION_ID"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lads_mobile_sdk/s00;->k:Lads_mobile_sdk/s00;

    .line 84
    new-instance v11, Lads_mobile_sdk/s00;

    const-string v0, "API_READ_ANDROID_ID"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lads_mobile_sdk/s00;->l:Lads_mobile_sdk/s00;

    .line 93
    new-instance v12, Lads_mobile_sdk/s00;

    const-string v0, "API_READ_ADVERTISING_ID"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lads_mobile_sdk/s00;->m:Lads_mobile_sdk/s00;

    .line 101
    new-instance v13, Lads_mobile_sdk/s00;

    const-string v0, "API_READ_APP_SET_ID"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lads_mobile_sdk/s00;->n:Lads_mobile_sdk/s00;

    .line 109
    new-instance v14, Lads_mobile_sdk/s00;

    const-string v0, "API_PER_APP_ID_V1"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lads_mobile_sdk/s00;->o:Lads_mobile_sdk/s00;

    .line 117
    new-instance v15, Lads_mobile_sdk/s00;

    const-string v0, "API_PER_APP_ID_V2"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lads_mobile_sdk/s00;->p:Lads_mobile_sdk/s00;

    .line 125
    new-instance v0, Lads_mobile_sdk/s00;

    const-string v1, "API_CLEAR_PER_APP_ID_V1"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->q:Lads_mobile_sdk/s00;

    .line 133
    new-instance v1, Lads_mobile_sdk/s00;

    const-string v2, "API_CLEAR_PER_APP_ID_V2"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v0}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->r:Lads_mobile_sdk/s00;

    .line 141
    new-instance v0, Lads_mobile_sdk/s00;

    const-string v2, "API_GET_TOPICS"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1, v1}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->s:Lads_mobile_sdk/s00;

    .line 150
    new-instance v1, Lads_mobile_sdk/s00;

    const-string v2, "API_ATTRIBUTION_REPORTING"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0, v0}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->t:Lads_mobile_sdk/s00;

    .line 159
    new-instance v0, Lads_mobile_sdk/s00;

    const-string v2, "API_READ_FIREBASE_APP_ID"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1, v1}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->u:Lads_mobile_sdk/s00;

    .line 167
    new-instance v1, Lads_mobile_sdk/s00;

    const-string v2, "API_READ_FIREBASE_APP_INSTANCE_ID"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0, v0}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->v:Lads_mobile_sdk/s00;

    .line 175
    new-instance v0, Lads_mobile_sdk/s00;

    const-string v2, "API_READ_FIREBASE_AD_EVENT_ID"

    move-object/from16 v23, v1

    const/16 v1, 0x15

    invoke-direct {v0, v2, v1, v1}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->w:Lads_mobile_sdk/s00;

    .line 183
    new-instance v1, Lads_mobile_sdk/s00;

    const/16 v2, 0x16

    move-object/from16 v24, v0

    const/16 v0, 0x16

    move-object/from16 v25, v3

    const-string v3, "API_READ_TRUSTLESS_TOKEN"

    invoke-direct {v1, v3, v2, v0}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->x:Lads_mobile_sdk/s00;

    .line 191
    new-instance v0, Lads_mobile_sdk/s00;

    const/16 v2, 0x17

    const/16 v3, 0x17

    move-object/from16 v26, v1

    const-string v1, "API_READ_AMAZON_FIRE_AD_ID"

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->y:Lads_mobile_sdk/s00;

    .line 199
    new-instance v1, Lads_mobile_sdk/s00;

    const/16 v2, 0x18

    const/16 v3, 0x18

    move-object/from16 v27, v0

    const-string v0, "API_PERSISTENT_CACHE"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->z:Lads_mobile_sdk/s00;

    .line 207
    new-instance v0, Lads_mobile_sdk/s00;

    const/16 v2, 0x19

    const/16 v3, 0x19

    move-object/from16 v28, v1

    const-string v1, "API_CLEAR_PERSISTENT_CACHE"

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->A:Lads_mobile_sdk/s00;

    .line 215
    new-instance v1, Lads_mobile_sdk/s00;

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    move-object/from16 v29, v0

    const-string v0, "API_READ_PERSISTENT_SDK_CORE_DATA"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->B:Lads_mobile_sdk/s00;

    .line 223
    new-instance v0, Lads_mobile_sdk/s00;

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    move-object/from16 v30, v1

    const-string v1, "API_WRITE_PERSISTENT_SDK_CORE_DATA"

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->C:Lads_mobile_sdk/s00;

    .line 231
    new-instance v1, Lads_mobile_sdk/s00;

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    move-object/from16 v31, v0

    const-string v0, "API_READ_EOID"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->D:Lads_mobile_sdk/s00;

    .line 239
    new-instance v0, Lads_mobile_sdk/s00;

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    move-object/from16 v32, v1

    const-string v1, "API_CLEAR_EOID"

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/s00;->E:Lads_mobile_sdk/s00;

    .line 240
    new-instance v1, Lads_mobile_sdk/s00;

    const/16 v2, 0x1e

    const/4 v3, -0x1

    move-object/from16 v33, v0

    const-string v0, "UNRECOGNIZED"

    invoke-direct {v1, v0, v2, v3}, Lads_mobile_sdk/s00;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/s00;->F:Lads_mobile_sdk/s00;

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v3, v25

    move-object/from16 v23, v26

    move-object/from16 v25, v28

    move-object/from16 v26, v29

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v31, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v33

    .line 241
    filled-new-array/range {v1 .. v31}, [Lads_mobile_sdk/s00;

    move-result-object v0

    .line 242
    sput-object v0, Lads_mobile_sdk/s00;->G:[Lads_mobile_sdk/s00;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 619
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 620
    iput p3, p0, Lads_mobile_sdk/s00;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/s00;
    .registers 1

    packed-switch p0, :pswitch_data_60

    const/4 p0, 0x0

    return-object p0

    .line 564
    :pswitch_5
    sget-object p0, Lads_mobile_sdk/s00;->E:Lads_mobile_sdk/s00;

    return-object p0

    .line 565
    :pswitch_8
    sget-object p0, Lads_mobile_sdk/s00;->D:Lads_mobile_sdk/s00;

    return-object p0

    .line 566
    :pswitch_b
    sget-object p0, Lads_mobile_sdk/s00;->C:Lads_mobile_sdk/s00;

    return-object p0

    .line 567
    :pswitch_e
    sget-object p0, Lads_mobile_sdk/s00;->B:Lads_mobile_sdk/s00;

    return-object p0

    .line 568
    :pswitch_11
    sget-object p0, Lads_mobile_sdk/s00;->A:Lads_mobile_sdk/s00;

    return-object p0

    .line 569
    :pswitch_14
    sget-object p0, Lads_mobile_sdk/s00;->z:Lads_mobile_sdk/s00;

    return-object p0

    .line 570
    :pswitch_17
    sget-object p0, Lads_mobile_sdk/s00;->y:Lads_mobile_sdk/s00;

    return-object p0

    .line 571
    :pswitch_1a
    sget-object p0, Lads_mobile_sdk/s00;->x:Lads_mobile_sdk/s00;

    return-object p0

    .line 572
    :pswitch_1d
    sget-object p0, Lads_mobile_sdk/s00;->w:Lads_mobile_sdk/s00;

    return-object p0

    .line 573
    :pswitch_20
    sget-object p0, Lads_mobile_sdk/s00;->v:Lads_mobile_sdk/s00;

    return-object p0

    .line 574
    :pswitch_23
    sget-object p0, Lads_mobile_sdk/s00;->u:Lads_mobile_sdk/s00;

    return-object p0

    .line 575
    :pswitch_26
    sget-object p0, Lads_mobile_sdk/s00;->t:Lads_mobile_sdk/s00;

    return-object p0

    .line 576
    :pswitch_29
    sget-object p0, Lads_mobile_sdk/s00;->s:Lads_mobile_sdk/s00;

    return-object p0

    .line 577
    :pswitch_2c
    sget-object p0, Lads_mobile_sdk/s00;->r:Lads_mobile_sdk/s00;

    return-object p0

    .line 578
    :pswitch_2f
    sget-object p0, Lads_mobile_sdk/s00;->q:Lads_mobile_sdk/s00;

    return-object p0

    .line 579
    :pswitch_32
    sget-object p0, Lads_mobile_sdk/s00;->p:Lads_mobile_sdk/s00;

    return-object p0

    .line 580
    :pswitch_35
    sget-object p0, Lads_mobile_sdk/s00;->o:Lads_mobile_sdk/s00;

    return-object p0

    .line 581
    :pswitch_38
    sget-object p0, Lads_mobile_sdk/s00;->n:Lads_mobile_sdk/s00;

    return-object p0

    .line 582
    :pswitch_3b
    sget-object p0, Lads_mobile_sdk/s00;->m:Lads_mobile_sdk/s00;

    return-object p0

    .line 583
    :pswitch_3e
    sget-object p0, Lads_mobile_sdk/s00;->l:Lads_mobile_sdk/s00;

    return-object p0

    .line 584
    :pswitch_41
    sget-object p0, Lads_mobile_sdk/s00;->k:Lads_mobile_sdk/s00;

    return-object p0

    .line 585
    :pswitch_44
    sget-object p0, Lads_mobile_sdk/s00;->j:Lads_mobile_sdk/s00;

    return-object p0

    .line 586
    :pswitch_47
    sget-object p0, Lads_mobile_sdk/s00;->i:Lads_mobile_sdk/s00;

    return-object p0

    .line 587
    :pswitch_4a
    sget-object p0, Lads_mobile_sdk/s00;->h:Lads_mobile_sdk/s00;

    return-object p0

    .line 588
    :pswitch_4d
    sget-object p0, Lads_mobile_sdk/s00;->g:Lads_mobile_sdk/s00;

    return-object p0

    .line 589
    :pswitch_50
    sget-object p0, Lads_mobile_sdk/s00;->f:Lads_mobile_sdk/s00;

    return-object p0

    .line 590
    :pswitch_53
    sget-object p0, Lads_mobile_sdk/s00;->e:Lads_mobile_sdk/s00;

    return-object p0

    .line 591
    :pswitch_56
    sget-object p0, Lads_mobile_sdk/s00;->d:Lads_mobile_sdk/s00;

    return-object p0

    .line 592
    :pswitch_59
    sget-object p0, Lads_mobile_sdk/s00;->c:Lads_mobile_sdk/s00;

    return-object p0

    .line 593
    :pswitch_5c
    sget-object p0, Lads_mobile_sdk/s00;->b:Lads_mobile_sdk/s00;

    return-object p0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static values()[Lads_mobile_sdk/s00;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/s00;->G:[Lads_mobile_sdk/s00;

    invoke-virtual {v0}, [Lads_mobile_sdk/s00;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/s00;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 526
    sget-object v0, Lads_mobile_sdk/s00;->F:Lads_mobile_sdk/s00;

    if-ne p0, v0, :cond_9

    .line 527
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 529
    :cond_9
    iget v0, p0, Lads_mobile_sdk/s00;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    const-class v1, Lads_mobile_sdk/s00;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1215
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 1216
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    sget-object v1, Lads_mobile_sdk/s00;->F:Lads_mobile_sdk/s00;

    if-eq p0, v1, :cond_2a

    .line 1219
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/s00;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
