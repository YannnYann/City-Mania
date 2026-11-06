###### Class okio.internal.ByteString (okio.internal.-ByteString)
.class public final Lokio/internal/-ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,363:1\n131#1,2:369\n133#1,9:372\n68#2:364\n74#2:365\n74#2:367\n74#2:368\n68#2:396\n74#2:408\n1#3:366\n1#3:371\n212#4,7:381\n122#4:388\n219#4,5:389\n122#4:394\n226#4:395\n228#4:397\n397#4,2:398\n122#4:400\n400#4,6:401\n127#4:407\n406#4:409\n122#4:410\n407#4,13:411\n122#4:424\n422#4:425\n122#4:426\n425#4:427\n230#4,3:428\n440#4,3:431\n122#4:434\n443#4:435\n127#4:436\n446#4,10:437\n127#4:447\n456#4:448\n122#4:449\n457#4,4:450\n127#4:454\n461#4:455\n122#4:456\n462#4,14:457\n122#4:471\n477#4,2:472\n122#4:474\n481#4:475\n122#4:476\n484#4:477\n234#4,3:478\n500#4,3:481\n122#4:484\n503#4:485\n127#4:486\n506#4,2:487\n127#4:489\n510#4,10:490\n127#4:500\n520#4:501\n122#4:502\n521#4,4:503\n127#4:507\n525#4:508\n122#4:509\n526#4,4:510\n127#4:514\n530#4:515\n122#4:516\n531#4,15:517\n122#4:532\n547#4,2:533\n122#4:535\n550#4,2:536\n122#4:538\n554#4:539\n122#4:540\n557#4:541\n241#4:542\n122#4:543\n242#4,5:544\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n329#1:369,2\n329#1:372,9\n67#1:364\n68#1:365\n258#1:367\n259#1:368\n348#1:396\n348#1:408\n329#1:371\n348#1:381,7\n353#1:388\n348#1:389,5\n353#1:394\n348#1:395\n348#1:397\n348#1:398,2\n353#1:400\n348#1:401,6\n348#1:407\n348#1:409\n353#1:410\n348#1:411,13\n353#1:424\n348#1:425\n353#1:426\n348#1:427\n348#1:428,3\n348#1:431,3\n353#1:434\n348#1:435\n348#1:436\n348#1:437,10\n348#1:447\n348#1:448\n353#1:449\n348#1:450,4\n348#1:454\n348#1:455\n353#1:456\n348#1:457,14\n353#1:471\n348#1:472,2\n353#1:474\n348#1:475\n353#1:476\n348#1:477\n348#1:478,3\n348#1:481,3\n353#1:484\n348#1:485\n348#1:486\n348#1:487,2\n348#1:489\n348#1:490,10\n348#1:500\n348#1:501\n353#1:502\n348#1:503,4\n348#1:507\n348#1:508\n353#1:509\n348#1:510,4\n348#1:514\n348#1:515\n353#1:516\n348#1:517,15\n353#1:532\n348#1:533,2\n353#1:535\n348#1:536,2\n353#1:538\n348#1:539\n353#1:540\n348#1:541\n348#1:542\n353#1:543\n348#1:544,5\n*E\n"
.end annotation


# static fields
.field public static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 60
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 1

    .line 1
    invoke-static {p0}, Lokio/internal/-ByteString;->decodeHexDigit(C)I

    move-result p0

    return p0
.end method

.method public static final codePointIndexToCharIndex([BI)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v3, 0x1

    .line 348
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_9
    :goto_9
    if-ge v5, v4, :cond_1b5

    .line 214
    aget-byte v8, v0, v5

    const v9, 0xfffd

    const/16 v10, 0xa0

    const/16 v11, 0x7f

    const/16 v12, 0x20

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/high16 v15, 0x10000

    const/16 v16, -0x1

    if-ltz v8, :cond_64

    add-int/lit8 v17, v7, 0x1

    if-ne v7, v1, :cond_26

    goto/16 :goto_1b5

    :cond_26
    if-eq v8, v14, :cond_34

    if-eq v8, v13, :cond_34

    if-ltz v8, :cond_2f

    if-ge v8, v12, :cond_2f

    goto :goto_36

    :cond_2f
    if-gt v11, v8, :cond_34

    if-ge v8, v10, :cond_34

    goto :goto_36

    :cond_34
    if-ne v8, v9, :cond_37

    :goto_36
    return v16

    :cond_37
    if-ge v8, v15, :cond_3b

    move v7, v3

    goto :goto_3c

    :cond_3b
    const/4 v7, 0x2

    :goto_3c
    add-int/2addr v6, v7

    add-int/2addr v5, v3

    :goto_3e
    move/from16 v7, v17

    if-ge v5, v4, :cond_9

    .line 222
    aget-byte v8, v0, v5

    if-ltz v8, :cond_9

    add-int/2addr v5, v3

    add-int/lit8 v17, v7, 0x1

    if-ne v7, v1, :cond_4c

    return v6

    :cond_4c
    if-eq v8, v14, :cond_5a

    if-eq v8, v13, :cond_5a

    if-ltz v8, :cond_55

    if-ge v8, v12, :cond_55

    goto :goto_5c

    :cond_55
    if-gt v11, v8, :cond_5a

    if-ge v8, v10, :cond_5a

    goto :goto_5c

    :cond_5a
    if-ne v8, v9, :cond_5d

    :goto_5c
    return v16

    :cond_5d
    if-ge v8, v15, :cond_61

    move v7, v3

    goto :goto_62

    :cond_61
    const/4 v7, 0x2

    :goto_62
    add-int/2addr v6, v7

    goto :goto_3e

    :cond_64
    const/16 v17, 0x2

    shr-int/lit8 v2, v8, 0x5

    move/from16 v18, v3

    const/4 v3, -0x2

    const/16 v15, 0x80

    if-ne v2, v3, :cond_b9

    add-int/lit8 v3, v5, 0x1

    if-gt v4, v3, :cond_78

    if-ne v7, v1, :cond_77

    goto/16 :goto_1b5

    :cond_77
    return v16

    .line 404
    :cond_78
    aget-byte v2, v0, v3

    and-int/lit16 v3, v2, 0xc0

    if-ne v3, v15, :cond_b4

    xor-int/lit16 v2, v2, 0xf80

    shl-int/lit8 v3, v8, 0x6

    xor-int/2addr v2, v3

    if-ge v2, v15, :cond_8a

    if-ne v7, v1, :cond_89

    goto/16 :goto_1b5

    :cond_89
    return v16

    :cond_8a
    add-int/lit8 v3, v7, 0x1

    if-ne v7, v1, :cond_90

    goto/16 :goto_1b5

    :cond_90
    if-eq v2, v14, :cond_9e

    if-eq v2, v13, :cond_9e

    if-ltz v2, :cond_99

    if-ge v2, v12, :cond_99

    goto :goto_a0

    :cond_99
    if-gt v11, v2, :cond_9e

    if-ge v2, v10, :cond_9e

    goto :goto_a0

    :cond_9e
    if-ne v2, v9, :cond_a1

    :goto_a0
    return v16

    :cond_a1
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_a8

    move/from16 v2, v18

    goto :goto_aa

    :cond_a8
    move/from16 v2, v17

    :goto_aa
    add-int/2addr v6, v2

    .line 228
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x2

    :goto_af
    move v7, v3

    move/from16 v3, v18

    goto/16 :goto_9

    :cond_b4
    if-ne v7, v1, :cond_b8

    goto/16 :goto_1b5

    :cond_b8
    return v16

    :cond_b9
    shr-int/lit8 v2, v8, 0x4

    const v9, 0xe000

    const v10, 0xd800

    if-ne v2, v3, :cond_12d

    add-int/lit8 v2, v5, 0x2

    if-gt v4, v2, :cond_cc

    if-ne v7, v1, :cond_cb

    goto/16 :goto_1b5

    :cond_cb
    return v16

    :cond_cc
    add-int/lit8 v3, v5, 0x1

    .line 454
    aget-byte v3, v0, v3

    and-int/lit16 v11, v3, 0xc0

    if-ne v11, v15, :cond_128

    .line 459
    aget-byte v2, v0, v2

    and-int/lit16 v11, v2, 0xc0

    if-ne v11, v15, :cond_123

    const v11, -0x1e080

    xor-int/2addr v2, v11

    shl-int/lit8 v3, v3, 0x6

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v8, 0xc

    xor-int/2addr v2, v3

    const/16 v3, 0x800

    if-ge v2, v3, :cond_ed

    if-ne v7, v1, :cond_ec

    goto/16 :goto_1b5

    :cond_ec
    return v16

    :cond_ed
    if-gt v10, v2, :cond_f6

    if-ge v2, v9, :cond_f6

    if-ne v7, v1, :cond_f5

    goto/16 :goto_1b5

    :cond_f5
    return v16

    :cond_f6
    add-int/lit8 v3, v7, 0x1

    if-ne v7, v1, :cond_fc

    goto/16 :goto_1b5

    :cond_fc
    if-eq v2, v14, :cond_10e

    if-eq v2, v13, :cond_10e

    if-ltz v2, :cond_105

    if-ge v2, v12, :cond_105

    goto :goto_113

    :cond_105
    const/16 v7, 0x7f

    if-gt v7, v2, :cond_10e

    const/16 v7, 0xa0

    if-ge v2, v7, :cond_10e

    goto :goto_113

    :cond_10e
    const v7, 0xfffd

    if-ne v2, v7, :cond_114

    :goto_113
    return v16

    :cond_114
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_11b

    move/from16 v2, v18

    goto :goto_11d

    :cond_11b
    move/from16 v2, v17

    :goto_11d
    add-int/2addr v6, v2

    .line 232
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x3

    goto :goto_af

    :cond_123
    if-ne v7, v1, :cond_127

    goto/16 :goto_1b5

    :cond_127
    return v16

    :cond_128
    if-ne v7, v1, :cond_12c

    goto/16 :goto_1b5

    :cond_12c
    return v16

    :cond_12d
    shr-int/lit8 v2, v8, 0x3

    if-ne v2, v3, :cond_1b1

    add-int/lit8 v2, v5, 0x3

    if-gt v4, v2, :cond_13a

    if-ne v7, v1, :cond_139

    goto/16 :goto_1b5

    :cond_139
    return v16

    :cond_13a
    add-int/lit8 v3, v5, 0x1

    .line 518
    aget-byte v3, v0, v3

    and-int/lit16 v11, v3, 0xc0

    if-ne v11, v15, :cond_1ad

    add-int/lit8 v11, v5, 0x2

    .line 523
    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v15, :cond_1a9

    .line 528
    aget-byte v2, v0, v2

    and-int/lit16 v12, v2, 0xc0

    if-ne v12, v15, :cond_1a5

    const v12, 0x381f80

    xor-int/2addr v2, v12

    shl-int/lit8 v11, v11, 0x6

    xor-int/2addr v2, v11

    shl-int/lit8 v3, v3, 0xc

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v8, 0x12

    xor-int/2addr v2, v3

    const v3, 0x10ffff

    if-le v2, v3, :cond_166

    if-ne v7, v1, :cond_165

    goto :goto_1b5

    :cond_165
    return v16

    :cond_166
    if-gt v10, v2, :cond_16e

    if-ge v2, v9, :cond_16e

    if-ne v7, v1, :cond_16d

    goto :goto_1b5

    :cond_16d
    return v16

    :cond_16e
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_176

    if-ne v7, v1, :cond_175

    goto :goto_1b5

    :cond_175
    return v16

    :cond_176
    add-int/lit8 v3, v7, 0x1

    if-ne v7, v1, :cond_17b

    goto :goto_1b5

    :cond_17b
    if-eq v2, v14, :cond_18f

    if-eq v2, v13, :cond_18f

    if-ltz v2, :cond_186

    const/16 v7, 0x20

    if-ge v2, v7, :cond_186

    goto :goto_194

    :cond_186
    const/16 v7, 0x7f

    if-gt v7, v2, :cond_18f

    const/16 v7, 0xa0

    if-ge v2, v7, :cond_18f

    goto :goto_194

    :cond_18f
    const v7, 0xfffd

    if-ne v2, v7, :cond_195

    :goto_194
    return v16

    :cond_195
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_19c

    move/from16 v2, v18

    goto :goto_19e

    :cond_19c
    move/from16 v2, v17

    :goto_19e
    add-int/2addr v6, v2

    .line 236
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_af

    :cond_1a5
    if-ne v7, v1, :cond_1a8

    goto :goto_1b5

    :cond_1a8
    return v16

    :cond_1a9
    if-ne v7, v1, :cond_1ac

    goto :goto_1b5

    :cond_1ac
    return v16

    :cond_1ad
    if-ne v7, v1, :cond_1b0

    goto :goto_1b5

    :cond_1b0
    return v16

    :cond_1b1
    if-ne v7, v1, :cond_1b4

    goto :goto_1b5

    :cond_1b4
    return v16

    :cond_1b5
    :goto_1b5
    return v6
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method public static final decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_15

    const/16 v0, 0x67

    if-ge p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_15
    const/16 v0, 0x41

    if-gt v0, p0, :cond_20

    const/16 v0, 0x47

    if-ge p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x37

    return p0

    .line 316
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    .line 59
    sget-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method
