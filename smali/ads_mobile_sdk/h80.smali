###### Class ads_mobile_sdk.h80 (ads_mobile_sdk.h80)
.class public final enum Lads_mobile_sdk/h80;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/h80;

.field public static final enum c:Lads_mobile_sdk/h80;

.field public static final enum d:Lads_mobile_sdk/h80;

.field public static final enum e:Lads_mobile_sdk/h80;

.field public static final enum f:Lads_mobile_sdk/h80;

.field public static final enum g:Lads_mobile_sdk/h80;

.field public static final enum h:Lads_mobile_sdk/h80;

.field public static final enum i:Lads_mobile_sdk/h80;

.field public static final enum j:Lads_mobile_sdk/h80;

.field public static final enum k:Lads_mobile_sdk/h80;

.field public static final enum l:Lads_mobile_sdk/h80;

.field public static final enum m:Lads_mobile_sdk/h80;

.field public static final enum n:Lads_mobile_sdk/h80;

.field public static final enum o:Lads_mobile_sdk/h80;

.field public static final enum p:Lads_mobile_sdk/h80;

.field public static final enum q:Lads_mobile_sdk/h80;

.field public static final enum r:Lads_mobile_sdk/h80;

.field public static final enum s:Lads_mobile_sdk/h80;

.field public static final enum t:Lads_mobile_sdk/h80;

.field public static final enum u:Lads_mobile_sdk/h80;

.field public static final enum v:Lads_mobile_sdk/h80;

.field public static final enum w:Lads_mobile_sdk/h80;

.field public static final enum x:Lads_mobile_sdk/h80;

.field public static final synthetic y:[Lads_mobile_sdk/h80;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 27

    .line 1
    new-instance v1, Lads_mobile_sdk/h80;

    const-string v0, "SAFE"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/h80;->b:Lads_mobile_sdk/h80;

    new-instance v2, Lads_mobile_sdk/h80;

    const-string v0, "DANGEROUS"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/h80;->c:Lads_mobile_sdk/h80;

    new-instance v3, Lads_mobile_sdk/h80;

    const-string v0, "UNCOMMON"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/h80;->d:Lads_mobile_sdk/h80;

    new-instance v4, Lads_mobile_sdk/h80;

    const-string v0, "POTENTIALLY_UNWANTED"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/h80;->e:Lads_mobile_sdk/h80;

    new-instance v5, Lads_mobile_sdk/h80;

    const-string v0, "DANGEROUS_HOST"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/h80;->f:Lads_mobile_sdk/h80;

    new-instance v6, Lads_mobile_sdk/h80;

    const-string v0, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/h80;->g:Lads_mobile_sdk/h80;

    new-instance v7, Lads_mobile_sdk/h80;

    const-string v0, "PLAY_POLICY_VIOLATION_SEVERE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/h80;->h:Lads_mobile_sdk/h80;

    new-instance v8, Lads_mobile_sdk/h80;

    const-string v0, "PLAY_POLICY_VIOLATION_OTHER"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/h80;->i:Lads_mobile_sdk/h80;

    new-instance v9, Lads_mobile_sdk/h80;

    const-string v0, "DANGEROUS_ACCOUNT_COMPROMISE"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/h80;->j:Lads_mobile_sdk/h80;

    new-instance v10, Lads_mobile_sdk/h80;

    const-string v0, "PENDING"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lads_mobile_sdk/h80;->k:Lads_mobile_sdk/h80;

    new-instance v11, Lads_mobile_sdk/h80;

    const-string v0, "PLAY_POLICY_VIOLATION_TREATMENT_ON_DEVICE"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lads_mobile_sdk/h80;->l:Lads_mobile_sdk/h80;

    new-instance v12, Lads_mobile_sdk/h80;

    const-string v0, "HIGH_RISK_BLOCK"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lads_mobile_sdk/h80;->m:Lads_mobile_sdk/h80;

    new-instance v13, Lads_mobile_sdk/h80;

    const-string v0, "HIGH_RISK_WARN"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lads_mobile_sdk/h80;->n:Lads_mobile_sdk/h80;

    new-instance v14, Lads_mobile_sdk/h80;

    const-string v0, "PROBABLY_BAD"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lads_mobile_sdk/h80;->o:Lads_mobile_sdk/h80;

    new-instance v15, Lads_mobile_sdk/h80;

    const-string v0, "VERDICT_UNSPECIFIED"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v15, v0, v1, v2}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lads_mobile_sdk/h80;->p:Lads_mobile_sdk/h80;

    new-instance v0, Lads_mobile_sdk/h80;

    const-string v1, "VERIFIER_APP_VERIFICATION_FAILED"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/h80;->q:Lads_mobile_sdk/h80;

    new-instance v1, Lads_mobile_sdk/h80;

    const-string v2, "VERIFIER_APP_VERIFICATION_INCONCLUSIVE_SYSTEM_ERROR"

    move-object/from16 v19, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v3, v0}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/h80;->r:Lads_mobile_sdk/h80;

    new-instance v2, Lads_mobile_sdk/h80;

    const-string v3, "VERIFIER_APP_VERIFICATION_INCONCLUSIVE_NETWORK_ERROR"

    const/16 v0, 0x11

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v2, v3, v0, v1}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/h80;->s:Lads_mobile_sdk/h80;

    new-instance v0, Lads_mobile_sdk/h80;

    const-string v3, "UNCOMMON_APP"

    const/16 v1, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x12

    invoke-direct {v0, v3, v2, v1}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/h80;->t:Lads_mobile_sdk/h80;

    new-instance v2, Lads_mobile_sdk/h80;

    const-string v3, "UNVERIFIED_FEATURE_ONE_INSTALL_ATTEMPT"

    const/16 v1, 0x15

    move-object/from16 v24, v0

    const/16 v0, 0x13

    invoke-direct {v2, v3, v0, v1}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/h80;->u:Lads_mobile_sdk/h80;

    new-instance v0, Lads_mobile_sdk/h80;

    const-string v3, "DPC_NOT_ALLOWLISTED"

    const/16 v1, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x14

    invoke-direct {v0, v3, v2, v1}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/h80;->v:Lads_mobile_sdk/h80;

    new-instance v2, Lads_mobile_sdk/h80;

    const-string v3, "FEATURE_ONE_HARMFUL_CONTENT"

    const/16 v1, 0x17

    move-object/from16 v26, v0

    const/16 v0, 0x15

    invoke-direct {v2, v3, v0, v1}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/h80;->w:Lads_mobile_sdk/h80;

    new-instance v0, Lads_mobile_sdk/h80;

    const-string v1, "SAFE_VERDICT_STALE"

    const/16 v3, 0x18

    move-object/from16 v22, v2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/h80;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/h80;->x:Lads_mobile_sdk/h80;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v21

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v23, v0

    .line 2
    filled-new-array/range {v1 .. v23}, [Lads_mobile_sdk/h80;

    move-result-object v0

    .line 3
    sput-object v0, Lads_mobile_sdk/h80;->y:[Lads_mobile_sdk/h80;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lads_mobile_sdk/h80;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/h80;
    .registers 1

    packed-switch p0, :pswitch_data_4a

    :pswitch_3
    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_5
    sget-object p0, Lads_mobile_sdk/h80;->x:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_8
    sget-object p0, Lads_mobile_sdk/h80;->w:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_b
    sget-object p0, Lads_mobile_sdk/h80;->v:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_e
    sget-object p0, Lads_mobile_sdk/h80;->u:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_11
    sget-object p0, Lads_mobile_sdk/h80;->t:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_14
    sget-object p0, Lads_mobile_sdk/h80;->s:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_17
    sget-object p0, Lads_mobile_sdk/h80;->r:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_1a
    sget-object p0, Lads_mobile_sdk/h80;->q:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_1d
    sget-object p0, Lads_mobile_sdk/h80;->p:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_20
    sget-object p0, Lads_mobile_sdk/h80;->o:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_23
    sget-object p0, Lads_mobile_sdk/h80;->n:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_26
    sget-object p0, Lads_mobile_sdk/h80;->m:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_29
    sget-object p0, Lads_mobile_sdk/h80;->l:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_2c
    sget-object p0, Lads_mobile_sdk/h80;->k:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_2f
    sget-object p0, Lads_mobile_sdk/h80;->j:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_32
    sget-object p0, Lads_mobile_sdk/h80;->i:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_35
    sget-object p0, Lads_mobile_sdk/h80;->h:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_38
    sget-object p0, Lads_mobile_sdk/h80;->g:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_3b
    sget-object p0, Lads_mobile_sdk/h80;->f:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_3e
    sget-object p0, Lads_mobile_sdk/h80;->e:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_41
    sget-object p0, Lads_mobile_sdk/h80;->d:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_44
    sget-object p0, Lads_mobile_sdk/h80;->c:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_47
    sget-object p0, Lads_mobile_sdk/h80;->b:Lads_mobile_sdk/h80;

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_1d
        :pswitch_1a
        :pswitch_3
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static values()[Lads_mobile_sdk/h80;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/h80;->y:[Lads_mobile_sdk/h80;

    invoke-virtual {v0}, [Lads_mobile_sdk/h80;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/h80;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 1
    iget v0, p0, Lads_mobile_sdk/h80;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/h80;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lads_mobile_sdk/h80;->a:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
