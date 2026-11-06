###### Class ads_mobile_sdk.co3 (ads_mobile_sdk.co3)
.class abstract Lads_mobile_sdk/co3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x80

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lads_mobile_sdk/co3;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_7
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_20

    .line 99
    sget-object v1, Lads_mobile_sdk/co3;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\\%03o"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 101
    :cond_20
    sget-object v0, Lads_mobile_sdk/co3;->a:[Ljava/lang/String;

    const/16 v1, 0x7f

    const-string v2, "\\177"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 102
    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 103
    const-string v2, "\\\'"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 104
    const-string v2, "\\\\"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 105
    const-string v2, "\\t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 106
    const-string v2, "\\b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 107
    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 108
    const-string v2, "\\r"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 109
    const-string v2, "\\f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 110
    const-string v2, "\\a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 111
    const-string v2, "\\v"

    aput-object v2, v0, v1

    return-void
.end method

.method public static a(Lads_mobile_sdk/du;)Ljava/lang/String;
    .registers 1

    .line 91
    invoke-virtual {p0}, Lads_mobile_sdk/du;->i()[B

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/co3;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_39

    .line 211
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7f

    if-le v4, v5, :cond_1c

    .line 217
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/co3;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :cond_1c
    sget-object v5, Lads_mobile_sdk/co3;->a:[Ljava/lang/String;

    aget-object v4, v5, v4

    if-nez v4, :cond_23

    goto :goto_36

    :cond_23
    if-nez v1, :cond_2c

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x10

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_2c
    if-ge v3, v2, :cond_31

    .line 227
    invoke-virtual {v1, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 229
    :cond_31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_39
    if-nez v1, :cond_3c

    return-object p0

    :cond_3c
    if-ge v3, v0, :cond_41

    .line 238
    invoke-virtual {v1, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 240
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 6

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 242
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_86

    .line 243
    aget-byte v2, p0, v1

    const/16 v3, 0x22

    if-eq v2, v3, :cond_7e

    const/16 v3, 0x27

    if-eq v2, v3, :cond_78

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_72

    packed-switch v2, :pswitch_data_8c

    const/16 v4, 0x20

    if-lt v2, v4, :cond_28

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_28

    int-to-char v2, v2

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 281
    :cond_28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 282
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 285
    :pswitch_48
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 286
    :pswitch_4e
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 298
    :pswitch_54
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 299
    :pswitch_5a
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 305
    :pswitch_60
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 306
    :pswitch_66
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 307
    :pswitch_6c
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 328
    :cond_72
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 331
    :cond_78
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 334
    :cond_7e
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 350
    :cond_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_8c
    .packed-switch 0x7
        :pswitch_6c
        :pswitch_66
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_48
    .end packed-switch
.end method
