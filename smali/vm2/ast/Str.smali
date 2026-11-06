###### Class vm2.ast.Str (vm2.ast.Str)
.class public Lvm2/ast/Str;
.super Ljava/lang/Object;
.source "Str.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charString(Ljava/lang/String;)Lvm2/LuaString;
    .registers 3

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lvm2/ast/Str;->unquote(Ljava/lang/String;)[B

    move-result-object p0

    .line 42
    invoke-static {p0}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static iso88591bytes(Ljava/lang/String;)[B
    .registers 2

    .line 54
    :try_start_0
    const-string v0, "ISO8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 56
    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ISO8859-1 not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longString(Ljava/lang/String;)Lvm2/LuaString;
    .registers 3

    const/16 v0, 0x5b

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lvm2/ast/Str;->iso88591bytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 49
    invoke-static {p0}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static quoteString(Ljava/lang/String;)Lvm2/LuaString;
    .registers 3

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lvm2/ast/Str;->unquote(Ljava/lang/String;)[B

    move-result-object p0

    .line 36
    invoke-static {p0}, Lvm2/LuaString;->valueUsing([B)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static unquote(Ljava/lang/String;)[B
    .registers 9

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 63
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_ab

    .line 65
    aget-char v4, p0, v3

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_a3

    if-ge v3, v1, :cond_a3

    add-int/lit8 v4, v3, 0x1

    .line 66
    aget-char v6, p0, v4

    const/16 v7, 0x22

    if-eq v6, v7, :cond_9e

    const/16 v7, 0x27

    if-eq v6, v7, :cond_9a

    if-eq v6, v5, :cond_96

    const/16 v5, 0x66

    if-eq v6, v5, :cond_90

    const/16 v5, 0x6e

    if-eq v6, v5, :cond_8a

    const/16 v5, 0x72

    if-eq v6, v5, :cond_84

    const/16 v5, 0x74

    if-eq v6, v5, :cond_7e

    const/16 v5, 0x76

    if-eq v6, v5, :cond_78

    const/16 v5, 0x61

    if-eq v6, v5, :cond_73

    const/16 v5, 0x62

    if-eq v6, v5, :cond_6d

    packed-switch v6, :pswitch_data_b0

    int-to-byte v3, v6

    .line 85
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :pswitch_48
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v6, v6, -0x30

    move v4, v2

    :goto_4d
    if-ge v3, v1, :cond_66

    const/4 v5, 0x2

    if-ge v4, v5, :cond_66

    .line 70
    aget-char v5, p0, v3

    const/16 v7, 0x30

    if-lt v5, v7, :cond_66

    const/16 v7, 0x39

    if-gt v5, v7, :cond_66

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v6, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_66
    int-to-byte v4, v6

    .line 72
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_a7

    :cond_6d
    const/16 v3, 0x8

    .line 76
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :cond_73
    const/4 v3, 0x7

    .line 75
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :cond_78
    const/16 v3, 0xb

    .line 81
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :cond_7e
    const/16 v3, 0x9

    .line 80
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :cond_84
    const/16 v3, 0xd

    .line 79
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :cond_8a
    const/16 v3, 0xa

    .line 78
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    :cond_90
    const/16 v3, 0xc

    .line 77
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    .line 84
    :cond_96
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    .line 83
    :cond_9a
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a1

    .line 82
    :cond_9e
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_a1
    move v3, v4

    goto :goto_a7

    :cond_a3
    int-to-byte v4, v4

    .line 88
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_a7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 91
    :cond_ab
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :pswitch_data_b0
    .packed-switch 0x30
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method
