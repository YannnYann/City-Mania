###### Class ads_mobile_sdk.i83 (ads_mobile_sdk.i83)
.class final Lads_mobile_sdk/i83;
.super Lads_mobile_sdk/du;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/i83$b;,
        Lads_mobile_sdk/i83$c;
    }
.end annotation


# static fields
.field static final k:[I


# instance fields
.field private final f:I

.field private final g:Lads_mobile_sdk/du;

.field private final h:Lads_mobile_sdk/du;

.field private final i:I

.field private final j:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetg(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeth(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2f

    .line 61
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lads_mobile_sdk/i83;->k:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)V
    .registers 5

    .line 124
    invoke-direct {p0}, Lads_mobile_sdk/du;-><init>()V

    .line 125
    iput-object p1, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    .line 126
    iput-object p2, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    .line 127
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/i83;->i:I

    .line 128
    invoke-virtual {p2}, Lads_mobile_sdk/du;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/i83;->f:I

    .line 129
    invoke-virtual {p1}, Lads_mobile_sdk/du;->d()I

    move-result p1

    invoke-virtual {p2}, Lads_mobile_sdk/du;->d()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/i83;->j:I

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)V

    return-void
.end method

.method public static a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;
    .registers 7

    .line 146
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 150
    :cond_7
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    .line 154
    :cond_e
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0x80

    if-ge v1, v0, :cond_20

    .line 158
    invoke-static {p0, p1}, Lads_mobile_sdk/i83;->b(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0

    .line 161
    :cond_20
    instance-of v2, p0, Lads_mobile_sdk/i83;

    if-eqz v2, :cond_69

    .line 162
    move-object v2, p0

    check-cast v2, Lads_mobile_sdk/i83;

    .line 163
    iget-object v3, v2, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    invoke-virtual {v3}, Lads_mobile_sdk/du;->size()I

    move-result v3

    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v4, v0, :cond_42

    .line 174
    iget-object p0, v2, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    invoke-static {p0, p1}, Lads_mobile_sdk/i83;->b(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;

    move-result-object p0

    .line 175
    new-instance p1, Lads_mobile_sdk/i83;

    iget-object v0, v2, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-direct {p1, v0, p0}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)V

    return-object p1

    .line 178
    :cond_42
    iget-object v0, v2, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0}, Lads_mobile_sdk/du;->d()I

    move-result v0

    iget-object v3, v2, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    invoke-virtual {v3}, Lads_mobile_sdk/du;->d()I

    move-result v3

    if-le v0, v3, :cond_69

    .line 179
    invoke-virtual {v2}, Lads_mobile_sdk/i83;->d()I

    move-result v0

    invoke-virtual {p1}, Lads_mobile_sdk/du;->d()I

    move-result v3

    if-le v0, v3, :cond_69

    .line 185
    new-instance p0, Lads_mobile_sdk/i83;

    iget-object v0, v2, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    invoke-direct {p0, v0, p1}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)V

    .line 186
    new-instance p1, Lads_mobile_sdk/i83;

    iget-object v0, v2, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-direct {p1, v0, p0}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)V

    return-object p1

    .line 191
    :cond_69
    invoke-virtual {p0}, Lads_mobile_sdk/du;->d()I

    move-result v0

    invoke-virtual {p1}, Lads_mobile_sdk/du;->d()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 192
    invoke-static {v0}, Lads_mobile_sdk/i83;->g(I)I

    move-result v0

    if-lt v1, v0, :cond_83

    .line 194
    new-instance v0, Lads_mobile_sdk/i83;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)V

    return-object v0

    .line 197
    :cond_83
    new-instance v0, Lads_mobile_sdk/i83$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/i83$b;-><init>(Lads_mobile_sdk/i83-IA;)V

    invoke-static {v0, p0, p1}, Lads_mobile_sdk/i83$b;->-$$Nest$ma(Lads_mobile_sdk/i83$b;Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;
    .registers 6

    .line 209
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result v0

    .line 210
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 211
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0, v2, v3, v3, v0}, Lads_mobile_sdk/du;->a([BIII)V

    .line 213
    invoke-virtual {p1, v2, v3, v0, v1}, Lads_mobile_sdk/du;->a([BIII)V

    .line 214
    invoke-static {v2}, Lads_mobile_sdk/du;->b([B)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method public static g(I)I
    .registers 3

    .line 241
    sget-object v0, Lads_mobile_sdk/i83;->k:[I

    array-length v1, v0

    if-lt p0, v1, :cond_9

    const p0, 0x7fffffff

    return p0

    .line 244
    :cond_9
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public a(II)Lads_mobile_sdk/du;
    .registers 3

    .line 543
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/i83;->b(II)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1
.end method

.method public a(Lads_mobile_sdk/cu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/du;->a(Lads_mobile_sdk/cu;)V

    .line 1003
    iget-object v0, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/du;->a(Lads_mobile_sdk/cu;)V

    return-void
.end method

.method public b(III)I
    .registers 6

    add-int v0, p2, p3

    .line 1767
    iget v1, p0, Lads_mobile_sdk/i83;->i:I

    if-gt v0, v1, :cond_d

    .line 1768
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/du;->b(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    .line 1770
    iget-object v0, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/du;->b(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    .line 1773
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1, p2, v1}, Lads_mobile_sdk/du;->b(III)I

    move-result p1

    .line 1774
    iget-object p2, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lads_mobile_sdk/du;->b(III)I

    move-result p1

    return p1
.end method

.method public b(II)Lads_mobile_sdk/du;
    .registers 5

    .line 2138
    iget v0, p0, Lads_mobile_sdk/i83;->f:I

    invoke-static {p1, p2, v0}, Lads_mobile_sdk/du;->a(III)I

    move-result v0

    if-nez v0, :cond_b

    .line 2142
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    .line 2145
    :cond_b
    iget v1, p0, Lads_mobile_sdk/i83;->f:I

    if-ne v0, v1, :cond_10

    return-object p0

    .line 2151
    :cond_10
    iget v0, p0, Lads_mobile_sdk/i83;->i:I

    if-gt p2, v0, :cond_1b

    .line 2153
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/du;->a(II)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1

    :cond_1b
    if-lt p1, v0, :cond_26

    .line 2158
    iget-object v1, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lads_mobile_sdk/du;->a(II)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1

    .line 2162
    :cond_26
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/du;->f(I)Lads_mobile_sdk/du;

    move-result-object p1

    .line 2163
    iget-object v0, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    iget v1, p0, Lads_mobile_sdk/i83;->i:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lads_mobile_sdk/du;->a(II)Lads_mobile_sdk/du;

    move-result-object p2

    .line 2167
    new-instance v0, Lads_mobile_sdk/i83;

    invoke-direct {v0, p1, p2}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)V

    return-object v0
.end method

.method public b(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 2168
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lads_mobile_sdk/du;->i()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public b([BIII)V
    .registers 7

    add-int v0, p2, p4

    .line 616
    iget v1, p0, Lads_mobile_sdk/i83;->i:I

    if-gt v0, v1, :cond_c

    .line 617
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1, p2, p3, p4}, Lads_mobile_sdk/du;->b([BIII)V

    return-void

    :cond_c
    if-lt p2, v1, :cond_15

    .line 619
    iget-object v0, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lads_mobile_sdk/du;->b([BIII)V

    return-void

    :cond_15
    sub-int/2addr v1, p2

    .line 622
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1, p2, p3, v1}, Lads_mobile_sdk/du;->b([BIII)V

    .line 623
    iget-object p2, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lads_mobile_sdk/du;->b([BIII)V

    return-void
.end method

.method public b(Lads_mobile_sdk/du;)Z
    .registers 13

    .line 1152
    new-instance v0, Lads_mobile_sdk/i83$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/i83$c;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    .line 1153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du$j;

    .line 1156
    new-instance v3, Lads_mobile_sdk/i83$c;

    invoke-direct {v3, p1, v1}, Lads_mobile_sdk/i83$c;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    .line 1157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/du$j;

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    .line 1161
    :goto_1b
    invoke-virtual {v2}, Lads_mobile_sdk/du;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .line 1162
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .line 1163
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_30

    .line 1168
    invoke-virtual {v2, p1, v5, v9}, Lads_mobile_sdk/du$j;->a(Lads_mobile_sdk/du;II)Z

    move-result v10

    goto :goto_34

    .line 1169
    :cond_30
    invoke-virtual {p1, v2, v4, v9}, Lads_mobile_sdk/du$j;->a(Lads_mobile_sdk/du;II)Z

    move-result v10

    :goto_34
    if-nez v10, :cond_37

    return v1

    :cond_37
    add-int/2addr v6, v9

    .line 1175
    iget v10, p0, Lads_mobile_sdk/i83;->f:I

    if-lt v6, v10, :cond_46

    if-ne v6, v10, :cond_40

    const/4 p1, 0x1

    return p1

    .line 1179
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_46
    if-ne v9, v7, :cond_50

    .line 1184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du$j;

    move v4, v1

    goto :goto_51

    :cond_50
    add-int/2addr v4, v9

    :goto_51
    if-ne v9, v8, :cond_5b

    .line 1190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/du$j;

    move v5, v1

    goto :goto_1b

    :cond_5b
    add-int/2addr v5, v9

    goto :goto_1b
.end method

.method public d(I)B
    .registers 4

    .line 581
    iget v0, p0, Lads_mobile_sdk/i83;->i:I

    if-ge p1, v0, :cond_b

    .line 582
    iget-object v0, p0, Lads_mobile_sdk/i83;->g:Lads_mobile_sdk/du;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/du;->d(I)B

    move-result p1

    return p1

    .line 585
    :cond_b
    iget-object v1, p0, Lads_mobile_sdk/i83;->h:Lads_mobile_sdk/du;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lads_mobile_sdk/du;->d(I)B

    move-result p1

    return p1
.end method

.method public d()I
    .registers 2

    .line 316
    iget v0, p0, Lads_mobile_sdk/i83;->j:I

    return v0
.end method

.method public e()Z
    .registers 3

    .line 328
    iget v0, p0, Lads_mobile_sdk/i83;->f:I

    iget v1, p0, Lads_mobile_sdk/i83;->j:I

    invoke-static {v1}, Lads_mobile_sdk/i83;->g(I)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public f()Lads_mobile_sdk/du$g;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/i83$a;

    invoke-direct {v0, p0}, Lads_mobile_sdk/i83$a;-><init>(Lads_mobile_sdk/i83;)V

    return-object v0
.end method

.method public g()Lads_mobile_sdk/my;
    .registers 3

    .line 842
    invoke-virtual {p0}, Lads_mobile_sdk/i83;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lads_mobile_sdk/my;->a(Ljava/lang/Iterable;Z)Lads_mobile_sdk/my;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lads_mobile_sdk/i83;->f()Lads_mobile_sdk/du$g;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lads_mobile_sdk/i83$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lads_mobile_sdk/i83$c;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    .line 3
    :goto_b
    invoke-virtual {v1}, Lads_mobile_sdk/i83$c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4
    invoke-virtual {v1}, Lads_mobile_sdk/i83$c;->c()Lads_mobile_sdk/du$j;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lads_mobile_sdk/du;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 274
    iget v0, p0, Lads_mobile_sdk/i83;->f:I

    return v0
.end method

###### Class ads_mobile_sdk.i83.a (ads_mobile_sdk.i83$a)
.class Lads_mobile_sdk/i83$a;
.super Lads_mobile_sdk/du$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lads_mobile_sdk/i83;->f()Lads_mobile_sdk/du$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final a:Lads_mobile_sdk/i83$c;

.field b:Lads_mobile_sdk/du$g;

.field final synthetic c:Lads_mobile_sdk/i83;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i83;)V
    .registers 4

    .line 279
    iput-object p1, p0, Lads_mobile_sdk/i83$a;->c:Lads_mobile_sdk/i83;

    invoke-direct {p0}, Lads_mobile_sdk/du$c;-><init>()V

    .line 280
    new-instance v0, Lads_mobile_sdk/i83$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lads_mobile_sdk/i83$c;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    iput-object v0, p0, Lads_mobile_sdk/i83$a;->a:Lads_mobile_sdk/i83$c;

    .line 281
    invoke-direct {p0}, Lads_mobile_sdk/i83$a;->c()Lads_mobile_sdk/du$g;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    return-void
.end method

.method private c()Lads_mobile_sdk/du$g;
    .registers 2

    .line 289
    iget-object v0, p0, Lads_mobile_sdk/i83$a;->a:Lads_mobile_sdk/i83$c;

    invoke-virtual {v0}, Lads_mobile_sdk/i83$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lads_mobile_sdk/i83$a;->a:Lads_mobile_sdk/i83$c;

    invoke-virtual {v0}, Lads_mobile_sdk/i83$c;->c()Lads_mobile_sdk/du$j;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/du;->f()Lads_mobile_sdk/du$g;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()B
    .registers 3

    .line 299
    iget-object v0, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    if-eqz v0, :cond_17

    .line 302
    invoke-interface {v0}, Lads_mobile_sdk/du$g;->a()B

    move-result v0

    .line 303
    iget-object v1, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 304
    invoke-direct {p0}, Lads_mobile_sdk/i83$a;->c()Lads_mobile_sdk/du$g;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    :cond_16
    return v0

    .line 305
    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    .line 294
    iget-object v0, p0, Lads_mobile_sdk/i83$a;->b:Lads_mobile_sdk/du$g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

###### Class ads_mobile_sdk.i83.b (ads_mobile_sdk.i83$b)
.class Lads_mobile_sdk/i83$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/i83;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lads_mobile_sdk/du;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$ma(Lads_mobile_sdk/i83$b;Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/i83-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lads_mobile_sdk/i83$b;-><init>()V

    return-void
.end method

.method private a(I)I
    .registers 3

    .line 1279
    sget-object v0, Lads_mobile_sdk/i83;->k:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_d

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_d
    return p1
.end method

.method private a(Lads_mobile_sdk/du;Lads_mobile_sdk/du;)Lads_mobile_sdk/du;
    .registers 5

    .line 622
    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    .line 623
    invoke-direct {p0, p2}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    .line 626
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/du;

    .line 627
    :goto_e
    iget-object p2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    .line 628
    iget-object p2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/du;

    .line 629
    new-instance v0, Lads_mobile_sdk/i83;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    move-object p1, v0

    goto :goto_e

    :cond_26
    return-object p1
.end method

.method private a(Lads_mobile_sdk/du;)V
    .registers 5

    .line 1270
    invoke-virtual {p1}, Lads_mobile_sdk/du;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1271
    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->b(Lads_mobile_sdk/du;)V

    return-void

    .line 1272
    :cond_a
    instance-of v0, p1, Lads_mobile_sdk/i83;

    if-eqz v0, :cond_1f

    .line 1273
    check-cast p1, Lads_mobile_sdk/i83;

    .line 1274
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgetg(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    .line 1275
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgeth(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->a(Lads_mobile_sdk/du;)V

    return-void

    .line 1277
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lads_mobile_sdk/du;)V
    .registers 7

    .line 666
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/i83$b;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 667
    invoke-static {v1}, Lads_mobile_sdk/i83;->g(I)I

    move-result v1

    .line 673
    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du;

    invoke-virtual {v2}, Lads_mobile_sdk/du;->size()I

    move-result v2

    if-lt v2, v1, :cond_25

    goto :goto_95

    .line 676
    :cond_25
    invoke-static {v0}, Lads_mobile_sdk/i83;->g(I)I

    move-result v0

    .line 679
    iget-object v1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/du;

    .line 680
    :goto_31
    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_57

    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du;

    invoke-virtual {v2}, Lads_mobile_sdk/du;->size()I

    move-result v2

    if-ge v2, v0, :cond_57

    .line 681
    iget-object v2, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/du;

    .line 682
    new-instance v4, Lads_mobile_sdk/i83;

    invoke-direct {v4, v2, v1, v3}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    move-object v1, v4

    goto :goto_31

    .line 686
    :cond_57
    new-instance v0, Lads_mobile_sdk/i83;

    invoke-direct {v0, v1, p1, v3}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    .line 689
    :goto_5c
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8f

    .line 690
    invoke-virtual {v0}, Lads_mobile_sdk/i83;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$b;->a(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 691
    invoke-static {p1}, Lads_mobile_sdk/i83;->g(I)I

    move-result p1

    .line 692
    iget-object v1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/du;

    invoke-virtual {v1}, Lads_mobile_sdk/du;->size()I

    move-result v1

    if-ge v1, p1, :cond_8f

    .line 693
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/du;

    .line 694
    new-instance v1, Lads_mobile_sdk/i83;

    invoke-direct {v1, p1, v0, v3}, Lads_mobile_sdk/i83;-><init>(Lads_mobile_sdk/du;Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V

    move-object v0, v1

    goto :goto_5c

    .line 699
    :cond_8f
    iget-object p1, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 700
    :cond_95
    :goto_95
    iget-object v0, p0, Lads_mobile_sdk/i83$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method

###### Class ads_mobile_sdk.i83.c (ads_mobile_sdk.i83$c)
.class final Lads_mobile_sdk/i83$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/i83;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lads_mobile_sdk/du$j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lads_mobile_sdk/i83;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lads_mobile_sdk/du$j;


# direct methods
.method private constructor <init>(Lads_mobile_sdk/du;)V
    .registers 4

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    instance-of v0, p1, Lads_mobile_sdk/i83;

    if-eqz v0, :cond_22

    .line 729
    check-cast p1, Lads_mobile_sdk/i83;

    .line 730
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lads_mobile_sdk/i83;->d()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    .line 731
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 732
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgetg(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object p1

    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$c;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du$j;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    return-void

    :cond_22
    const/4 v0, 0x0

    .line 734
    iput-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    .line 735
    check-cast p1, Lads_mobile_sdk/du$j;

    iput-object p1, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/du;Lads_mobile_sdk/i83-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lads_mobile_sdk/i83$c;-><init>(Lads_mobile_sdk/du;)V

    return-void
.end method

.method private a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du$j;
    .registers 3

    .line 741
    :goto_0
    instance-of v0, p1, Lads_mobile_sdk/i83;

    if-eqz v0, :cond_10

    .line 742
    check-cast p1, Lads_mobile_sdk/i83;

    .line 743
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 744
    invoke-static {p1}, Lads_mobile_sdk/i83;->-$$Nest$fgetg(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object p1

    goto :goto_0

    .line 746
    :cond_10
    check-cast p1, Lads_mobile_sdk/du$j;

    return-object p1
.end method

.method private b()Lads_mobile_sdk/du$j;
    .registers 3

    .line 756
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_22

    .line 759
    :cond_b
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/i83;

    invoke-static {v0}, Lads_mobile_sdk/i83;->-$$Nest$fgeth(Lads_mobile_sdk/i83;)Lads_mobile_sdk/du;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/i83$c;->a(Lads_mobile_sdk/du;)Lads_mobile_sdk/du$j;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lads_mobile_sdk/du;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_22
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c()Lads_mobile_sdk/du$j;
    .registers 3

    .line 779
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    if-eqz v0, :cond_b

    .line 783
    invoke-direct {p0}, Lads_mobile_sdk/i83$c;->b()Lads_mobile_sdk/du$j;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    return-object v0

    .line 784
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 2

    .line 769
    iget-object v0, p0, Lads_mobile_sdk/i83$c;->b:Lads_mobile_sdk/du$j;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 723
    invoke-virtual {p0}, Lads_mobile_sdk/i83$c;->c()Lads_mobile_sdk/du$j;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
