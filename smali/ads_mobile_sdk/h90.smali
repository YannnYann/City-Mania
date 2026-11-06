###### Class ads_mobile_sdk.h90 (ads_mobile_sdk.h90)
.class public final enum Lads_mobile_sdk/h90;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/h90;

.field public static final enum c:Lads_mobile_sdk/h90;

.field public static final enum d:Lads_mobile_sdk/h90;

.field public static final enum e:Lads_mobile_sdk/h90;

.field public static final enum f:Lads_mobile_sdk/h90;

.field public static final enum g:Lads_mobile_sdk/h90;

.field public static final enum h:Lads_mobile_sdk/h90;

.field public static final enum i:Lads_mobile_sdk/h90;

.field public static final enum j:Lads_mobile_sdk/h90;

.field public static final enum k:Lads_mobile_sdk/h90;

.field public static final enum l:Lads_mobile_sdk/h90;

.field public static final enum m:Lads_mobile_sdk/h90;

.field public static final enum n:Lads_mobile_sdk/h90;

.field public static final enum o:Lads_mobile_sdk/h90;

.field public static final enum p:Lads_mobile_sdk/h90;

.field public static final enum q:Lads_mobile_sdk/h90;

.field public static final synthetic r:[Lads_mobile_sdk/h90;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 1
    new-instance v1, Lads_mobile_sdk/h90;

    const-string v0, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/h90;->b:Lads_mobile_sdk/h90;

    .line 9
    new-instance v2, Lads_mobile_sdk/h90;

    const-string v0, "CMD_DONT_PROCEED"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/h90;->c:Lads_mobile_sdk/h90;

    .line 13
    new-instance v3, Lads_mobile_sdk/h90;

    const-string v0, "CMD_PROCEED"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/h90;->d:Lads_mobile_sdk/h90;

    .line 21
    new-instance v4, Lads_mobile_sdk/h90;

    const-string v0, "CMD_SHOW_MORE_SECTION"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/h90;->e:Lads_mobile_sdk/h90;

    .line 25
    new-instance v5, Lads_mobile_sdk/h90;

    const-string v0, "CMD_OPEN_HELP_CENTER"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/h90;->f:Lads_mobile_sdk/h90;

    .line 29
    new-instance v6, Lads_mobile_sdk/h90;

    const-string v0, "CMD_OPEN_DIAGNOSTIC"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/h90;->g:Lads_mobile_sdk/h90;

    .line 37
    new-instance v7, Lads_mobile_sdk/h90;

    const-string v0, "CMD_RELOAD"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/h90;->h:Lads_mobile_sdk/h90;

    .line 41
    new-instance v8, Lads_mobile_sdk/h90;

    const-string v0, "CMD_OPEN_DATE_SETTINGS"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/h90;->i:Lads_mobile_sdk/h90;

    .line 45
    new-instance v9, Lads_mobile_sdk/h90;

    const-string v0, "CMD_OPEN_LOGIN"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/h90;->j:Lads_mobile_sdk/h90;

    .line 53
    new-instance v10, Lads_mobile_sdk/h90;

    const-string v0, "CMD_DO_REPORT"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lads_mobile_sdk/h90;->k:Lads_mobile_sdk/h90;

    .line 57
    new-instance v11, Lads_mobile_sdk/h90;

    const-string v0, "CMD_DONT_REPORT"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lads_mobile_sdk/h90;->l:Lads_mobile_sdk/h90;

    .line 61
    new-instance v12, Lads_mobile_sdk/h90;

    const-string v0, "CMD_OPEN_REPORTING_PRIVACY"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lads_mobile_sdk/h90;->m:Lads_mobile_sdk/h90;

    .line 65
    new-instance v13, Lads_mobile_sdk/h90;

    const-string v0, "CMD_OPEN_WHITEPAPER"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lads_mobile_sdk/h90;->n:Lads_mobile_sdk/h90;

    .line 73
    new-instance v14, Lads_mobile_sdk/h90;

    const-string v0, "CMD_REPORT_PHISHING_ERROR"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lads_mobile_sdk/h90;->o:Lads_mobile_sdk/h90;

    .line 81
    new-instance v15, Lads_mobile_sdk/h90;

    const-string v0, "CMD_OPEN_ENHANCED_PROTECTION_SETTINGS"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lads_mobile_sdk/h90;->p:Lads_mobile_sdk/h90;

    .line 89
    new-instance v0, Lads_mobile_sdk/h90;

    const-string v1, "CMD_CLOSE_INTERSTITIAL_WITHOUT_UI"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/h90;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/h90;->q:Lads_mobile_sdk/h90;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v0

    .line 90
    filled-new-array/range {v1 .. v16}, [Lads_mobile_sdk/h90;

    move-result-object v0

    .line 91
    sput-object v0, Lads_mobile_sdk/h90;->r:[Lads_mobile_sdk/h90;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 58997
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58998
    iput p3, p0, Lads_mobile_sdk/h90;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/h90;
    .registers 1

    packed-switch p0, :pswitch_data_36

    const/4 p0, 0x0

    return-object p0

    .line 58944
    :pswitch_5
    sget-object p0, Lads_mobile_sdk/h90;->q:Lads_mobile_sdk/h90;

    return-object p0

    .line 58945
    :pswitch_8
    sget-object p0, Lads_mobile_sdk/h90;->p:Lads_mobile_sdk/h90;

    return-object p0

    .line 58946
    :pswitch_b
    sget-object p0, Lads_mobile_sdk/h90;->o:Lads_mobile_sdk/h90;

    return-object p0

    .line 58947
    :pswitch_e
    sget-object p0, Lads_mobile_sdk/h90;->n:Lads_mobile_sdk/h90;

    return-object p0

    .line 58948
    :pswitch_11
    sget-object p0, Lads_mobile_sdk/h90;->m:Lads_mobile_sdk/h90;

    return-object p0

    .line 58949
    :pswitch_14
    sget-object p0, Lads_mobile_sdk/h90;->l:Lads_mobile_sdk/h90;

    return-object p0

    .line 58950
    :pswitch_17
    sget-object p0, Lads_mobile_sdk/h90;->k:Lads_mobile_sdk/h90;

    return-object p0

    .line 58951
    :pswitch_1a
    sget-object p0, Lads_mobile_sdk/h90;->j:Lads_mobile_sdk/h90;

    return-object p0

    .line 58952
    :pswitch_1d
    sget-object p0, Lads_mobile_sdk/h90;->i:Lads_mobile_sdk/h90;

    return-object p0

    .line 58953
    :pswitch_20
    sget-object p0, Lads_mobile_sdk/h90;->h:Lads_mobile_sdk/h90;

    return-object p0

    .line 58954
    :pswitch_23
    sget-object p0, Lads_mobile_sdk/h90;->g:Lads_mobile_sdk/h90;

    return-object p0

    .line 58955
    :pswitch_26
    sget-object p0, Lads_mobile_sdk/h90;->f:Lads_mobile_sdk/h90;

    return-object p0

    .line 58956
    :pswitch_29
    sget-object p0, Lads_mobile_sdk/h90;->e:Lads_mobile_sdk/h90;

    return-object p0

    .line 58957
    :pswitch_2c
    sget-object p0, Lads_mobile_sdk/h90;->d:Lads_mobile_sdk/h90;

    return-object p0

    .line 58958
    :pswitch_2f
    sget-object p0, Lads_mobile_sdk/h90;->c:Lads_mobile_sdk/h90;

    return-object p0

    .line 58959
    :pswitch_32
    sget-object p0, Lads_mobile_sdk/h90;->b:Lads_mobile_sdk/h90;

    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
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

.method public static values()[Lads_mobile_sdk/h90;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/h90;->r:[Lads_mobile_sdk/h90;

    invoke-virtual {v0}, [Lads_mobile_sdk/h90;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/h90;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 58923
    iget v0, p0, Lads_mobile_sdk/h90;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/h90;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58990
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 58991
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58993
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58994
    iget v1, p0, Lads_mobile_sdk/h90;->a:I

    .line 58995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58996
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58997
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
