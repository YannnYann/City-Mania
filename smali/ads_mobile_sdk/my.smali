###### Class ads_mobile_sdk.my (ads_mobile_sdk.my)
.class public abstract Lads_mobile_sdk/my;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/my$b;,
        Lads_mobile_sdk/my$a;
    }
.end annotation


# static fields
.field private static volatile g:I = 0x64


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    sget v0, Lads_mobile_sdk/my;->g:I

    iput v0, p0, Lads_mobile_sdk/my;->c:I

    const v0, 0x7fffffff

    .line 232
    iput v0, p0, Lads_mobile_sdk/my;->d:I

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lads_mobile_sdk/my;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/my-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lads_mobile_sdk/my;-><init>()V

    return-void
.end method

.method public static a(J)J
    .registers 6

    .line 0
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;)Lads_mobile_sdk/my;
    .registers 2

    const/16 v0, 0x1000

    .line 289
    invoke-static {p0, v0}, Lads_mobile_sdk/my;->a(Ljava/io/InputStream;I)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;I)Lads_mobile_sdk/my;
    .registers 4

    if-lez p1, :cond_12

    if-nez p0, :cond_b

    .line 380
    sget-object p0, Lads_mobile_sdk/yh1;->a:[B

    invoke-static {p0}, Lads_mobile_sdk/my;->a([B)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0

    .line 382
    :cond_b
    new-instance v0, Lads_mobile_sdk/my$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lads_mobile_sdk/my$b;-><init>(Ljava/io/InputStream;ILads_mobile_sdk/my-IA;)V

    return-object v0

    .line 383
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Iterable;Z)Lads_mobile_sdk/my;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;Z)",
            "Lads_mobile_sdk/my;"
        }
    .end annotation

    .line 607
    new-instance p1, Lads_mobile_sdk/up1;

    invoke-direct {p1, p0}, Lads_mobile_sdk/up1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {p1}, Lads_mobile_sdk/my;->a(Ljava/io/InputStream;)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Lads_mobile_sdk/my;
    .registers 3

    .line 492
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/my;->a([BII)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lads_mobile_sdk/my;
    .registers 4

    const/4 v0, 0x0

    .line 606
    invoke-static {p0, p1, p2, v0}, Lads_mobile_sdk/my;->a([BIIZ)Lads_mobile_sdk/my;

    move-result-object p0

    return-object p0
.end method

.method public static a([BIIZ)Lads_mobile_sdk/my;
    .registers 10

    .line 608
    new-instance v0, Lads_mobile_sdk/my$a;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/my$a;-><init>([BIIZLads_mobile_sdk/my-IA;)V

    .line 616
    :try_start_a
    invoke-virtual {v0, v3}, Lads_mobile_sdk/my$a;->e(I)I
    :try_end_d
    .catch Lads_mobile_sdk/np1; {:try_start_a .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    move-object p0, v0

    .line 625
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(I)I
    .registers 2

    .line 0
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public A()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    :cond_0
    invoke-virtual {p0}, Lads_mobile_sdk/my;->x()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    .line 279
    :cond_7
    invoke-virtual {p0}, Lads_mobile_sdk/my;->a()V

    .line 280
    iget v1, p0, Lads_mobile_sdk/my;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lads_mobile_sdk/my;->b:I

    .line 281
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->g(I)Z

    move-result v0

    .line 282
    iget v1, p0, Lads_mobile_sdk/my;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lads_mobile_sdk/my;->b:I

    if-nez v0, :cond_0

    :goto_1c
    return-void
.end method

.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 211
    iget v0, p0, Lads_mobile_sdk/my;->a:I

    iget v1, p0, Lads_mobile_sdk/my;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/my;->c:I

    if-ge v0, v1, :cond_a

    return-void

    .line 212
    :cond_a
    invoke-static {}, Lads_mobile_sdk/np1;->i()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 222
    iget v0, p0, Lads_mobile_sdk/my;->b:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->a(I)V

    :cond_8
    return-void
.end method

.method public abstract c()I
.end method

.method public abstract c(I)V
.end method

.method public final d()I
    .registers 3

    .line 587
    iget v0, p0, Lads_mobile_sdk/my;->c:I

    iget v1, p0, Lads_mobile_sdk/my;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/my;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1269
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->a(I)V

    .line 1270
    iget v0, p0, Lads_mobile_sdk/my;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lads_mobile_sdk/my;->a:I

    .line 1271
    invoke-virtual {p0}, Lads_mobile_sdk/my;->c()I

    move-result v0

    if-nez v0, :cond_14

    .line 1274
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my;->c(I)V

    return-void

    .line 1275
    :cond_14
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public abstract e()I
.end method

.method public abstract e(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation
.end method

.method public final f(I)I
    .registers 5

    if-ltz p1, :cond_7

    .line 574
    iget v0, p0, Lads_mobile_sdk/my;->c:I

    .line 575
    iput p1, p0, Lads_mobile_sdk/my;->c:I

    return v0

    .line 576
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract f()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final g()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    invoke-virtual {p0}, Lads_mobile_sdk/my;->q()I

    move-result v0

    .line 668
    invoke-virtual {p0}, Lads_mobile_sdk/my;->a()V

    .line 669
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my;->e(I)I

    move-result v0

    .line 670
    iget v1, p0, Lads_mobile_sdk/my;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lads_mobile_sdk/my;->a:I

    return v0
.end method

.method public abstract g(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()Lads_mobile_sdk/du;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract k()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract u()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract x()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract y()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class ads_mobile_sdk.my.a (ads_mobile_sdk.my$a)
.class final Lads_mobile_sdk/my$a;
.super Lads_mobile_sdk/my;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final h:[B

.field private final i:I

.field private final j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    const/4 v0, 0x0

    .line 874
    invoke-direct {p0, v0}, Lads_mobile_sdk/my;-><init>(Lads_mobile_sdk/my-IA;)V

    const v0, 0x7fffffff

    .line 875
    iput v0, p0, Lads_mobile_sdk/my$a;->p:I

    .line 878
    iput-object p1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/2addr p3, p2

    .line 879
    iput p3, p0, Lads_mobile_sdk/my$a;->i:I

    .line 880
    iput p3, p0, Lads_mobile_sdk/my$a;->k:I

    .line 881
    iput p2, p0, Lads_mobile_sdk/my$a;->l:I

    .line 882
    iput p2, p0, Lads_mobile_sdk/my$a;->m:I

    .line 883
    iput-boolean p4, p0, Lads_mobile_sdk/my$a;->j:Z

    return-void
.end method

.method public synthetic constructor <init>([BIIZLads_mobile_sdk/my-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lads_mobile_sdk/my$a;-><init>([BIIZ)V

    return-void
.end method

.method private E()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1245
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1247
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v2, v0, 0x1

    .line 1248
    aget-byte v3, v1, v0

    if-ltz v3, :cond_c

    goto/16 :goto_6f

    :cond_c
    add-int/lit8 v4, v0, 0x2

    .line 1250
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v3

    if-gez v2, :cond_19

    xor-int/lit8 v3, v2, -0x80

    :goto_17
    move v2, v4

    goto :goto_6f

    :cond_19
    add-int/lit8 v3, v0, 0x3

    .line 1252
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_27

    xor-int/lit16 v0, v2, 0x3f80

    move v2, v3

    move v3, v0

    goto :goto_6f

    :cond_27
    add-int/lit8 v4, v0, 0x4

    .line 1254
    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_36

    const v0, -0x1fc080

    xor-int v3, v2, v0

    goto :goto_17

    :cond_36
    add-int/lit8 v3, v0, 0x5

    .line 1257
    aget-byte v4, v1, v4

    shl-int/lit8 v5, v4, 0x1c

    xor-int/2addr v2, v5

    const v5, 0xfe03f80

    xor-int/2addr v2, v5

    if-gez v4, :cond_69

    add-int/lit8 v4, v0, 0x6

    .line 1260
    aget-byte v3, v1, v3

    if-gez v3, :cond_6d

    add-int/lit8 v3, v0, 0x7

    aget-byte v4, v1, v4

    if-gez v4, :cond_69

    add-int/lit8 v4, v0, 0x8

    aget-byte v3, v1, v3

    if-gez v3, :cond_6d

    add-int/lit8 v3, v0, 0x9

    aget-byte v4, v1, v4

    if-gez v4, :cond_69

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v1, v3

    if-ltz v1, :cond_64

    move v3, v2

    move v2, v0

    goto :goto_6f

    .line 1266
    :cond_64
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    :cond_69
    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_6f

    :cond_6d
    move v3, v2

    goto :goto_17

    .line 1269
    :goto_6f
    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    return v3
.end method

.method private H()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    iget v0, p0, Lads_mobile_sdk/my$a;->k:I

    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 1275
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->I()V

    return-void

    .line 1277
    :cond_d
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->J()V

    return-void
.end method

.method private I()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 1283
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lads_mobile_sdk/my$a;->l:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1287
    :cond_15
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method private J()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1292
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->B()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1296
    :cond_f
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method private b(Z)Lads_mobile_sdk/du;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    if-lez v0, :cond_28

    .line 1125
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_28

    .line 1129
    iget-boolean v1, p0, Lads_mobile_sdk/my$a;->j:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lads_mobile_sdk/my$a;->o:Z

    if-eqz v1, :cond_1c

    .line 1130
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v1, v2, v0, p1}, Lads_mobile_sdk/du;->b([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    goto :goto_22

    .line 1131
    :cond_1c
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v1, v2, v0, p1}, Lads_mobile_sdk/du;->a([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    .line 1132
    :goto_22
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$a;->l:I

    return-object p1

    :cond_28
    if-nez v0, :cond_2d

    .line 1136
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    .line 1139
    :cond_2d
    invoke-virtual {p0, v0}, Lads_mobile_sdk/my$a;->h(I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lads_mobile_sdk/du;->a([BZ)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1
.end method

.method private i(I)V
    .registers 3

    .line 2612
    iput p1, p0, Lads_mobile_sdk/my$a;->p:I

    .line 2619
    iget v0, p0, Lads_mobile_sdk/my$a;->i:I

    if-gt p1, v0, :cond_9

    .line 2620
    iput p1, p0, Lads_mobile_sdk/my$a;->k:I

    return-void

    .line 2622
    :cond_9
    iput v0, p0, Lads_mobile_sdk/my$a;->k:I

    return-void
.end method


# virtual methods
.method public B()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1553
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    if-eq v0, v1, :cond_f

    .line 1556
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    aget-byte v0, v1, v0

    return v0

    .line 1557
    :cond_f
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public C()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1396
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 1400
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v2, v0, 0x4

    .line 1401
    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1402
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1403
    :cond_2e
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public D()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1410
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1412
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5b

    .line 1416
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v3, v0, 0x8

    .line 1417
    iput v3, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1418
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1419
    :cond_5b
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public F()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1314
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    .line 1316
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_cb

    .line 1320
    :cond_8
    iget-object v2, p0, Lads_mobile_sdk/my$a;->h:[B

    add-int/lit8 v3, v0, 0x1

    .line 1323
    aget-byte v4, v2, v0

    if-ltz v4, :cond_14

    .line 1324
    iput v3, p0, Lads_mobile_sdk/my$a;->l:I

    int-to-long v0, v4

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1b

    goto/16 :goto_cb

    :cond_1b
    add-int/lit8 v1, v0, 0x2

    .line 1328
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_29

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_c8

    :cond_29
    add-int/lit8 v4, v0, 0x3

    .line 1330
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_38

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_c8

    :cond_38
    add-int/lit8 v3, v0, 0x4

    .line 1332
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4b

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_c8

    :cond_4b
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    .line 1334
    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_62

    const-wide/32 v5, 0xfe03f80

    :goto_5f
    xor-long v2, v3, v5

    goto :goto_c8

    :cond_62
    add-int/lit8 v7, v0, 0x6

    .line 1336
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_78

    const-wide v0, -0x7f01fc080L

    :goto_74
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_c8

    :cond_78
    add-int/lit8 v1, v0, 0x7

    .line 1338
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8b

    const-wide v5, 0x3f80fe03f80L

    goto :goto_5f

    :cond_8b
    add-int/lit8 v7, v0, 0x8

    .line 1340
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_9e

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_74

    :cond_9e
    add-int/lit8 v1, v0, 0x9

    .line 1349
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_b1

    const-wide v5, 0xfe03f80fe03f80L

    goto :goto_5f

    .line 1359
    :cond_b1
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v2, 0x3f

    shl-long/2addr v7, v2

    xor-long v2, v3, v7

    cmp-long v4, v2, v5

    if-ltz v4, :cond_cb

    add-int/lit8 v0, v0, 0xa

    if-ltz v1, :cond_cb

    const-wide v4, -0x7f01fc07f01fc080L    # -6.838959413692434E-304

    xor-long/2addr v2, v4

    move v1, v0

    .line 1373
    :goto_c8
    iput v1, p0, Lads_mobile_sdk/my$a;->l:I

    return-wide v2

    .line 1376
    :cond_cb
    :goto_cb
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->G()J

    move-result-wide v0

    return-wide v0
.end method

.method public G()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1383
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->B()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 1389
    :cond_18
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 901
    iget v0, p0, Lads_mobile_sdk/my$a;->n:I

    if-ne v0, p1, :cond_5

    return-void

    .line 902
    :cond_5
    invoke-static {}, Lads_mobile_sdk/np1;->b()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public a(Z)V
    .registers 2

    .line 2332
    iput-boolean p1, p0, Lads_mobile_sdk/my$a;->o:Z

    return-void
.end method

.method public c()I
    .registers 3

    .line 1489
    iget v0, p0, Lads_mobile_sdk/my$a;->p:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    .line 1493
    :cond_9
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .registers 2

    .line 2977
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$a;->i(I)V

    return-void
.end method

.method public e()I
    .registers 3

    .line 1503
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    iget v1, p0, Lads_mobile_sdk/my$a;->m:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-ltz p1, :cond_25

    .line 2947
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    add-int v1, v0, p1

    if-gez v1, :cond_18

    .line 2951
    iget v1, p0, Lads_mobile_sdk/my$a;->m:I

    sub-int/2addr v0, v1

    const v1, 0x7fffffff

    sub-int v0, v1, v0

    if-gt p1, v0, :cond_13

    goto :goto_18

    .line 2952
    :cond_13
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2957
    :cond_18
    :goto_18
    iget p1, p0, Lads_mobile_sdk/my$a;->p:I

    if-gt v1, p1, :cond_20

    .line 2961
    invoke-direct {p0, v1}, Lads_mobile_sdk/my$a;->i(I)V

    return p1

    .line 2962
    :cond_20
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2963
    :cond_25
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public f()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1498
    iget v0, p0, Lads_mobile_sdk/my$a;->l:I

    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    invoke-static {p1}, Lads_mobile_sdk/u24;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    if-eq v0, v1, :cond_3a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_32

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_23

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    .line 936
    invoke-virtual {p0, v3}, Lads_mobile_sdk/my$a;->j(I)V

    return v1

    .line 935
    :cond_19
    invoke-static {}, Lads_mobile_sdk/np1;->e()Lads_mobile_sdk/np1$a;

    move-result-object p1

    throw p1

    .line 937
    :cond_1e
    invoke-virtual {p0}, Lads_mobile_sdk/my;->b()V

    const/4 p1, 0x0

    return p1

    .line 938
    :cond_23
    invoke-virtual {p0}, Lads_mobile_sdk/my;->A()V

    .line 940
    invoke-static {p1}, Lads_mobile_sdk/u24;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    .line 941
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$a;->a(I)V

    return v1

    .line 942
    :cond_32
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$a;->j(I)V

    return v1

    :cond_3a
    const/16 p1, 0x8

    .line 943
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$a;->j(I)V

    return v1

    .line 944
    :cond_40
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->H()V

    return v1
.end method

.method public h()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public h(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_13

    .line 2591
    iget v0, p0, Lads_mobile_sdk/my$a;->k:I

    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_13

    add-int/2addr p1, v1

    .line 2593
    iput p1, p0, Lads_mobile_sdk/my$a;->l:I

    .line 2594
    iget-object v0, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_13
    if-gtz p1, :cond_1f

    if-nez p1, :cond_1a

    .line 2599
    sget-object p1, Lads_mobile_sdk/yh1;->a:[B

    return-object p1

    .line 2601
    :cond_1a
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2604
    :cond_1f
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public i()Lads_mobile_sdk/du;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1144
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$a;->b(Z)Lads_mobile_sdk/du;

    move-result-object v0

    return-object v0
.end method

.method public j()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public j(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_d

    .line 2589
    iget v0, p0, Lads_mobile_sdk/my$a;->k:I

    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    .line 2591
    iput v1, p0, Lads_mobile_sdk/my$a;->l:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    .line 2596
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 2598
    :cond_14
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public k()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->C()I

    move-result v0

    return v0
.end method

.method public m()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public o()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    return v0
.end method

.method public p()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1010
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    :try_start_0
    invoke-direct {p0}, Lads_mobile_sdk/my$a;->E()I

    move-result v0

    .line 1224
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    iget v2, p0, Lads_mobile_sdk/my$a;->k:I

    if-gt v1, v2, :cond_b

    return v0

    .line 1225
    :cond_b
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_10} :catch_1d
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_10} :catch_10

    :catch_10
    move-exception v0

    .line 1233
    iget v1, p0, Lads_mobile_sdk/my$a;->l:I

    iget v2, p0, Lads_mobile_sdk/my$a;->k:I

    if-le v1, v2, :cond_1c

    .line 1234
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    .line 1236
    :cond_1c
    throw v0

    .line 1237
    :catch_1d
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public r()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1200
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->C()I

    move-result v0

    return v0
.end method

.method public s()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public t()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/my;->b(I)I

    move-result v0

    return v0
.end method

.method public u()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

    move-result-wide v0

    invoke-static {v0, v1}, Lads_mobile_sdk/my;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1036
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    .line 1039
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/my$a;->h:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1040
    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    .line 1045
    const-string v0, ""

    return-object v0

    :cond_21
    if-gez v0, :cond_28

    .line 1048
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    .line 1050
    :cond_28
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public w()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    if-lez v0, :cond_19

    .line 1056
    iget v1, p0, Lads_mobile_sdk/my$a;->k:I

    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    .line 1057
    iget-object v1, p0, Lads_mobile_sdk/my$a;->h:[B

    invoke-static {v1, v2, v0}, Lads_mobile_sdk/hx3;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 1058
    iget v2, p0, Lads_mobile_sdk/my$a;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$a;->l:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    .line 1063
    const-string v0, ""

    return-object v0

    :cond_1e
    if-gtz v0, :cond_25

    .line 1066
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0

    .line 1068
    :cond_25
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public x()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 886
    iput v0, p0, Lads_mobile_sdk/my$a;->n:I

    return v0

    .line 890
    :cond_a
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/my$a;->n:I

    .line 891
    invoke-static {v0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 896
    iget v0, p0, Lads_mobile_sdk/my$a;->n:I

    return v0

    .line 897
    :cond_19
    invoke-static {}, Lads_mobile_sdk/np1;->c()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public y()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->q()I

    move-result v0

    return v0
.end method

.method public z()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    invoke-virtual {p0}, Lads_mobile_sdk/my$a;->F()J

    move-result-wide v0

    return-wide v0
.end method

###### Class ads_mobile_sdk.my.b (ads_mobile_sdk.my$b)
.class final Lads_mobile_sdk/my$b;
.super Lads_mobile_sdk/my;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final h:Ljava/io/InputStream;

.field private final i:[B

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1631
    invoke-direct {p0, v0}, Lads_mobile_sdk/my;-><init>(Lads_mobile_sdk/my-IA;)V

    const v0, 0x7fffffff

    .line 1632
    iput v0, p0, Lads_mobile_sdk/my$b;->o:I

    .line 1635
    const-string v0, "input"

    invoke-static {p1, v0}, Lads_mobile_sdk/yh1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x8

    if-ge p2, v0, :cond_13

    move p2, v0

    .line 1639
    :cond_13
    iput-object p1, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    .line 1640
    new-array p1, p2, [B

    iput-object p1, p0, Lads_mobile_sdk/my$b;->i:[B

    const/4 p1, 0x0

    .line 1641
    iput p1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 1642
    iput p1, p0, Lads_mobile_sdk/my$b;->l:I

    .line 1643
    iput p1, p0, Lads_mobile_sdk/my$b;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;ILads_mobile_sdk/my-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/my$b;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private G()V
    .registers 4

    .line 2283
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/my$b;->j:I

    .line 2284
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    .line 2285
    iget v2, p0, Lads_mobile_sdk/my$b;->o:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    .line 2287
    iput v1, p0, Lads_mobile_sdk/my$b;->k:I

    sub-int/2addr v0, v1

    .line 2288
    iput v0, p0, Lads_mobile_sdk/my$b;->j:I

    return-void

    :cond_15
    const/4 v0, 0x0

    .line 2290
    iput v0, p0, Lads_mobile_sdk/my$b;->k:I

    return-void
.end method

.method private H()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2085
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2086
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->I()V

    return-void

    .line 2088
    :cond_d
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->J()V

    return-void
.end method

.method private I()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 2094
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2098
    :cond_15
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method private J()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 2103
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->B()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2107
    :cond_f
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method private static a(Ljava/io/InputStream;[BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3358
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_4
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 3360
    invoke-virtual {p0}, Lads_mobile_sdk/np1;->j()V

    .line 3361
    throw p0
.end method

.method private static a(Ljava/io/InputStream;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7681
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_4
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception p0

    .line 7683
    invoke-virtual {p0}, Lads_mobile_sdk/np1;->j()V

    .line 7684
    throw p0
.end method

.method private a(IZ)Lads_mobile_sdk/du;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5978
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->h(I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 5982
    array-length p1, v0

    invoke-static {v0, v1, p1, p2}, Lads_mobile_sdk/du;->a([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1

    .line 5985
    :cond_d
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 5986
    iget v2, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v3, v2, v0

    .line 5989
    iget v4, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v4, v2

    iput v4, p0, Lads_mobile_sdk/my$b;->n:I

    .line 5990
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    .line 5991
    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v2, p1, v3

    .line 5998
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->i(I)Ljava/util/List;

    move-result-object v2

    .line 6001
    new-array p1, p1, [B

    .line 6004
    iget-object v4, p0, Lads_mobile_sdk/my$b;->i:[B

    invoke-static {v4, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6008
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6009
    array-length v4, v2

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6010
    array-length v2, v2

    add-int/2addr v3, v2

    goto :goto_2d

    :cond_40
    if-eqz p2, :cond_4e

    .line 6013
    invoke-static {p1}, Lads_mobile_sdk/hx3;->a([B)Z

    move-result p2

    if-eqz p2, :cond_49

    goto :goto_4e

    .line 6014
    :cond_49
    invoke-static {}, Lads_mobile_sdk/np1;->d()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 6016
    :cond_4e
    :goto_4e
    invoke-static {p1}, Lads_mobile_sdk/du;->b([B)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1
.end method

.method private static a(III)Z
    .registers 3

    .line 0
    if-lt p2, p0, :cond_8

    sub-int/2addr p2, p0

    if-le p1, p2, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/io/InputStream;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1674
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_4
    .catch Lads_mobile_sdk/np1; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 1676
    invoke-virtual {p0}, Lads_mobile_sdk/np1;->j()V

    .line 1677
    throw p0
.end method

.method private b(Z)Lads_mobile_sdk/du;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3616
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    .line 3617
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    if-lez v0, :cond_19

    .line 3620
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    invoke-static {v1, v2, v0, p1}, Lads_mobile_sdk/du;->a([BIIZ)Lads_mobile_sdk/du;

    move-result-object p1

    .line 3621
    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return-object p1

    :cond_19
    if-nez v0, :cond_1e

    .line 3625
    sget-object p1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    return-object p1

    :cond_1e
    if-ltz v0, :cond_25

    .line 3630
    invoke-direct {p0, v0, p1}, Lads_mobile_sdk/my$b;->a(IZ)Lads_mobile_sdk/du;

    move-result-object p1

    return-object p1

    .line 3631
    :cond_25
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method private b(IZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6106
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->h(I)[B

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_f

    .line 6108
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_f
    return-object v0

    .line 6111
    :cond_10
    iget p2, p0, Lads_mobile_sdk/my$b;->l:I

    .line 6112
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v1, v0, p2

    .line 6115
    iget v2, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$b;->n:I

    const/4 v0, 0x0

    .line 6116
    iput v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 6117
    iput v0, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v2, p1, v1

    .line 6124
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->i(I)Ljava/util/List;

    move-result-object v2

    .line 6127
    new-array p1, p1, [B

    .line 6130
    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 6135
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6136
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_31

    :cond_44
    return-object p1
.end method

.method private h(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 4351
    sget-object p1, Lads_mobile_sdk/yh1;->a:[B

    return-object p1

    :cond_5
    if-ltz p1, :cond_73

    .line 4358
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    .line 4359
    iget v1, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 4364
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4368
    iget p1, p0, Lads_mobile_sdk/my$b;->o:I

    if-lt p1, v0, :cond_24

    sub-int/2addr p1, v0

    .line 4369
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    .line 4371
    :cond_24
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4374
    :cond_29
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_3f

    .line 4378
    iget-object v2, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    invoke-static {v2}, Lads_mobile_sdk/my$b;->b(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p1, 0x0

    return-object p1

    .line 4381
    :cond_3f
    :goto_3f
    new-array v1, p1, [B

    .line 4384
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v3, p0, Lads_mobile_sdk/my$b;->l:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4385
    iget v2, p0, Lads_mobile_sdk/my$b;->n:I

    iget v3, p0, Lads_mobile_sdk/my$b;->j:I

    add-int/2addr v2, v3

    iput v2, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4386
    iput v4, p0, Lads_mobile_sdk/my$b;->l:I

    .line 4387
    iput v4, p0, Lads_mobile_sdk/my$b;->j:I

    :goto_54
    if-ge v0, p1, :cond_6d

    .line 4392
    iget-object v2, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_68

    .line 4396
    iget v3, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v3, v2

    iput v3, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v0, v2

    goto :goto_54

    .line 4397
    :cond_68
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_6d
    return-object v1

    .line 4398
    :cond_6e
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4399
    :cond_73
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method private i(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez p1, :cond_2e

    const/16 v1, 0x1000

    .line 1963
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    .line 1966
    iget-object v4, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-static {v4, v2, v3, v5}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;[BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 1970
    iget v5, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v5, v4

    iput v5, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v3, v4

    goto :goto_10

    .line 1971
    :cond_24
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_29
    sub-int/2addr p1, v1

    .line 1977
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method private j(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4135
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->m(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4138
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 4139
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4141
    :cond_18
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    :cond_1d
    return-void
.end method

.method private l(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_ac

    .line 4500
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    .line 4501
    iget v1, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 4505
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4509
    iget p1, p0, Lads_mobile_sdk/my$b;->o:I

    if-lt p1, v0, :cond_1f

    sub-int/2addr p1, v0

    .line 4510
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    .line 4512
    :cond_1f
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4516
    :cond_24
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4517
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 4518
    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 4519
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    :goto_33
    if-ge v0, p1, :cond_81

    sub-int v1, p1, v0

    .line 4524
    :try_start_37
    iget-object v2, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_4e

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4e

    if-nez v5, :cond_4b

    goto :goto_81

    :cond_4b
    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_33

    .line 4526
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v3, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    .line 4527
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#skip returned invalid result: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_77
    .catchall {:try_start_37 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p1

    .line 4541
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4542
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    .line 4543
    throw p1

    .line 4544
    :cond_81
    :goto_81
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4545
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    if-ge v0, p1, :cond_a6

    .line 4549
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int v1, v0, v1

    .line 4550
    iput v0, p0, Lads_mobile_sdk/my$b;->l:I

    const/4 v0, 0x1

    .line 4554
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    :goto_97
    sub-int v2, p1, v1

    .line 4555
    iget v3, p0, Lads_mobile_sdk/my$b;->j:I

    if-le v2, v3, :cond_a4

    add-int/2addr v1, v3

    .line 4557
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    .line 4558
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    goto :goto_97

    .line 4561
    :cond_a4
    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    :cond_a6
    return-void

    .line 4562
    :cond_a7
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4563
    :cond_ac
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method private m(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4180
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    add-int v1, v0, p1

    iget v2, p0, Lads_mobile_sdk/my$b;->j:I

    if-le v1, v2, :cond_98

    .line 4188
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    .line 4189
    iget v0, p0, Lads_mobile_sdk/my;->d:I

    invoke-static {v1, p1, v0}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    return v2

    .line 4194
    :cond_15
    iget v0, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v1, p1, v0}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v2

    .line 4199
    :cond_1e
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    if-lez v0, :cond_38

    .line 4201
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-le v1, v0, :cond_2c

    .line 4202
    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    sub-int/2addr v1, v0

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4204
    :cond_2c
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->n:I

    .line 4205
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 4206
    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    .line 4210
    :cond_38
    :goto_38
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    if-ge v0, p1, :cond_96

    .line 4211
    iget v1, p0, Lads_mobile_sdk/my;->d:I

    iget v3, p0, Lads_mobile_sdk/my$b;->n:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    if-gtz v1, :cond_45

    return v2

    .line 4215
    :cond_45
    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4217
    iget-object v1, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v4, p0, Lads_mobile_sdk/my$b;->j:I

    invoke-static {v1, v3, v4, v0}, Lads_mobile_sdk/my$b;->a(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6d

    .line 4218
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    array-length v1, v1

    if-gt v0, v1, :cond_6d

    if-gtz v0, :cond_64

    return v2

    .line 4228
    :cond_64
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/my$b;->j:I

    .line 4229
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    goto :goto_38

    .line 4230
    :cond_6d
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lads_mobile_sdk/my$b;->h:Ljava/io/InputStream;

    .line 4231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_96
    const/4 p1, 0x1

    return p1

    .line 4232
    :cond_98
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public B()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2419
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    .line 2420
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    .line 2422
    :cond_a
    iget-object v0, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public C()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2205
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2207
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 2208
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->j(I)V

    .line 2209
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2212
    :cond_d
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v2, v0, 0x4

    .line 2213
    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2214
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public D()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2222
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2224
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 2225
    invoke-direct {p0, v2}, Lads_mobile_sdk/my$b;->j(I)V

    .line 2226
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2229
    :cond_e
    iget-object v1, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v3, v0, 0x8

    .line 2230
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2231
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public E()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2127
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_cb

    .line 2131
    :cond_8
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v3, v0, 0x1

    .line 2134
    aget-byte v4, v2, v0

    if-ltz v4, :cond_14

    .line 2135
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    int-to-long v0, v4

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1b

    goto/16 :goto_cb

    :cond_1b
    add-int/lit8 v1, v0, 0x2

    .line 2139
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_29

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_c8

    :cond_29
    add-int/lit8 v4, v0, 0x3

    .line 2141
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_38

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_c8

    :cond_38
    add-int/lit8 v3, v0, 0x4

    .line 2143
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4b

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_c8

    :cond_4b
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    .line 2145
    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_62

    const-wide/32 v5, 0xfe03f80

    :goto_5f
    xor-long v2, v3, v5

    goto :goto_c8

    :cond_62
    add-int/lit8 v7, v0, 0x6

    .line 2147
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_78

    const-wide v0, -0x7f01fc080L

    :goto_74
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_c8

    :cond_78
    add-int/lit8 v1, v0, 0x7

    .line 2149
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8b

    const-wide v5, 0x3f80fe03f80L

    goto :goto_5f

    :cond_8b
    add-int/lit8 v7, v0, 0x8

    .line 2151
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_9e

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_74

    :cond_9e
    add-int/lit8 v1, v0, 0x9

    .line 2160
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_b1

    const-wide v5, 0xfe03f80fe03f80L

    goto :goto_5f

    .line 2170
    :cond_b1
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v2, 0x3f

    shl-long/2addr v7, v2

    xor-long v2, v3, v7

    cmp-long v4, v2, v5

    if-ltz v4, :cond_cb

    add-int/lit8 v0, v0, 0xa

    if-ltz v1, :cond_cb

    const-wide v4, -0x7f01fc07f01fc080L    # -6.838959413692434E-304

    xor-long/2addr v2, v4

    move v1, v0

    .line 2184
    :goto_c8
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return-wide v2

    .line 2187
    :cond_cb
    :goto_cb
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public F()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 2194
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->B()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2200
    :cond_18
    invoke-static {}, Lads_mobile_sdk/np1;->f()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1699
    iget v0, p0, Lads_mobile_sdk/my$b;->m:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1700
    :cond_5
    invoke-static {}, Lads_mobile_sdk/np1;->b()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public a(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public c()I
    .registers 4

    .line 2302
    iget v0, p0, Lads_mobile_sdk/my$b;->o:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    .line 2306
    :cond_9
    iget v1, p0, Lads_mobile_sdk/my$b;->n:I

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(I)V
    .registers 2

    .line 4602
    iput p1, p0, Lads_mobile_sdk/my$b;->o:I

    .line 4603
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    return-void
.end method

.method public e()I
    .registers 3

    .line 2317
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-ltz p1, :cond_28

    .line 4584
    iget v0, p0, Lads_mobile_sdk/my$b;->n:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_23

    .line 4588
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/my$b;->a(III)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 4591
    iget v1, p0, Lads_mobile_sdk/my$b;->o:I

    add-int/2addr v0, p1

    .line 4592
    iput v0, p0, Lads_mobile_sdk/my$b;->o:I

    .line 4594
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->G()V

    return v1

    .line 4595
    :cond_1e
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4596
    :cond_23
    invoke-static {}, Lads_mobile_sdk/np1;->k()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 4597
    :cond_28
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method

.method public f()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2312
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->m(I)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1711
    invoke-static {p1}, Lads_mobile_sdk/u24;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    if-eq v0, v1, :cond_3a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_32

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_23

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    .line 1734
    invoke-virtual {p0, v3}, Lads_mobile_sdk/my$b;->k(I)V

    return v1

    .line 1733
    :cond_19
    invoke-static {}, Lads_mobile_sdk/np1;->e()Lads_mobile_sdk/np1$a;

    move-result-object p1

    throw p1

    .line 1735
    :cond_1e
    invoke-virtual {p0}, Lads_mobile_sdk/my;->b()V

    const/4 p1, 0x0

    return p1

    .line 1736
    :cond_23
    invoke-virtual {p0}, Lads_mobile_sdk/my;->A()V

    .line 1738
    invoke-static {p1}, Lads_mobile_sdk/u24;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    .line 1739
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->a(I)V

    return v1

    .line 1740
    :cond_32
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    return v1

    :cond_3a
    const/16 p1, 0x8

    .line 1741
    invoke-virtual {p0, p1}, Lads_mobile_sdk/my$b;->k(I)V

    return v1

    .line 1742
    :cond_40
    invoke-direct {p0}, Lads_mobile_sdk/my$b;->H()V

    return v1
.end method

.method public h()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1828
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public i()Lads_mobile_sdk/du;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1958
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->b(Z)Lads_mobile_sdk/du;

    move-result-object v0

    return-object v0
.end method

.method public j()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1793
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public k()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2016
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    return v0
.end method

.method public k(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4676
    iget v0, p0, Lads_mobile_sdk/my$b;->j:I

    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    if-ltz p1, :cond_d

    add-int/2addr v1, p1

    .line 4678
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return-void

    .line 4680
    :cond_d
    invoke-direct {p0, p1}, Lads_mobile_sdk/my$b;->l(I)V

    return-void
.end method

.method public l()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1823
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->C()I

    move-result v0

    return v0
.end method

.method public m()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1818
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1798
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public o()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1813
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    return v0
.end method

.method public p()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1808
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2046
    iget v0, p0, Lads_mobile_sdk/my$b;->l:I

    .line 2048
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-ne v1, v0, :cond_7

    goto :goto_6b

    .line 2052
    :cond_7
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int/lit8 v3, v0, 0x1

    .line 2054
    aget-byte v4, v2, v0

    if-ltz v4, :cond_12

    .line 2055
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    return v4

    :cond_12
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_18

    goto :goto_6b

    :cond_18
    add-int/lit8 v1, v0, 0x2

    .line 2059
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_24

    xor-int/lit8 v0, v3, -0x80

    goto :goto_76

    :cond_24
    add-int/lit8 v4, v0, 0x3

    .line 2061
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_31

    xor-int/lit16 v0, v1, 0x3f80

    :goto_2f
    move v1, v4

    goto :goto_76

    :cond_31
    add-int/lit8 v3, v0, 0x4

    .line 2063
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_40

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    move v1, v3

    goto :goto_76

    :cond_40
    add-int/lit8 v4, v0, 0x5

    .line 2066
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_74

    add-int/lit8 v3, v0, 0x6

    .line 2069
    aget-byte v4, v2, v4

    if-gez v4, :cond_73

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_73

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_71

    .line 2081
    :goto_6b
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->F()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_71
    move v4, v0

    goto :goto_74

    :cond_73
    move v4, v3

    :cond_74
    :goto_74
    move v0, v1

    goto :goto_2f

    .line 2082
    :goto_76
    iput v1, p0, Lads_mobile_sdk/my$b;->l:I

    return v0
.end method

.method public r()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2021
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->C()I

    move-result v0

    return v0
.end method

.method public s()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2026
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public t()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2031
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/my;->b(I)I

    move-result v0

    return v0
.end method

.method public u()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2036
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    invoke-static {v0, v1}, Lads_mobile_sdk/my;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1833
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1834
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    .line 1837
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/my$b;->i:[B

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1838
    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    .line 1842
    const-string v0, ""

    return-object v0

    :cond_21
    if-ltz v0, :cond_48

    .line 1847
    iget v1, p0, Lads_mobile_sdk/my$b;->j:I

    if-gt v0, v1, :cond_3b

    .line 1848
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    .line 1849
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    iget v3, p0, Lads_mobile_sdk/my$b;->l:I

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1850
    iget v2, p0, Lads_mobile_sdk/my$b;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Lads_mobile_sdk/my$b;->l:I

    return-object v1

    .line 1854
    :cond_3b
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lads_mobile_sdk/my$b;->b(IZ)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 1855
    :cond_48
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public w()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1859
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    .line 1861
    iget v1, p0, Lads_mobile_sdk/my$b;->l:I

    .line 1863
    iget v2, p0, Lads_mobile_sdk/my$b;->j:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_15

    if-lez v0, :cond_15

    .line 1866
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    add-int v3, v1, v0

    .line 1867
    iput v3, p0, Lads_mobile_sdk/my$b;->l:I

    goto :goto_2b

    :cond_15
    if-nez v0, :cond_1a

    .line 1870
    const-string v0, ""

    return-object v0

    :cond_1a
    if-ltz v0, :cond_30

    const/4 v1, 0x0

    if-gt v0, v2, :cond_27

    .line 1874
    invoke-direct {p0, v0}, Lads_mobile_sdk/my$b;->j(I)V

    .line 1875
    iget-object v2, p0, Lads_mobile_sdk/my$b;->i:[B

    .line 1877
    iput v0, p0, Lads_mobile_sdk/my$b;->l:I

    goto :goto_2b

    .line 1880
    :cond_27
    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/my$b;->b(IZ)[B

    move-result-object v2

    .line 1883
    :goto_2b
    invoke-static {v2, v1, v0}, Lads_mobile_sdk/hx3;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1884
    :cond_30
    invoke-static {}, Lads_mobile_sdk/np1;->g()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public x()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1683
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1684
    iput v0, p0, Lads_mobile_sdk/my$b;->m:I

    return v0

    .line 1688
    :cond_a
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    iput v0, p0, Lads_mobile_sdk/my$b;->m:I

    .line 1689
    invoke-static {v0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 1694
    iget v0, p0, Lads_mobile_sdk/my$b;->m:I

    return v0

    .line 1695
    :cond_19
    invoke-static {}, Lads_mobile_sdk/np1;->c()Lads_mobile_sdk/np1;

    move-result-object v0

    throw v0
.end method

.method public y()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2011
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->q()I

    move-result v0

    return v0
.end method

.method public z()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1803
    invoke-virtual {p0}, Lads_mobile_sdk/my$b;->E()J

    move-result-wide v0

    return-wide v0
.end method
