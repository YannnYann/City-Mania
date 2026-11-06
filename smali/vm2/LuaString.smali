###### Class vm2.LuaString (vm2.LuaString)
.class public Lvm2/LuaString;
.super Lvm2/LuaValue;
.source "LuaString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/LuaString$RecentShortStrings;
    }
.end annotation


# static fields
.field static final RECENT_STRINGS_CACHE_SIZE:I = 0x1000

.field static final RECENT_STRINGS_MAX_LENGTH:I = 0x20

.field static final SWIZZLE_BYTES:[B

.field public static s_metatable:Lvm2/LuaValue;


# instance fields
.field public final m_bytes:[B

.field private final m_hashcode:I

.field public final m_length:I

.field public final m_offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x29

    .line 98
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lvm2/LuaString;->SWIZZLE_BYTES:[B

    return-void

    :array_a
    .array-data 1
        0x24t
        0x66t
        0x2at
        0x71t
        0x24t
        0x6at
        -0x2at
        0x7bt
        0x3ft
        -0x18t
        -0x18t
        -0x3at
        0x3ct
        0x5ct
        0x4ct
        -0x62t
        -0x7ct
        -0x65t
        -0x6at
        0x4at
        -0x10t
        -0x42t
        -0x30t
        0x7ct
        -0x43t
        -0x15t
        -0xet
        -0x50t
        -0x3bt
        0x4ft
        -0x38t
        -0x2et
        0x19t
        0x1t
        0x64t
        0xbt
        0x49t
        0x54t
        0x6at
        0x7dt
        0x17t
    .end array-data
.end method

.method private constructor <init>([BII)V
    .registers 4

    .line 251
    invoke-direct {p0}, Lvm2/LuaValue;-><init>()V

    .line 252
    iput-object p1, p0, Lvm2/LuaString;->m_bytes:[B

    .line 253
    iput p2, p0, Lvm2/LuaString;->m_offset:I

    .line 254
    iput p3, p0, Lvm2/LuaString;->m_length:I

    .line 255
    invoke-static {p1, p2, p3}, Lvm2/LuaString;->hashCode([BII)I

    move-result p1

    iput p1, p0, Lvm2/LuaString;->m_hashcode:I

    return-void
.end method

.method private byteseq([BII)Z
    .registers 6

    .line 515
    iget v0, p0, Lvm2/LuaString;->m_length:I

    if-ne v0, p3, :cond_10

    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    iget v1, p0, Lvm2/LuaString;->m_offset:I

    invoke-static {v0, v1, p1, p2, p3}, Lvm2/LuaString;->equals([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private checkarith()D
    .registers 4

    .line 348
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    .line 349
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 350
    invoke-virtual {p0}, Lvm2/LuaValue;->aritherror()Lvm2/LuaValue;

    :cond_d
    return-wide v0
.end method

.method public static decodeAsUtf8([BII)Ljava/lang/String;
    .registers 10

    add-int/2addr p2, p1

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_4
    if-ge v1, p2, :cond_1d

    add-int/lit8 v3, v1, 0x1

    .line 664
    aget-byte v4, p0, v1

    const/16 v5, 0xe0

    and-int/2addr v4, v5

    const/16 v6, 0xc0

    if-eq v4, v6, :cond_17

    if-eq v4, v5, :cond_15

    :goto_13
    move v1, v3

    goto :goto_1a

    :cond_15
    add-int/lit8 v3, v1, 0x2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 669
    :cond_1d
    new-array v1, v2, [C

    :goto_1f
    if-ge p1, p2, :cond_5a

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 672
    aget-byte v4, p0, p1

    if-gez v4, :cond_54

    if-lt v3, p2, :cond_2c

    goto :goto_54

    :cond_2c
    const/16 v5, -0x20

    if-lt v4, v5, :cond_48

    add-int/lit8 v5, p1, 0x2

    if-lt v5, p2, :cond_35

    goto :goto_48

    :cond_35
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    .line 674
    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte v4, p0, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    goto :goto_55

    :cond_48
    :goto_48
    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 p1, p1, 0x2

    .line 673
    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v4, v3

    goto :goto_55

    :cond_54
    :goto_54
    move p1, v3

    :goto_55
    int-to-char v3, v4

    .line 674
    aput-char v3, v1, v0

    move v0, v2

    goto :goto_1f

    .line 676
    :cond_5a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static encodeToUtf8([CI[BI)I
    .registers 11

    const/4 v0, 0x0

    move v1, p3

    :goto_2
    if-ge v0, p1, :cond_49

    .line 715
    aget-char v2, p0, v0

    const/16 v3, 0x80

    if-ge v2, v3, :cond_11

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 716
    aput-byte v2, p2, v1

    move v1, v3

    goto :goto_46

    :cond_11
    const/16 v4, 0x800

    if-ge v2, v4, :cond_29

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    .line 718
    aput-byte v5, p2, v1

    add-int/lit8 v1, v1, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 719
    aput-byte v2, p2, v4

    goto :goto_46

    :cond_29
    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    .line 721
    aput-byte v5, p2, v1

    add-int/lit8 v5, v1, 0x2

    shr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 722
    aput-byte v6, p2, v4

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 723
    aput-byte v2, p2, v5

    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_49
    sub-int/2addr v1, p3

    return v1
.end method

.method public static equals(Lvm2/LuaString;ILvm2/LuaString;II)Z
    .registers 6

    .line 510
    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    iget p0, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr p0, p1

    iget-object p1, p2, Lvm2/LuaString;->m_bytes:[B

    iget p2, p2, Lvm2/LuaString;->m_offset:I

    add-int/2addr p2, p3

    invoke-static {v0, p0, p1, p2, p4}, Lvm2/LuaString;->equals([BI[BII)Z

    move-result p0

    return p0
.end method

.method public static equals([BI[BII)Z
    .registers 8

    .line 519
    array-length v0, p0

    add-int v1, p1, p4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_20

    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_c

    goto :goto_20

    :cond_c
    :goto_c
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_1e

    add-int/lit8 v0, p1, 0x1

    .line 522
    aget-byte p1, p0, p1

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-eq p1, p3, :cond_1b

    return v2

    :cond_1b
    move p1, v0

    move p3, v1

    goto :goto_c

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    :goto_20
    return v2
.end method

.method public static hashCode([BII)I
    .registers 7

    shr-int/lit8 v0, p2, 0x5

    add-int/lit8 v0, v0, 0x1

    move v1, p2

    :goto_5
    if-lt p2, v0, :cond_18

    shl-int/lit8 v2, v1, 0x5

    shr-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    .line 473
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    sub-int/2addr p2, v0

    goto :goto_5

    :cond_18
    return v1
.end method

.method public static lengthAsUtf8([C)I
    .registers 5

    .line 690
    array-length v0, p0

    move v1, v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 691
    aget-char v2, p0, v0

    const/16 v3, 0x80

    if-lt v2, v3, :cond_2

    const/16 v3, 0x800

    if-lt v2, v3, :cond_12

    const/4 v2, 0x2

    goto :goto_13

    :cond_12
    const/4 v2, 0x1

    :goto_13
    add-int/2addr v1, v2

    goto :goto_2

    :cond_15
    return v1
.end method

.method private scandouble(II)D
    .registers 9

    add-int/lit8 v0, p1, 0x40

    if-le p2, v0, :cond_5

    move p2, v0

    :cond_5
    move v0, p1

    :goto_6
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-ge v0, p2, :cond_29

    .line 841
    iget-object v3, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_26

    const/16 v4, 0x45

    if-eq v3, v4, :cond_26

    const/16 v4, 0x65

    if-eq v3, v4, :cond_26

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_26

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_26

    packed-switch v3, :pswitch_data_48

    return-wide v1

    :cond_26
    :pswitch_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_29
    sub-int v0, p2, p1

    .line 853
    new-array v0, v0, [C

    move v3, p1

    :goto_2e
    if-ge v3, p2, :cond_3c

    sub-int v4, v3, p1

    .line 855
    iget-object v5, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    aput-char v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 857
    :cond_3c
    :try_start_3c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_46

    return-wide p1

    :catch_46
    return-wide v1

    nop

    :pswitch_data_48
    .packed-switch 0x30
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method private scanlong(III)D
    .registers 14

    .line 818
    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v0, v0, p2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_f

    add-int/lit8 p2, p2, 0x1

    :cond_f
    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_12
    if-ge p2, p3, :cond_47

    .line 820
    iget-object v5, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v5, v5, p2

    const/16 v6, 0xa

    const/16 v7, 0x30

    if-le p1, v6, :cond_32

    if-lt v5, v7, :cond_25

    const/16 v6, 0x39

    if-gt v5, v6, :cond_25

    goto :goto_32

    :cond_25
    const/16 v6, 0x41

    if-lt v5, v6, :cond_30

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_30

    const/16 v7, 0x37

    goto :goto_32

    :cond_30
    const/16 v7, 0x57

    :cond_32
    :goto_32
    sub-int/2addr v5, v7

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    if-ltz v5, :cond_46

    if-lt v5, p1, :cond_3a

    goto :goto_46

    :cond_3a
    int-to-long v8, p1

    mul-long/2addr v3, v8

    int-to-long v8, v5

    add-long/2addr v3, v8

    cmp-long v5, v3, v1

    if-gez v5, :cond_43

    return-wide v6

    :cond_43
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_46
    :goto_46
    return-wide v6

    :cond_47
    if-eqz v0, :cond_4c

    neg-long p1, v3

    long-to-double p1, p1

    return-wide p1

    :cond_4c
    long-to-double p1, v3

    return-wide p1
.end method

.method private static valueFromCopy([BII)Lvm2/LuaString;
    .registers 5

    .line 161
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 162
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    new-instance p0, Lvm2/LuaString;

    invoke-direct {p0, v0, v1, p2}, Lvm2/LuaString;-><init>([BII)V

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lvm2/LuaString;
    .registers 5

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 130
    invoke-static {p0}, Lvm2/LuaString;->lengthAsUtf8([C)I

    move-result v0

    new-array v1, v0, [B

    .line 131
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Lvm2/LuaString;->encodeToUtf8([CI[BI)I

    .line 132
    invoke-static {v1, v3, v0}, Lvm2/LuaString;->valueUsing([BII)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([B)Lvm2/LuaString;
    .registers 3

    .line 224
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lvm2/LuaString;->valueOf([BII)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([BII)Lvm2/LuaString;
    .registers 7

    const/16 v0, 0x20

    if-le p2, v0, :cond_9

    .line 149
    invoke-static {p0, p1, p2}, Lvm2/LuaString;->valueFromCopy([BII)Lvm2/LuaString;

    move-result-object p0

    return-object p0

    .line 150
    :cond_9
    invoke-static {p0, p1, p2}, Lvm2/LuaString;->hashCode([BII)I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    .line 152
    invoke-static {}, Lvm2/LuaString$RecentShortStrings;->access$000()[Lvm2/LuaString;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_22

    .line 153
    iget v3, v2, Lvm2/LuaString;->m_hashcode:I

    if-ne v3, v0, :cond_22

    invoke-direct {v2, p0, p1, p2}, Lvm2/LuaString;->byteseq([BII)Z

    move-result v0

    if-eqz v0, :cond_22

    return-object v2

    .line 154
    :cond_22
    invoke-static {p0, p1, p2}, Lvm2/LuaString;->valueFromCopy([BII)Lvm2/LuaString;

    move-result-object p0

    .line 155
    invoke-static {}, Lvm2/LuaString$RecentShortStrings;->access$000()[Lvm2/LuaString;

    move-result-object p1

    aput-object p0, p1, v1

    return-object p0
.end method

.method public static valueOf([C)Lvm2/LuaString;
    .registers 3

    .line 197
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lvm2/LuaString;->valueOf([CII)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([CII)Lvm2/LuaString;
    .registers 7

    .line 209
    new-array v0, p2, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, p2, :cond_10

    add-int v3, v2, p1

    .line 211
    aget-char v3, p0, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 212
    :cond_10
    invoke-static {v0, v1, p2}, Lvm2/LuaString;->valueUsing([BII)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueUsing([B)Lvm2/LuaString;
    .registers 3

    .line 239
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lvm2/LuaString;->valueUsing([BII)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueUsing([BII)Lvm2/LuaString;
    .registers 7

    .line 177
    array-length v0, p0

    const/16 v1, 0x20

    if-le v0, v1, :cond_b

    .line 178
    new-instance v0, Lvm2/LuaString;

    invoke-direct {v0, p0, p1, p2}, Lvm2/LuaString;-><init>([BII)V

    return-object v0

    .line 179
    :cond_b
    invoke-static {p0, p1, p2}, Lvm2/LuaString;->hashCode([BII)I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    .line 181
    invoke-static {}, Lvm2/LuaString$RecentShortStrings;->access$000()[Lvm2/LuaString;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_24

    .line 182
    iget v3, v2, Lvm2/LuaString;->m_hashcode:I

    if-ne v3, v0, :cond_24

    invoke-direct {v2, p0, p1, p2}, Lvm2/LuaString;->byteseq([BII)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object v2

    .line 183
    :cond_24
    new-instance v0, Lvm2/LuaString;

    invoke-direct {v0, p0, p1, p2}, Lvm2/LuaString;-><init>([BII)V

    .line 184
    invoke-static {}, Lvm2/LuaString$RecentShortStrings;->access$000()[Lvm2/LuaString;

    move-result-object p0

    aput-object v0, p0, v1

    return-object v0
.end method


# virtual methods
.method public add(D)Lvm2/LuaValue;
    .registers 5

    .line 283
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lvm2/LuaValue;
    .registers 6

    .line 284
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    int-to-double v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 282
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lvm2/LuaValue;->ADD:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->add(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)I
    .registers 3

    if-ltz p1, :cond_b

    .line 555
    iget v0, p0, Lvm2/LuaString;->m_length:I

    if-ge p1, v0, :cond_b

    .line 557
    invoke-virtual {p0, p1}, Lvm2/LuaString;->luaByte(I)I

    move-result p1

    return p1

    .line 556
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public checkdouble()D
    .registers 4

    .line 364
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    .line 365
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 366
    const-string v2, "number"

    invoke-virtual {p0, v2}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_f
    return-wide v0
.end method

.method public checkint()I
    .registers 3

    .line 355
    invoke-virtual {p0}, Lvm2/LuaString;->checkdouble()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public checkinteger()Lvm2/LuaInteger;
    .registers 2

    .line 358
    invoke-virtual {p0}, Lvm2/LuaString;->checkint()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public checkjstring()Ljava/lang/String;
    .registers 2

    .line 561
    invoke-virtual {p0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong()J
    .registers 3

    .line 361
    invoke-virtual {p0}, Lvm2/LuaString;->checkdouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public checknumber()Lvm2/LuaNumber;
    .registers 3

    .line 370
    invoke-virtual {p0}, Lvm2/LuaString;->checkdouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public checknumber(Ljava/lang/String;)Lvm2/LuaNumber;
    .registers 5

    .line 373
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    .line 374
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 375
    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 376
    :cond_d
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public checkstring()Lvm2/LuaString;
    .registers 1

    .line 0
    return-object p0
.end method

.method public concat(Lvm2/Buffer;)Lvm2/Buffer;
    .registers 2

    .line 326
    invoke-virtual {p1, p0}, Lvm2/Buffer;->concatTo(Lvm2/LuaString;)Lvm2/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concat(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 325
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->concatTo(Lvm2/LuaString;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaNumber;)Lvm2/LuaValue;
    .registers 2

    .line 327
    invoke-virtual {p1}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaString;->concatTo(Lvm2/LuaString;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaString;)Lvm2/LuaValue;
    .registers 8

    .line 329
    iget v0, p1, Lvm2/LuaString;->m_length:I

    iget v1, p0, Lvm2/LuaString;->m_length:I

    add-int/2addr v1, v0

    new-array v2, v1, [B

    .line 330
    iget-object v3, p1, Lvm2/LuaString;->m_bytes:[B

    iget v4, p1, Lvm2/LuaString;->m_offset:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    iget v3, p0, Lvm2/LuaString;->m_offset:I

    iget p1, p1, Lvm2/LuaString;->m_length:I

    iget v4, p0, Lvm2/LuaString;->m_length:I

    invoke-static {v0, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    invoke-static {v2, v5, v1}, Lvm2/LuaString;->valueUsing([BII)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public copyInto(I[BII)V
    .registers 7

    .line 584
    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    iget v1, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public div(D)Lvm2/LuaValue;
    .registers 5

    .line 298
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(I)Lvm2/LuaValue;
    .registers 6

    .line 299
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 297
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lvm2/LuaValue;->DIV:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->divInto(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public divInto(D)Lvm2/LuaValue;
    .registers 5

    .line 300
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 486
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->raweq(Lvm2/LuaString;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public eq_b(Lvm2/LuaValue;)Z
    .registers 2

    .line 487
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->raweq(Lvm2/LuaString;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 479
    instance-of v0, p1, Lvm2/LuaString;

    if-eqz v0, :cond_b

    .line 480
    check-cast p1, Lvm2/LuaString;

    invoke-virtual {p0, p1}, Lvm2/LuaString;->raweq(Lvm2/LuaString;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 263
    sget-object v0, Lvm2/LuaString;->s_metatable:Lvm2/LuaValue;

    return-object v0
.end method

.method public gt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 315
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-gez p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->gt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt_b(D)Z
    .registers 3

    .line 318
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(I)Z
    .registers 2

    .line 317
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 316
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-gez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-super {p0, p1}, Lvm2/LuaValue;->gt_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public gteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 319
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-gtz p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->gteq(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gteq_b(D)Z
    .registers 3

    .line 322
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(I)Z
    .registers 2

    .line 321
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 320
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-gtz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-super {p0, p1}, Lvm2/LuaValue;->gteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 459
    iget v0, p0, Lvm2/LuaString;->m_hashcode:I

    return v0
.end method

.method public indexOf(BI)I
    .registers 5

    .line 611
    :goto_0
    iget v0, p0, Lvm2/LuaString;->m_length:I

    if-ge p2, v0, :cond_11

    .line 612
    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    iget v1, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v1, p2

    aget-byte v0, v0, v1

    if-ne v0, p1, :cond_e

    return p2

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_11
    const/4 p1, -0x1

    return p1
.end method

.method public indexOf(Lvm2/LuaString;I)I
    .registers 9

    .line 625
    invoke-virtual {p1}, Lvm2/LuaString;->length()I

    move-result v0

    .line 626
    iget v1, p0, Lvm2/LuaString;->m_length:I

    sub-int/2addr v1, v0

    :goto_7
    if-gt p2, v1, :cond_1c

    .line 628
    iget-object v2, p0, Lvm2/LuaString;->m_bytes:[B

    iget v3, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v3, p2

    iget-object v4, p1, Lvm2/LuaString;->m_bytes:[B

    iget v5, p1, Lvm2/LuaString;->m_offset:I

    invoke-static {v2, v3, v4, v5, v0}, Lvm2/LuaString;->equals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_19

    return p2

    :cond_19
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method public indexOfAny(Lvm2/LuaString;)I
    .registers 8

    .line 592
    iget v0, p0, Lvm2/LuaString;->m_offset:I

    iget v1, p0, Lvm2/LuaString;->m_length:I

    add-int/2addr v1, v0

    .line 593
    iget v2, p1, Lvm2/LuaString;->m_offset:I

    iget v3, p1, Lvm2/LuaString;->m_length:I

    add-int/2addr v2, v3

    :goto_a
    if-ge v0, v1, :cond_24

    .line 595
    iget v3, p1, Lvm2/LuaString;->m_offset:I

    :goto_e
    if-ge v3, v2, :cond_21

    .line 596
    iget-object v4, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v4, v4, v0

    iget-object v5, p1, Lvm2/LuaString;->m_bytes:[B

    aget-byte v5, v5, v3

    if-ne v4, v5, :cond_1e

    .line 597
    iget p1, p0, Lvm2/LuaString;->m_offset:I

    sub-int/2addr v0, p1

    return v0

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_24
    const/4 p1, -0x1

    return p1
.end method

.method public isValidUtf8()Z
    .registers 9

    .line 736
    iget v0, p0, Lvm2/LuaString;->m_offset:I

    iget v1, p0, Lvm2/LuaString;->m_length:I

    add-int/2addr v1, v0

    :goto_5
    if-ge v0, v1, :cond_3d

    .line 737
    iget-object v2, p0, Lvm2/LuaString;->m_bytes:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_11

    :goto_f
    move v0, v3

    goto :goto_5

    :cond_11
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0x80

    const/16 v7, 0xc0

    if-ne v5, v7, :cond_24

    if-ge v3, v1, :cond_24

    add-int/lit8 v0, v0, 0x2

    .line 739
    aget-byte v3, v2, v3

    and-int/2addr v3, v7

    if-ne v3, v6, :cond_23

    goto :goto_5

    :cond_23
    move v3, v0

    :cond_24
    and-int/lit16 v0, v4, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_3b

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v1, :cond_3b

    .line 742
    aget-byte v4, v2, v3

    and-int/2addr v4, v7

    if-ne v4, v6, :cond_3b

    add-int/lit8 v3, v3, 0x2

    aget-byte v0, v2, v0

    and-int/2addr v0, v7

    if-ne v0, v6, :cond_3b

    goto :goto_f

    :cond_3b
    const/4 v0, 0x0

    return v0

    :cond_3d
    const/4 v0, 0x1

    return v0
.end method

.method public isint()Z
    .registers 7

    .line 385
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    .line 386
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return v3

    :cond_c
    double-to-int v2, v0

    int-to-double v4, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    return v3
.end method

.method public islong()Z
    .registers 7

    .line 393
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    .line 394
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return v3

    :cond_c
    double-to-long v4, v0

    long-to-double v4, v4

    cmpl-double v0, v4, v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    return v3
.end method

.method public isnumber()Z
    .registers 3

    .line 380
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    .line 381
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isstring()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public lastIndexOf(Lvm2/LuaString;)I
    .registers 8

    .line 640
    invoke-virtual {p1}, Lvm2/LuaString;->length()I

    move-result v0

    .line 641
    iget v1, p0, Lvm2/LuaString;->m_length:I

    sub-int/2addr v1, v0

    :goto_7
    if-ltz v1, :cond_1c

    .line 643
    iget-object v2, p0, Lvm2/LuaString;->m_bytes:[B

    iget v3, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v3, v1

    iget-object v4, p1, Lvm2/LuaString;->m_bytes:[B

    iget v5, p1, Lvm2/LuaString;->m_offset:I

    invoke-static {v2, v3, v4, v5, v0}, Lvm2/LuaString;->equals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method public len()Lvm2/LuaValue;
    .registers 2

    .line 539
    iget v0, p0, Lvm2/LuaString;->m_length:I

    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .registers 2

    .line 543
    iget v0, p0, Lvm2/LuaString;->m_length:I

    return v0
.end method

.method public lt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 307
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-lez p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->lt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt_b(D)Z
    .registers 3

    .line 310
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(I)Z
    .registers 2

    .line 309
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 308
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-lez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-super {p0, p1}, Lvm2/LuaValue;->lt_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public lteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 311
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-ltz p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->lteq(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq_b(D)Z
    .registers 3

    .line 314
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(I)Z
    .registers 2

    .line 313
    const-string p1, "attempt to compare string with number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 312
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    if-ltz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-super {p0, p1}, Lvm2/LuaValue;->lteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public luaByte(I)I
    .registers 4

    .line 551
    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    iget v1, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public mod(D)Lvm2/LuaValue;
    .registers 5

    .line 302
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(I)Lvm2/LuaValue;
    .registers 6

    .line 303
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 301
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lvm2/LuaValue;->MOD:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->modFrom(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public modFrom(D)Lvm2/LuaValue;
    .registers 5

    .line 304
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lvm2/LuaValue;
    .registers 5

    .line 290
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(I)Lvm2/LuaValue;
    .registers 6

    .line 291
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 289
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lvm2/LuaValue;->MUL:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->mul(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public neg()Lvm2/LuaValue;
    .registers 4

    .line 279
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-super {p0}, Lvm2/LuaValue;->neg()Lvm2/LuaValue;

    move-result-object v0

    return-object v0

    :cond_f
    neg-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optdouble(D)D
    .registers 3

    .line 409
    invoke-virtual {p0}, Lvm2/LuaString;->checkdouble()D

    move-result-wide p1

    return-wide p1
.end method

.method public optint(I)I
    .registers 2

    .line 413
    invoke-virtual {p0}, Lvm2/LuaString;->checkint()I

    move-result p1

    return p1
.end method

.method public optinteger(Lvm2/LuaInteger;)Lvm2/LuaInteger;
    .registers 2

    .line 417
    invoke-virtual {p0}, Lvm2/LuaString;->checkinteger()Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 437
    invoke-virtual {p0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optlong(J)J
    .registers 3

    .line 421
    invoke-virtual {p0}, Lvm2/LuaString;->checklong()J

    move-result-wide p1

    return-wide p1
.end method

.method public optnumber(Lvm2/LuaNumber;)Lvm2/LuaNumber;
    .registers 2

    .line 425
    invoke-virtual {p0}, Lvm2/LuaString;->checknumber()Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public optstring(Lvm2/LuaString;)Lvm2/LuaString;
    .registers 2

    .line 0
    return-object p0
.end method

.method public pow(D)Lvm2/LuaValue;
    .registers 5

    .line 293
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lvm2/LuaValue;
    .registers 6

    .line 294
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 292
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lvm2/LuaValue;->POW:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->powWith(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(D)Lvm2/LuaValue;
    .registers 5

    .line 295
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(I)Lvm2/LuaValue;
    .registers 6

    int-to-double v0, p1

    .line 296
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public printToStream(Ljava/io/PrintStream;)V
    .registers 6

    .line 869
    iget v0, p0, Lvm2/LuaString;->m_length:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_13

    .line 870
    iget-object v2, p0, Lvm2/LuaString;->m_bytes:[B

    iget v3, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    int-to-char v2, v2

    .line 871
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    return-void
.end method

.method public raweq(Lvm2/LuaString;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 497
    :cond_4
    iget v1, p1, Lvm2/LuaString;->m_length:I

    iget v2, p0, Lvm2/LuaString;->m_length:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_c

    return v3

    .line 499
    :cond_c
    iget-object v1, p1, Lvm2/LuaString;->m_bytes:[B

    iget-object v2, p0, Lvm2/LuaString;->m_bytes:[B

    if-ne v1, v2, :cond_19

    iget v1, p1, Lvm2/LuaString;->m_offset:I

    iget v2, p0, Lvm2/LuaString;->m_offset:I

    if-ne v1, v2, :cond_19

    return v0

    .line 501
    :cond_19
    invoke-virtual {p1}, Lvm2/LuaString;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lvm2/LuaString;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_24

    return v3

    :cond_24
    move v1, v3

    .line 503
    :goto_25
    iget v2, p0, Lvm2/LuaString;->m_length:I

    if-ge v1, v2, :cond_3d

    .line 504
    iget-object v2, p1, Lvm2/LuaString;->m_bytes:[B

    iget v4, p1, Lvm2/LuaString;->m_offset:I

    add-int/2addr v4, v1

    aget-byte v2, v2, v4

    iget-object v4, p0, Lvm2/LuaString;->m_bytes:[B

    iget v5, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    if-eq v2, v4, :cond_3a

    return v3

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3d
    return v0
.end method

.method public raweq(Lvm2/LuaValue;)Z
    .registers 2

    .line 491
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->raweq(Lvm2/LuaString;)Z

    move-result p1

    return p1
.end method

.method public rawlen()I
    .registers 2

    .line 547
    iget v0, p0, Lvm2/LuaString;->m_length:I

    return v0
.end method

.method public scannumber()D
    .registers 6

    .line 781
    iget v0, p0, Lvm2/LuaString;->m_offset:I

    iget v1, p0, Lvm2/LuaString;->m_length:I

    add-int/2addr v1, v0

    :goto_5
    const/16 v2, 0x20

    if-ge v0, v1, :cond_12

    .line 782
    iget-object v3, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v3, v3, v0

    if-ne v3, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_12
    :goto_12
    if-ge v0, v1, :cond_1f

    .line 783
    iget-object v3, p0, Lvm2/LuaString;->m_bytes:[B

    add-int/lit8 v4, v1, -0x1

    aget-byte v3, v3, v4

    if-ne v3, v2, :cond_1f

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_1f
    if-lt v0, v1, :cond_24

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 786
    :cond_24
    iget-object v2, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v3, v2, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_43

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_43

    aget-byte v2, v2, v3

    const/16 v3, 0x78

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x58

    if-ne v2, v3, :cond_43

    :cond_3a
    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x10

    .line 787
    invoke-direct {p0, v2, v0, v1}, Lvm2/LuaString;->scanlong(III)D

    move-result-wide v0

    return-wide v0

    :cond_43
    const/16 v2, 0xa

    .line 788
    invoke-direct {p0, v2, v0, v1}, Lvm2/LuaString;->scanlong(III)D

    move-result-wide v2

    .line 789
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-direct {p0, v0, v1}, Lvm2/LuaString;->scandouble(II)D

    move-result-wide v0

    return-wide v0

    :cond_54
    return-wide v2
.end method

.method public scannumber(I)D
    .registers 9

    const/4 v0, 0x2

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-lt p1, v0, :cond_31

    const/16 v0, 0x24

    if-le p1, v0, :cond_a

    goto :goto_31

    .line 800
    :cond_a
    iget v0, p0, Lvm2/LuaString;->m_offset:I

    iget v3, p0, Lvm2/LuaString;->m_length:I

    add-int/2addr v3, v0

    :goto_f
    const/16 v4, 0x20

    if-ge v0, v3, :cond_1c

    .line 801
    iget-object v5, p0, Lvm2/LuaString;->m_bytes:[B

    aget-byte v5, v5, v0

    if-ne v5, v4, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    if-ge v0, v3, :cond_29

    .line 802
    iget-object v5, p0, Lvm2/LuaString;->m_bytes:[B

    add-int/lit8 v6, v3, -0x1

    aget-byte v5, v5, v6

    if-ne v5, v4, :cond_29

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_29
    if-lt v0, v3, :cond_2c

    return-wide v1

    .line 805
    :cond_2c
    invoke-direct {p0, p1, v0, v3}, Lvm2/LuaString;->scanlong(III)D

    move-result-wide v0

    return-wide v0

    :cond_31
    :goto_31
    return-wide v1
.end method

.method public strcmp(Lvm2/LuaString;)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 338
    :goto_2
    iget v2, p0, Lvm2/LuaString;->m_length:I

    if-ge v0, v2, :cond_29

    iget v3, p1, Lvm2/LuaString;->m_length:I

    if-ge v1, v3, :cond_29

    .line 339
    iget-object v2, p0, Lvm2/LuaString;->m_bytes:[B

    iget v3, p0, Lvm2/LuaString;->m_offset:I

    add-int v4, v3, v0

    aget-byte v4, v2, v4

    iget-object v5, p1, Lvm2/LuaString;->m_bytes:[B

    iget v6, p1, Lvm2/LuaString;->m_offset:I

    add-int v7, v6, v1

    aget-byte v7, v5, v7

    if-eq v4, v7, :cond_24

    add-int/2addr v3, v0

    .line 340
    aget-byte p1, v2, v3

    add-int/2addr v6, v1

    aget-byte v0, v5, v6

    sub-int/2addr p1, v0

    return p1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 343
    :cond_29
    iget p1, p1, Lvm2/LuaString;->m_length:I

    sub-int/2addr v2, p1

    return v2
.end method

.method public strcmp(Lvm2/LuaValue;)I
    .registers 2

    .line 336
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->strcmp(Lvm2/LuaString;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public strvalue()Lvm2/LuaString;
    .registers 1

    .line 0
    return-object p0
.end method

.method public sub(D)Lvm2/LuaValue;
    .registers 5

    .line 286
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(I)Lvm2/LuaValue;
    .registers 6

    .line 287
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 285
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lvm2/LuaValue;->SUB:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->subFrom(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(D)Lvm2/LuaValue;
    .registers 5

    .line 288
    invoke-direct {p0}, Lvm2/LuaString;->checkarith()D

    move-result-wide v0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lvm2/LuaString;
    .registers 4

    .line 451
    iget v0, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v0, p1

    sub-int/2addr p2, p1

    .line 453
    iget p1, p0, Lvm2/LuaString;->m_length:I

    div-int/lit8 p1, p1, 0x2

    if-lt p2, p1, :cond_11

    .line 454
    iget-object p1, p0, Lvm2/LuaString;->m_bytes:[B

    invoke-static {p1, v0, p2}, Lvm2/LuaString;->valueUsing([BII)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 455
    :cond_11
    iget-object p1, p0, Lvm2/LuaString;->m_bytes:[B

    invoke-static {p1, v0, p2}, Lvm2/LuaString;->valueOf([BII)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public toInputStream()Ljava/io/InputStream;
    .registers 5

    .line 573
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lvm2/LuaString;->m_bytes:[B

    iget v2, p0, Lvm2/LuaString;->m_offset:I

    iget v3, p0, Lvm2/LuaString;->m_length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public tobyte()B
    .registers 2

    .line 400
    invoke-virtual {p0}, Lvm2/LuaString;->toint()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public tochar()C
    .registers 2

    .line 401
    invoke-virtual {p0}, Lvm2/LuaString;->toint()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public todouble()D
    .registers 4

    .line 402
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/16 v0, 0x0

    :cond_c
    return-wide v0
.end method

.method public tofloat()F
    .registers 3

    .line 403
    invoke-virtual {p0}, Lvm2/LuaString;->todouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public toint()I
    .registers 3

    .line 404
    invoke-virtual {p0}, Lvm2/LuaString;->tolong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 4

    .line 275
    iget-object v0, p0, Lvm2/LuaString;->m_bytes:[B

    iget v1, p0, Lvm2/LuaString;->m_offset:I

    iget v2, p0, Lvm2/LuaString;->m_length:I

    invoke-static {v0, v1, v2}, Lvm2/LuaString;->decodeAsUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .registers 3

    .line 405
    invoke-virtual {p0}, Lvm2/LuaString;->todouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public tonumber()Lvm2/LuaValue;
    .registers 4

    .line 760
    invoke-virtual {p0}, Lvm2/LuaString;->scannumber()D

    move-result-wide v0

    .line 761
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0

    :cond_d
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public tonumber(I)Lvm2/LuaValue;
    .registers 4

    .line 771
    invoke-virtual {p0, p1}, Lvm2/LuaString;->scannumber(I)D

    move-result-wide v0

    .line 772
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_d
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public toshort()S
    .registers 2

    .line 406
    invoke-virtual {p0}, Lvm2/LuaString;->toint()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public tostring()Lvm2/LuaValue;
    .registers 1

    .line 0
    return-object p0
.end method

.method public type()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public typename()Ljava/lang/String;
    .registers 2

    .line 271
    const-string v0, "string"

    return-object v0
.end method

.method public write(Ljava/io/DataOutputStream;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget v0, p0, Lvm2/LuaString;->m_offset:I

    add-int/2addr v0, p2

    const/4 p2, 0x0

    :goto_4
    if-ge p2, p3, :cond_1a

    .line 533
    iget-object v1, p0, Lvm2/LuaString;->m_bytes:[B

    add-int v2, v0, p2

    aget-byte v1, v1, v2

    sget-object v2, Lvm2/LuaString;->SWIZZLE_BYTES:[B

    array-length v3, v2

    rem-int v3, p2, v3

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

###### Class vm2.LuaString.RecentShortStrings (vm2.LuaString$RecentShortStrings)
.class final Lvm2/LuaString$RecentShortStrings;
.super Ljava/lang/Object;
.source "LuaString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecentShortStrings"
.end annotation


# static fields
.field private static final recent_short_strings:[Lvm2/LuaString;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1000

    .line 118
    new-array v0, v0, [Lvm2/LuaString;

    sput-object v0, Lvm2/LuaString$RecentShortStrings;->recent_short_strings:[Lvm2/LuaString;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()[Lvm2/LuaString;
    .registers 1

    .line 117
    sget-object v0, Lvm2/LuaString$RecentShortStrings;->recent_short_strings:[Lvm2/LuaString;

    return-object v0
.end method
