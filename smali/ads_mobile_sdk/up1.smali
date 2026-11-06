###### Class ads_mobile_sdk.up1 (ads_mobile_sdk.up1)
.class final Lads_mobile_sdk/up1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/nio/ByteBuffer;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/up1;->a:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lads_mobile_sdk/up1;->c:I

    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 54
    iget v1, p0, Lads_mobile_sdk/up1;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lads_mobile_sdk/up1;->c:I

    goto :goto_10

    :cond_23
    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lads_mobile_sdk/up1;->d:I

    .line 58
    invoke-direct {p0}, Lads_mobile_sdk/up1;->a()Z

    move-result p1

    if-nez p1, :cond_32

    .line 59
    sget-object p1, Lads_mobile_sdk/yh1;->b:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    .line 60
    iput v0, p0, Lads_mobile_sdk/up1;->e:I

    :cond_32
    return-void
.end method

.method private a(I)V
    .registers 3

    .line 168
    iget v0, p0, Lads_mobile_sdk/up1;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lads_mobile_sdk/up1;->e:I

    .line 169
    iget-object p1, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-ne v0, p1, :cond_10

    .line 170
    invoke-direct {p0}, Lads_mobile_sdk/up1;->a()Z

    :cond_10
    return-void
.end method

.method private a()Z
    .registers 4

    .line 68
    :cond_0
    iget v0, p0, Lads_mobile_sdk/up1;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/up1;->d:I

    .line 69
    iget-object v0, p0, Lads_mobile_sdk/up1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    return v2

    .line 72
    :cond_10
    iget-object v0, p0, Lads_mobile_sdk/up1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/up1;->e:I

    .line 75
    iget-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 76
    iput-boolean v1, p0, Lads_mobile_sdk/up1;->f:Z

    .line 77
    iget-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/up1;->g:[B

    .line 78
    iget-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/up1;->h:I

    goto :goto_48

    .line 80
    :cond_43
    iput-boolean v2, p0, Lads_mobile_sdk/up1;->f:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lads_mobile_sdk/up1;->g:[B

    :goto_48
    return v1
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lads_mobile_sdk/up1;->d:I

    iget v1, p0, Lads_mobile_sdk/up1;->c:I

    if-ne v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    .line 98
    :cond_8
    iget-boolean v0, p0, Lads_mobile_sdk/up1;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 99
    iget-object v0, p0, Lads_mobile_sdk/up1;->g:[B

    iget v2, p0, Lads_mobile_sdk/up1;->e:I

    iget v3, p0, Lads_mobile_sdk/up1;->h:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 100
    invoke-direct {p0, v1}, Lads_mobile_sdk/up1;->a(I)V

    return v0

    .line 103
    :cond_1c
    iget-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    iget v2, p0, Lads_mobile_sdk/up1;->e:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 104
    invoke-direct {p0, v1}, Lads_mobile_sdk/up1;->a(I)V

    return v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget v0, p0, Lads_mobile_sdk/up1;->d:I

    iget v1, p0, Lads_mobile_sdk/up1;->c:I

    if-ne v0, v1, :cond_8

    const/4 p1, -0x1

    return p1

    .line 218
    :cond_8
    iget-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lads_mobile_sdk/up1;->e:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_14

    move p3, v0

    .line 222
    :cond_14
    iget-boolean v0, p0, Lads_mobile_sdk/up1;->f:Z

    if-eqz v0, :cond_24

    .line 223
    iget-object v0, p0, Lads_mobile_sdk/up1;->g:[B

    iget v2, p0, Lads_mobile_sdk/up1;->h:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    invoke-direct {p0, p3}, Lads_mobile_sdk/up1;->a(I)V

    return p3

    .line 227
    :cond_24
    iget-object v0, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 228
    iget-object v1, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    iget v2, p0, Lads_mobile_sdk/up1;->e:I

    invoke-static {v1, v2}, Lads_mobile_sdk/xp1;->a(Ljava/nio/Buffer;I)V

    .line 229
    iget-object v1, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 230
    iget-object p1, p0, Lads_mobile_sdk/up1;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lads_mobile_sdk/xp1;->a(Ljava/nio/Buffer;I)V

    .line 231
    invoke-direct {p0, p3}, Lads_mobile_sdk/up1;->a(I)V

    return p3
.end method
