###### Class okio.internal.Buffer (okio.internal.-Buffer)
.class public final Lokio/internal/-Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1730:1\n112#1,20:1753\n112#1,20:1786\n112#1:1806\n114#1,18:1808\n112#1,20:1826\n74#2:1731\n74#2:1732\n74#2:1733\n74#2:1734\n74#2:1735\n74#2:1736\n74#2:1737\n74#2:1738\n74#2:1739\n74#2:1740\n74#2:1741\n74#2:1742\n83#2:1743\n83#2:1744\n77#2:1745\n77#2:1746\n77#2:1747\n77#2:1748\n77#2:1749\n77#2:1750\n77#2:1751\n77#2:1752\n86#2:1773\n89#2:1775\n74#2:1776\n74#2:1777\n74#2:1778\n74#2:1779\n74#2:1780\n74#2:1781\n74#2:1782\n74#2:1783\n74#2:1784\n74#2:1785\n89#2:1807\n86#2:1846\n1#3:1774\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n*L\n415#1:1753,20\n1292#1:1786,20\n1323#1:1806\n1323#1:1808,18\n1357#1:1826,20\n178#1:1731\n202#1:1732\n321#1:1733\n326#1:1734\n349#1:1735\n350#1:1736\n351#1:1737\n352#1:1738\n358#1:1739\n359#1:1740\n360#1:1741\n361#1:1742\n385#1:1743\n386#1:1744\n392#1:1745\n393#1:1746\n394#1:1747\n395#1:1748\n396#1:1749\n397#1:1750\n398#1:1751\n399#1:1752\n427#1:1773\n888#1:1775\n906#1:1776\n908#1:1777\n912#1:1778\n914#1:1779\n918#1:1780\n920#1:1781\n924#1:1782\n926#1:1783\n946#1:1784\n949#1:1785\n1336#1:1807\n1676#1:1846\n*E\n"
.end annotation


# static fields
.field public static final HEX_DIGIT_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .registers 1

    .line 45
    sget-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    return-object v0
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_21

    sub-long v3, p1, v1

    .line 89
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_21

    .line 91
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 92
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-object p1

    .line 97
    :cond_21
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return-object p1
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_18

    if-eqz p2, :cond_17

    return v1

    :cond_17
    return v3

    .line 151
    :cond_18
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 152
    iget v5, v0, Lokio/Segment;->pos:I

    .line 153
    iget v6, v0, Lokio/Segment;->limit:I

    .line 155
    invoke-virtual {v2}, Lokio/Options;->getTrie$okio()[I

    move-result-object v2

    const/4 v7, 0x0

    move-object v9, v0

    move v10, v3

    move v8, v7

    :goto_26
    add-int/lit8 v11, v8, 0x1

    .line 162
    aget v12, v2, v8

    add-int/lit8 v8, v8, 0x2

    .line 164
    aget v11, v2, v11

    if-eq v11, v3, :cond_31

    move v10, v11

    :cond_31
    if-nez v9, :cond_34

    goto :goto_64

    :cond_34
    const/4 v11, 0x0

    if-gez v12, :cond_7d

    mul-int/lit8 v12, v12, -0x1

    add-int v13, v8, v12

    :goto_3b
    add-int/lit8 v12, v5, 0x1

    .line 178
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v14, v8, 0x1

    .line 179
    aget v8, v2, v8

    if-eq v5, v8, :cond_48

    goto :goto_87

    :cond_48
    if-ne v14, v13, :cond_4c

    const/4 v5, 0x1

    goto :goto_4d

    :cond_4c
    move v5, v7

    :goto_4d
    if-ne v12, v6, :cond_6d

    .line 184
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    iget v6, v4, Lokio/Segment;->pos:I

    .line 186
    iget-object v8, v4, Lokio/Segment;->data:[B

    .line 187
    iget v9, v4, Lokio/Segment;->limit:I

    if-ne v4, v0, :cond_67

    if-eqz v5, :cond_64

    move-object v4, v8

    move-object v8, v11

    goto :goto_70

    :cond_64
    :goto_64
    if-eqz p2, :cond_87

    return v1

    :cond_67
    move-object/from16 v16, v8

    move-object v8, v4

    move-object/from16 v4, v16

    goto :goto_70

    :cond_6d
    move-object v8, v9

    move v9, v6

    move v6, v12

    :goto_70
    if-eqz v5, :cond_78

    .line 195
    aget v5, v2, v14

    move v13, v6

    move v6, v9

    move-object v9, v8

    goto :goto_a2

    :cond_78
    move v5, v6

    move v6, v9

    move-object v9, v8

    move v8, v14

    goto :goto_3b

    :cond_7d
    add-int/lit8 v13, v5, 0x1

    .line 202
    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int v14, v8, v12

    :goto_85
    if-ne v8, v14, :cond_88

    :cond_87
    :goto_87
    return v10

    .line 207
    :cond_88
    aget v15, v2, v8

    if-ne v5, v15, :cond_a9

    add-int/2addr v8, v12

    .line 208
    aget v5, v2, v8

    if-ne v13, v6, :cond_a2

    .line 217
    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    iget v4, v9, Lokio/Segment;->pos:I

    .line 219
    iget-object v6, v9, Lokio/Segment;->data:[B

    .line 220
    iget v8, v9, Lokio/Segment;->limit:I

    move v13, v4

    move-object v4, v6

    move v6, v8

    if-ne v9, v0, :cond_a2

    move-object v9, v11

    :cond_a2
    :goto_a2
    if-ltz v5, :cond_a5

    return v5

    :cond_a5
    neg-int v8, v5

    move v5, v13

    goto/16 :goto_26

    :cond_a9
    add-int/lit8 v8, v8, 0x1

    goto :goto_85
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 147
    :cond_5
    invoke-static {p0, p1, p2}, Lokio/internal/-Buffer;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
