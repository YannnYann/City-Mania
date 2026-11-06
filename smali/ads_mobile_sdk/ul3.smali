###### Class ads_mobile_sdk.ul3 (ads_mobile_sdk.ul3)
.class public final enum Lads_mobile_sdk/ul3;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/ul3;

.field public static final enum c:Lads_mobile_sdk/ul3;

.field public static final enum d:Lads_mobile_sdk/ul3;

.field public static final enum e:Lads_mobile_sdk/ul3;

.field public static final enum f:Lads_mobile_sdk/ul3;

.field public static final enum g:Lads_mobile_sdk/ul3;

.field public static final enum h:Lads_mobile_sdk/ul3;

.field public static final enum i:Lads_mobile_sdk/ul3;

.field public static final enum j:Lads_mobile_sdk/ul3;

.field public static final enum k:Lads_mobile_sdk/ul3;

.field public static final enum l:Lads_mobile_sdk/ul3;

.field public static final enum m:Lads_mobile_sdk/ul3;

.field public static final enum n:Lads_mobile_sdk/ul3;

.field public static final synthetic o:[Lads_mobile_sdk/ul3;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lads_mobile_sdk/ul3;

    const-string v1, "STATUS_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/ul3;->b:Lads_mobile_sdk/ul3;

    .line 5
    new-instance v1, Lads_mobile_sdk/ul3;

    const-string v2, "STATUS_UPDATE_PROGRAM_BYTECODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/ul3;->c:Lads_mobile_sdk/ul3;

    .line 9
    new-instance v2, Lads_mobile_sdk/ul3;

    const-string v3, "STATUS_UPDATE_VM_AND_PROGRAM_BYTECODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/ul3;->d:Lads_mobile_sdk/ul3;

    .line 13
    new-instance v3, Lads_mobile_sdk/ul3;

    const-string v4, "STATUS_NO_UPDATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/ul3;->e:Lads_mobile_sdk/ul3;

    .line 17
    new-instance v4, Lads_mobile_sdk/ul3;

    const-string v5, "STATUS_FAILURE_ARCHITECTURE_NOT_SUPPORTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/ul3;->f:Lads_mobile_sdk/ul3;

    .line 21
    new-instance v5, Lads_mobile_sdk/ul3;

    const-string v6, "STATUS_FAILURE_INVALID_RESPONSE_DECODE_FAILURE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/ul3;->g:Lads_mobile_sdk/ul3;

    .line 25
    new-instance v6, Lads_mobile_sdk/ul3;

    const-string v7, "STATUS_FAILURE_INVALID_RESPONSE_HTTP_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/ul3;->h:Lads_mobile_sdk/ul3;

    .line 29
    new-instance v7, Lads_mobile_sdk/ul3;

    const-string v8, "STATUS_FAILURE_INVALID_RESPONSE_EMPTY_BYTECODE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/ul3;->i:Lads_mobile_sdk/ul3;

    .line 33
    new-instance v8, Lads_mobile_sdk/ul3;

    const-string v9, "STATUS_FAILURE_INVALID_RESPONSE_PROTO_ERROR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/ul3;->j:Lads_mobile_sdk/ul3;

    .line 37
    new-instance v9, Lads_mobile_sdk/ul3;

    const-string v10, "STATUS_FAILURE_INVALID_RESPONSE_PROTO_ERROR_NPE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/ul3;->k:Lads_mobile_sdk/ul3;

    .line 41
    new-instance v10, Lads_mobile_sdk/ul3;

    const-string v11, "STATUS_FAILURE_INVALID_RESPONSE_PROGRAM_VALIDATION_FAILED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lads_mobile_sdk/ul3;->l:Lads_mobile_sdk/ul3;

    .line 45
    new-instance v11, Lads_mobile_sdk/ul3;

    const-string v12, "STATUS_FAILURE_INVALID_RESPONSE_SIGNATURE_VALIDATION_FAILED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lads_mobile_sdk/ul3;->m:Lads_mobile_sdk/ul3;

    .line 49
    new-instance v12, Lads_mobile_sdk/ul3;

    const-string v13, "STATUS_FAILURE_INVALID_RESPONSE_HTTP_RUNTIME_EXCEPTION"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lads_mobile_sdk/ul3;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lads_mobile_sdk/ul3;->n:Lads_mobile_sdk/ul3;

    .line 50
    filled-new-array/range {v0 .. v12}, [Lads_mobile_sdk/ul3;

    move-result-object v0

    .line 51
    sput-object v0, Lads_mobile_sdk/ul3;->o:[Lads_mobile_sdk/ul3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 198
    iput p3, p0, Lads_mobile_sdk/ul3;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/ul3;
    .registers 1

    packed-switch p0, :pswitch_data_2c

    const/4 p0, 0x0

    return-object p0

    .line 144
    :pswitch_5
    sget-object p0, Lads_mobile_sdk/ul3;->n:Lads_mobile_sdk/ul3;

    return-object p0

    .line 145
    :pswitch_8
    sget-object p0, Lads_mobile_sdk/ul3;->m:Lads_mobile_sdk/ul3;

    return-object p0

    .line 146
    :pswitch_b
    sget-object p0, Lads_mobile_sdk/ul3;->l:Lads_mobile_sdk/ul3;

    return-object p0

    .line 147
    :pswitch_e
    sget-object p0, Lads_mobile_sdk/ul3;->k:Lads_mobile_sdk/ul3;

    return-object p0

    .line 148
    :pswitch_11
    sget-object p0, Lads_mobile_sdk/ul3;->j:Lads_mobile_sdk/ul3;

    return-object p0

    .line 149
    :pswitch_14
    sget-object p0, Lads_mobile_sdk/ul3;->i:Lads_mobile_sdk/ul3;

    return-object p0

    .line 150
    :pswitch_17
    sget-object p0, Lads_mobile_sdk/ul3;->h:Lads_mobile_sdk/ul3;

    return-object p0

    .line 151
    :pswitch_1a
    sget-object p0, Lads_mobile_sdk/ul3;->g:Lads_mobile_sdk/ul3;

    return-object p0

    .line 152
    :pswitch_1d
    sget-object p0, Lads_mobile_sdk/ul3;->f:Lads_mobile_sdk/ul3;

    return-object p0

    .line 153
    :pswitch_20
    sget-object p0, Lads_mobile_sdk/ul3;->e:Lads_mobile_sdk/ul3;

    return-object p0

    .line 154
    :pswitch_23
    sget-object p0, Lads_mobile_sdk/ul3;->d:Lads_mobile_sdk/ul3;

    return-object p0

    .line 155
    :pswitch_26
    sget-object p0, Lads_mobile_sdk/ul3;->c:Lads_mobile_sdk/ul3;

    return-object p0

    .line 156
    :pswitch_29
    sget-object p0, Lads_mobile_sdk/ul3;->b:Lads_mobile_sdk/ul3;

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x0
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

.method public static values()[Lads_mobile_sdk/ul3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ul3;->o:[Lads_mobile_sdk/ul3;

    invoke-virtual {v0}, [Lads_mobile_sdk/ul3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/ul3;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 126
    iget v0, p0, Lads_mobile_sdk/ul3;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/ul3;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Lads_mobile_sdk/ul3;->a:I

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
