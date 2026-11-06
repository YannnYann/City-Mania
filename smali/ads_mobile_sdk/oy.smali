###### Class ads_mobile_sdk.oy (ads_mobile_sdk.oy)
.class public abstract Lads_mobile_sdk/oy;
.super Lads_mobile_sdk/cu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/oy$d;,
        Lads_mobile_sdk/oy$a;,
        Lads_mobile_sdk/oy$b;,
        Lads_mobile_sdk/oy$c;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Lads_mobile_sdk/cu;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/oy-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lads_mobile_sdk/oy;-><init>()V

    return-void
.end method

.method public static a(D)I
    .registers 2

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public static a(F)I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public static a(I)I
    .registers 1

    .line 5523
    invoke-static {p0}, Lads_mobile_sdk/oy;->c(I)I

    move-result p0

    return p0
.end method

.method public static a(ID)I
    .registers 3

    .line 4192
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->a(D)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(IF)I
    .registers 2

    .line 6578
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(F)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(II)I
    .registers 2

    .line 4752
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(IJ)I
    .registers 3

    .line 6042
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->a(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(ILads_mobile_sdk/du;)I
    .registers 2

    .line 2859
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Lads_mobile_sdk/du;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(ILjava/lang/String;)I
    .registers 2

    .line 7951
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(IZ)I
    .registers 2

    .line 1488
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->a(Z)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(J)I
    .registers 2

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public static a(Lads_mobile_sdk/du;)I
    .registers 1

    .line 3649
    invoke-virtual {p0}, Lads_mobile_sdk/du;->size()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Lads_mobile_sdk/tw1;)I
    .registers 1

    .line 7384
    invoke-interface {p0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 1

    .line 8727
    invoke-static {p0}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Z)I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static a([B)I
    .registers 1

    .line 2284
    array-length p0, p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->d(I)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/OutputStream;I)Lads_mobile_sdk/oy;
    .registers 3

    .line 9735
    new-instance v0, Lads_mobile_sdk/oy$d;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/oy$d;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static b(I)I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public static b(II)I
    .registers 2

    .line 479
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->b(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(IJ)I
    .registers 3

    .line 975
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->b(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(ILads_mobile_sdk/du;)I
    .registers 4

    const/4 v0, 0x1

    .line 2331
    invoke-static {v0}, Lads_mobile_sdk/oy;->h(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 2332
    invoke-static {v1, p0}, Lads_mobile_sdk/oy;->f(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 2333
    invoke-static {v0, p1}, Lads_mobile_sdk/oy;->a(ILads_mobile_sdk/du;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static b(J)I
    .registers 2

    .line 1701
    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->e(J)I

    move-result p0

    return p0
.end method

.method public static b([B)Lads_mobile_sdk/oy;
    .registers 3

    .line 2425
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/oy;->b([BII)Lads_mobile_sdk/oy;

    move-result-object p0

    return-object p0
.end method

.method public static b([BII)Lads_mobile_sdk/oy;
    .registers 4

    .line 5097
    new-instance v0, Lads_mobile_sdk/oy$a;

    invoke-direct {v0, p0, p1, p2}, Lads_mobile_sdk/oy$a;-><init>([BII)V

    return-object v0
.end method

.method public static c(I)I
    .registers 3

    int-to-long v0, p0

    .line 1116
    invoke-static {v0, v1}, Lads_mobile_sdk/oy;->e(J)I

    move-result p0

    return p0
.end method

.method public static c(II)I
    .registers 2

    .line 455
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->c(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(IJ)I
    .registers 3

    .line 1643
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->c(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static c(J)I
    .registers 2

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public static d(I)I
    .registers 2

    .line 880
    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(II)I
    .registers 2

    .line 1367
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->f(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(IJ)I
    .registers 3

    .line 1878
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->d(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static d(J)I
    .registers 2

    .line 2616
    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->f(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lads_mobile_sdk/oy;->e(J)I

    move-result p0

    return p0
.end method

.method public static e(I)I
    .registers 2

    .line 0
    const/16 v0, 0x1000

    if-le p0, v0, :cond_5

    return v0

    :cond_5
    return p0
.end method

.method public static e(II)I
    .registers 2

    .line 472
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(IJ)I
    .registers 3

    .line 975
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->e(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static e(J)I
    .registers 2

    .line 1706
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static f(I)I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public static f(II)I
    .registers 2

    .line 464
    invoke-static {p0}, Lads_mobile_sdk/oy;->h(I)I

    move-result p0

    invoke-static {p1}, Lads_mobile_sdk/oy;->i(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static f(J)J
    .registers 5

    .line 0
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static g(I)I
    .registers 1

    .line 711
    invoke-static {p0}, Lads_mobile_sdk/oy;->j(I)I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result p0

    return p0
.end method

.method public static h(I)I
    .registers 2

    const/4 v0, 0x0

    .line 653
    invoke-static {p0, v0}, Lads_mobile_sdk/u24;->a(II)I

    move-result p0

    invoke-static {p0}, Lads_mobile_sdk/oy;->i(I)I

    move-result p0

    return p0
.end method

.method public static i(I)I
    .registers 1

    .line 705
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static j(I)I
    .registers 2

    .line 0
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 933
    invoke-virtual {p0}, Lads_mobile_sdk/oy;->d()I

    move-result v0

    if-gtz v0, :cond_15

    .line 936
    invoke-virtual {p0}, Lads_mobile_sdk/oy;->d()I

    move-result v0

    if-ltz v0, :cond_d

    return-void

    .line 937
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrote more data than expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(ILads_mobile_sdk/tw1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 9732
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy;->l(II)V

    .line 9733
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy;->b(Lads_mobile_sdk/tw1;)V

    const/4 p2, 0x4

    .line 9734
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->l(II)V

    return-void
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3456
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->g(J)V

    return-void
.end method

.method public final b(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4079
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->l(I)V

    return-void
.end method

.method public final b(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3063
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->f(IJ)V

    return-void
.end method

.method public final b(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3691
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->h(II)V

    return-void
.end method

.method public abstract b(ILads_mobile_sdk/tw1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lads_mobile_sdk/du;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(Lads_mobile_sdk/tw1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5096
    invoke-interface {p1, p0}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 2823
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->a(B)V

    return-void
.end method

.method public abstract c(ILads_mobile_sdk/du;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lads_mobile_sdk/tw1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2225
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lads_mobile_sdk/oy;->c([BII)V

    return-void
.end method

.method public abstract c([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public c()Z
    .registers 2

    .line 1805
    iget-boolean v0, p0, Lads_mobile_sdk/oy;->b:Z

    return v0
.end method

.method public abstract d()I
.end method

.method public abstract d(ILads_mobile_sdk/du;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final g(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->i(II)V

    return-void
.end method

.method public final g(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->j(IJ)V

    return-void
.end method

.method public abstract g(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final h(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1248
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->f(IJ)V

    return-void
.end method

.method public final h(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->k(J)V

    return-void
.end method

.method public abstract i(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final i(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1309
    invoke-static {p2, p3}, Lads_mobile_sdk/oy;->f(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy;->j(IJ)V

    return-void
.end method

.method public final i(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->g(J)V

    return-void
.end method

.method public final j(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->h(II)V

    return-void
.end method

.method public abstract j(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final j(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    invoke-static {p1, p2}, Lads_mobile_sdk/oy;->f(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->k(J)V

    return-void
.end method

.method public final k(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->m(I)V

    return-void
.end method

.method public final k(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    invoke-static {p2}, Lads_mobile_sdk/oy;->j(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy;->m(II)V

    return-void
.end method

.method public abstract k(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final n(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->l(I)V

    return-void
.end method

.method public final o(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-static {p1}, Lads_mobile_sdk/oy;->j(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy;->p(I)V

    return-void
.end method

.method public abstract p(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class ads_mobile_sdk.oy.a (ads_mobile_sdk.oy$a)
.class final Lads_mobile_sdk/oy$a;
.super Lads_mobile_sdk/oy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final c:[B

.field private final d:I

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>([BII)V
    .registers 5

    const/4 v0, 0x0

    .line 1131
    invoke-direct {p0, p1, p2, p3, v0}, Lads_mobile_sdk/oy$a;-><init>([BIILads_mobile_sdk/oy$b;)V

    return-void
.end method

.method public constructor <init>([BIILads_mobile_sdk/oy$b;)V
    .registers 7

    const/4 p4, 0x0

    .line 2265
    invoke-direct {p0, p4}, Lads_mobile_sdk/oy;-><init>(Lads_mobile_sdk/oy-IA;)V

    if-eqz p1, :cond_3f

    or-int p4, p2, p3

    .line 2269
    array-length v0, p1

    add-int v1, p2, p3

    sub-int/2addr v0, v1

    or-int/2addr p4, v0

    if-ltz p4, :cond_18

    .line 2278
    iput-object p1, p0, Lads_mobile_sdk/oy$a;->c:[B

    .line 2279
    iput p2, p0, Lads_mobile_sdk/oy$a;->d:I

    .line 2280
    iput p2, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 2281
    iput v1, p0, Lads_mobile_sdk/oy$a;->e:I

    return-void

    .line 2282
    :cond_18
    new-instance p4, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p1, p1

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array range is invalid. Buffer.length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2284
    const-string p1, ", offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2285
    const-string p1, ", length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 2286
    :cond_3f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1285
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 1287
    :try_start_2
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4} :catch_e

    add-int/lit8 v2, v0, 0x1

    :try_start_6
    aput-byte p1, v1, v0
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_8} :catch_b

    .line 1291
    iput v2, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_b
    move-exception p1

    move v0, v2

    goto :goto_f

    :catch_e
    move-exception p1

    .line 1292
    :goto_f
    new-instance v1, Lads_mobile_sdk/oy$c;

    iget v2, p0, Lads_mobile_sdk/oy$a;->e:I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v1
.end method

.method public final a([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2775
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$a;->d([BII)V

    return-void
.end method

.method public b()V
    .registers 1

    .line 0
    return-void
.end method

.method public final b(ILads_mobile_sdk/tw1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3686
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$a;->l(II)V

    const/4 v2, 0x2

    .line 3687
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$a;->m(II)V

    .line 3688
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$a;->c(ILads_mobile_sdk/tw1;)V

    const/4 p1, 0x4

    .line 3689
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$a;->l(II)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4886
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 4887
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1192
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    int-to-byte p1, p2

    .line 1193
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->a(B)V

    return-void
.end method

.method public final b(Lads_mobile_sdk/du;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2423
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 2424
    invoke-virtual {p1, p0}, Lads_mobile_sdk/du;->a(Lads_mobile_sdk/cu;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4888
    sget-boolean v0, Lads_mobile_sdk/hx3;->b:Z

    if-eqz v0, :cond_14

    .line 4889
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 4890
    array-length v0, p1

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 4891
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lads_mobile_sdk/oy$a;->d([BII)V

    return-void

    .line 4896
    :cond_14
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 4898
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lads_mobile_sdk/oy;->i(I)I

    move-result v1

    add-int v2, v0, v1

    .line 4899
    iput v2, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 4900
    iget-object v3, p0, Lads_mobile_sdk/oy$a;->c:[B

    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {p1, v3, v2, v4}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 4902
    invoke-static {p1}, Lads_mobile_sdk/oy;->i(I)I

    move-result v3

    if-eq v3, v1, :cond_3c

    .line 4904
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B

    add-int v4, v0, v3

    invoke-static {v1, v2, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3c

    :catch_3a
    move-exception p1

    goto :goto_46

    .line 4911
    :cond_3c
    :goto_3c
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 4912
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->p(I)V

    add-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 4913
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_45
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_45} :catch_3a

    return-void

    .line 4915
    :goto_46
    new-instance v0, Lads_mobile_sdk/oy$c;

    invoke-direct {v0, p1}, Lads_mobile_sdk/oy$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(ILads_mobile_sdk/du;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2441
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 2442
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->b(Lads_mobile_sdk/du;)V

    return-void
.end method

.method public final c(ILads_mobile_sdk/tw1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 3697
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 3698
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->c(Lads_mobile_sdk/tw1;)V

    return-void
.end method

.method public final c(Lads_mobile_sdk/tw1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4977
    invoke-interface {p1}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 4978
    invoke-interface {p1, p0}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    return-void
.end method

.method public final c([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0, p3}, Lads_mobile_sdk/oy$a;->p(I)V

    .line 1238
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$a;->d([BII)V

    return-void
.end method

.method public final d()I
    .registers 3

    .line 1545
    iget v0, p0, Lads_mobile_sdk/oy$a;->e:I

    iget v1, p0, Lads_mobile_sdk/oy$a;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(ILads_mobile_sdk/du;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 4295
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$a;->l(II)V

    const/4 v2, 0x2

    .line 4296
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$a;->m(II)V

    .line 4297
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$a;->c(ILads_mobile_sdk/du;)V

    const/4 p1, 0x4

    .line 4298
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$a;->l(II)V

    return-void
.end method

.method public final d([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3019
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/oy$a;->c:[B

    iget v1, p0, Lads_mobile_sdk/oy$a;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7} :catch_d

    .line 3023
    iget p1, p0, Lads_mobile_sdk/oy$a;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_d
    move-exception p1

    .line 3024
    new-instance p2, Lads_mobile_sdk/oy$c;

    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    invoke-direct {p2, v0, v1, p3, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final f(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1185
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1186
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$a;->g(J)V

    return-void
.end method

.method public final g(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1454
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    const/16 v1, 0x8

    .line 1456
    :try_start_4
    iget-object v2, p0, Lads_mobile_sdk/oy$a;->c:[B

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-long v4, p1, v1

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1457
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1458
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1459
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x4

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1460
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x5

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1461
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x6

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 1462
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x7

    const/16 v4, 0x38

    shr-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 1463
    aput-byte p1, v2, v3
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4d} :catch_51

    add-int/2addr v0, v1

    .line 1468
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_51
    move-exception p1

    .line 1469
    new-instance p2, Lads_mobile_sdk/oy$c;

    iget v2, p0, Lads_mobile_sdk/oy$a;->e:I

    invoke-direct {p2, v0, v2, v1, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final h(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1173
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1174
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->l(I)V

    return-void
.end method

.method public final i(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1161
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1162
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->m(I)V

    return-void
.end method

.method public final j(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 1180
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$a;->k(J)V

    return-void
.end method

.method public final k(J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1380
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    const-wide/16 v1, -0x80

    and-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 1383
    :try_start_c
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    .line 1384
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_17
    move-exception p1

    goto/16 :goto_116

    .line 1387
    :cond_1a
    iget-object v3, p0, Lads_mobile_sdk/oy$a;->c:[B

    long-to-int v4, p1

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v4, 0x7

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_36

    add-int/lit8 p1, v0, 0x1

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1390
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x2

    .line 1391
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_36
    add-int/lit8 v4, v0, 0x1

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1394
    aput-byte v7, v3, v4

    const/16 v4, 0xe

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_53

    add-int/lit8 p1, v0, 0x2

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1397
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x3

    .line 1398
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_53
    add-int/lit8 v4, v0, 0x2

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1401
    aput-byte v7, v3, v4

    const/16 v4, 0x15

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_70

    add-int/lit8 p1, v0, 0x3

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1404
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x4

    .line 1405
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_70
    add-int/lit8 v4, v0, 0x3

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1408
    aput-byte v7, v3, v4

    const/16 v4, 0x1c

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_8d

    add-int/lit8 p1, v0, 0x4

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1411
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x5

    .line 1412
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_8d
    add-int/lit8 v4, v0, 0x4

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1415
    aput-byte v7, v3, v4

    const/16 v4, 0x23

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_aa

    add-int/lit8 p1, v0, 0x5

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1418
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x6

    .line 1419
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_aa
    add-int/lit8 v4, v0, 0x5

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1422
    aput-byte v7, v3, v4

    const/16 v4, 0x2a

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_c7

    add-int/lit8 p1, v0, 0x6

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1425
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x7

    .line 1426
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_c7
    add-int/lit8 v4, v0, 0x6

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1429
    aput-byte v7, v3, v4

    const/16 v4, 0x31

    ushr-long v7, p1, v4

    and-long v9, v7, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_e4

    add-int/lit8 p1, v0, 0x7

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1432
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x8

    .line 1433
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_e4
    add-int/lit8 v4, v0, 0x7

    long-to-int v7, v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 1436
    aput-byte v7, v3, v4

    const/16 v4, 0x38

    ushr-long v7, p1, v4

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-nez v1, :cond_100

    add-int/lit8 p1, v0, 0x8

    long-to-int p2, v7

    int-to-byte p2, p2

    .line 1439
    aput-byte p2, v3, p1

    add-int/lit8 p1, v0, 0x9

    .line 1440
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :cond_100
    add-int/lit8 v1, v0, 0x8

    long-to-int v2, v7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1443
    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x9

    const/16 v2, 0x3f

    ushr-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 1444
    aput-byte p1, v3, v1

    add-int/lit8 p1, v0, 0xa

    .line 1445
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_115
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_115} :catch_17

    return-void

    .line 1448
    :goto_116
    new-instance p2, Lads_mobile_sdk/oy$c;

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw p2
.end method

.method public final l(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1365
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    const/4 v1, 0x4

    .line 1367
    :try_start_3
    iget-object v2, p0, Lads_mobile_sdk/oy$a;->c:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 1368
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 1369
    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 1370
    aput-byte p1, v2, v3
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_1d} :catch_21

    add-int/2addr v0, v1

    .line 1375
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_21
    move-exception p1

    .line 1376
    new-instance v2, Lads_mobile_sdk/oy$c;

    iget v3, p0, Lads_mobile_sdk/oy$a;->e:I

    invoke-direct {v2, v0, v3, v1, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v2
.end method

.method public final l(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2532
    invoke-static {p1, p2}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->p(I)V

    return-void
.end method

.method public final m(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 1297
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$a;->p(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 1301
    iget p1, p0, Lads_mobile_sdk/oy$a;->f:I

    .line 1303
    :try_start_9
    iget-object v2, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_b} :catch_5a

    add-int/lit8 v3, p1, 0x1

    long-to-int v4, v0

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    :try_start_11
    aput-byte v4, v2, p1
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_13} :catch_5c

    add-int/lit8 v4, p1, 0x2

    const/4 v5, 0x7

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1304
    :try_start_1c
    aput-byte v5, v2, v3
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1e} :catch_61

    add-int/lit8 v3, p1, 0x3

    const/16 v5, 0xe

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1305
    :try_start_28
    aput-byte v5, v2, v4
    :try_end_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_2a} :catch_5c

    add-int/lit8 v4, p1, 0x4

    const/16 v5, 0x15

    ushr-long v5, v0, v5

    long-to-int v5, v5

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 1306
    :try_start_34
    aput-byte v5, v2, v3
    :try_end_36
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_36} :catch_61

    add-int/lit8 v3, p1, 0x5

    const/16 v5, 0x1c

    ushr-long/2addr v0, v5

    long-to-int v0, v0

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 1307
    :try_start_3f
    aput-byte v0, v2, v4
    :try_end_41
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_41} :catch_5c

    add-int/lit8 v0, p1, 0x6

    const/4 v1, -0x1

    .line 1308
    :try_start_44
    aput-byte v1, v2, v3
    :try_end_46
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_46} :catch_5e

    add-int/lit8 v3, p1, 0x7

    .line 1309
    :try_start_48
    aput-byte v1, v2, v0
    :try_end_4a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_4a} :catch_5c

    add-int/lit8 v0, p1, 0x8

    .line 1310
    :try_start_4c
    aput-byte v1, v2, v3
    :try_end_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_4e} :catch_5e

    add-int/lit8 v3, p1, 0x9

    .line 1311
    :try_start_50
    aput-byte v1, v2, v0
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_52} :catch_5c

    add-int/lit8 p1, p1, 0xa

    const/4 v0, 0x1

    .line 1312
    :try_start_55
    aput-byte v0, v2, v3
    :try_end_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_57} :catch_5a

    .line 1316
    iput p1, p0, Lads_mobile_sdk/oy$a;->f:I

    return-void

    :catch_5a
    move-exception v0

    goto :goto_65

    :catch_5c
    move-exception p1

    goto :goto_63

    :catch_5e
    move-exception p1

    move v3, v0

    goto :goto_63

    :catch_61
    move-exception p1

    goto :goto_67

    :goto_63
    move v4, v3

    goto :goto_67

    :goto_65
    move v4, p1

    move-object p1, v0

    .line 1317
    :goto_67
    new-instance v0, Lads_mobile_sdk/oy$c;

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    const/16 v2, 0xa

    invoke-direct {v0, v4, v1, v2, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v0
.end method

.method public final m(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2484
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$a;->l(II)V

    .line 2485
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$a;->p(I)V

    return-void
.end method

.method public final p(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1322
    iget v0, p0, Lads_mobile_sdk/oy$a;->f:I

    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_15

    .line 1325
    :try_start_6
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_8} :catch_13

    add-int/lit8 v2, v0, 0x1

    int-to-byte p1, p1

    :try_start_b
    aput-byte p1, v1, v0

    .line 1326
    iput v2, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    move v0, v2

    goto :goto_72

    :catch_13
    move-exception p1

    goto :goto_72

    .line 1329
    :cond_15
    :try_start_15
    iget-object v1, p0, Lads_mobile_sdk/oy$a;->c:[B
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_17} :catch_13

    add-int/lit8 v2, v0, 0x1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    :try_start_1c
    aput-byte v3, v1, v0
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1e} :catch_6f

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_2c

    add-int/lit8 v0, v0, 0x2

    int-to-byte p1, v3

    .line 1333
    :try_start_27
    aput-byte p1, v1, v2

    .line 1334
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_2b} :catch_13

    return-void

    :cond_2c
    add-int/lit8 v4, v0, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1337
    :try_start_31
    aput-byte v3, v1, v2
    :try_end_33
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_33} :catch_6c

    ushr-int/lit8 v2, p1, 0xe

    and-int/lit8 v3, v2, -0x80

    if-nez v3, :cond_41

    add-int/lit8 v0, v0, 0x3

    int-to-byte p1, v2

    .line 1341
    :try_start_3c
    aput-byte p1, v1, v4

    .line 1342
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_40
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3c .. :try_end_40} :catch_13

    return-void

    :cond_41
    add-int/lit8 v3, v0, 0x3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1345
    :try_start_46
    aput-byte v2, v1, v4
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_46 .. :try_end_48} :catch_69

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v4, v2, -0x80

    if-nez v4, :cond_56

    add-int/lit8 v0, v0, 0x4

    int-to-byte p1, v2

    .line 1349
    :try_start_51
    aput-byte p1, v1, v3

    .line 1350
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_55
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_51 .. :try_end_55} :catch_13

    return-void

    :cond_56
    add-int/lit8 v4, v0, 0x4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 1353
    :try_start_5b
    aput-byte v2, v1, v3
    :try_end_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b .. :try_end_5d} :catch_67

    ushr-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x5

    int-to-byte p1, p1

    .line 1356
    :try_start_62
    aput-byte p1, v1, v4

    .line 1357
    iput v0, p0, Lads_mobile_sdk/oy$a;->f:I
    :try_end_66
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_62 .. :try_end_66} :catch_13

    return-void

    :catch_67
    move-exception p1

    goto :goto_73

    :catch_69
    move-exception p1

    move v2, v3

    goto :goto_70

    :catch_6c
    move-exception p1

    move v2, v4

    goto :goto_70

    :catch_6f
    move-exception p1

    :goto_70
    move v4, v2

    goto :goto_73

    :goto_72
    move v4, v0

    .line 1359
    :goto_73
    new-instance v0, Lads_mobile_sdk/oy$c;

    iget v1, p0, Lads_mobile_sdk/oy$a;->e:I

    const/4 v2, 0x1

    invoke-direct {v0, v4, v1, v2, p1}, Lads_mobile_sdk/oy$c;-><init>(IIILjava/lang/Throwable;)V

    throw v0
.end method

###### Class ads_mobile_sdk.oy.b (ads_mobile_sdk.oy$b)
.class public abstract Lads_mobile_sdk/oy$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

###### Class ads_mobile_sdk.oy.c (ads_mobile_sdk.oy$c)
.class public Lads_mobile_sdk/oy$c;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(IIILjava/lang/Throwable;)V
    .registers 12

    int-to-long v1, p1

    int-to-long v3, p2

    move-object v0, p0

    move v5, p3

    move-object v6, p4

    .line 972
    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/oy$c;-><init>(JJILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(JJILjava/lang/Throwable;)V
    .registers 9

    .line 1952
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pos: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", limit: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", len: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lads_mobile_sdk/oy$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 3876
    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class ads_mobile_sdk.oy.d (ads_mobile_sdk.oy$d)
.class final Lads_mobile_sdk/oy$d;
.super Lads_mobile_sdk/oy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final c:[B

.field private final d:I

.field private e:I

.field private f:I

.field private final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1873
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy;-><init>(Lads_mobile_sdk/oy-IA;)V

    if-eqz p1, :cond_1f

    .line 1877
    iput-object p1, p0, Lads_mobile_sdk/oy$d;->g:Ljava/io/OutputStream;

    if-ltz p2, :cond_17

    const/16 p1, 0x14

    .line 1886
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p2, p1, [B

    iput-object p2, p0, Lads_mobile_sdk/oy$d;->c:[B

    .line 1887
    iput p1, p0, Lads_mobile_sdk/oy$d;->d:I

    return-void

    .line 1888
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1889
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2415
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    iget v2, p0, Lads_mobile_sdk/oy$d;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2416
    iput v3, p0, Lads_mobile_sdk/oy$d;->e:I

    return-void
.end method

.method private t(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2409
    iget v0, p0, Lads_mobile_sdk/oy$d;->d:I

    iget v1, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    .line 2410
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    :cond_a
    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2229
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    iget v1, p0, Lads_mobile_sdk/oy$d;->d:I

    if-ne v0, v1, :cond_9

    .line 2230
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    .line 2233
    :cond_9
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->b(B)V

    return-void
.end method

.method public a([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4599
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$d;->d([BII)V

    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4236
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    if-lez v0, :cond_7

    .line 4238
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    :cond_7
    return-void
.end method

.method public final b(B)V
    .registers 4

    .line 1907
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1908
    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1910
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1911
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public b(ILads_mobile_sdk/tw1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 10760
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->l(II)V

    const/4 v2, 0x2

    .line 10761
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$d;->m(II)V

    .line 10762
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$d;->c(ILads_mobile_sdk/tw1;)V

    const/4 p1, 0x4

    .line 10763
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$d;->l(II)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 12907
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->l(II)V

    .line 12908
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 6375
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 6376
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    int-to-byte p1, p2

    .line 6377
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->b(B)V

    return-void
.end method

.method public b(Lads_mobile_sdk/du;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8553
    invoke-virtual {p1}, Lads_mobile_sdk/du;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 8554
    invoke-virtual {p1, p0}, Lads_mobile_sdk/du;->a(Lads_mobile_sdk/cu;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 15183
    invoke-static {v0}, Lads_mobile_sdk/oy;->i(I)I

    move-result v1

    add-int v2, v1, v0

    .line 15187
    iget v3, p0, Lads_mobile_sdk/oy$d;->d:I

    if-le v2, v3, :cond_1e

    .line 15192
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 15193
    invoke-static {p1, v1, v2, v0}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    .line 15194
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 15195
    invoke-virtual {p0, v1, v2, p1}, Lads_mobile_sdk/oy$d;->a([BII)V

    return-void

    .line 15200
    :cond_1e
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_26

    .line 15202
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    .line 15207
    :cond_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/oy;->i(I)I

    move-result v0

    .line 15208
    iget v2, p0, Lads_mobile_sdk/oy$d;->e:I

    if-ne v0, v1, :cond_4c

    add-int v1, v2, v0

    .line 15212
    :try_start_34
    iput v1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 15213
    iget-object v3, p0, Lads_mobile_sdk/oy$d;->c:[B

    iget v4, p0, Lads_mobile_sdk/oy$d;->d:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    .line 15216
    iput v2, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int v1, p1, v2

    sub-int/2addr v1, v0

    .line 15218
    invoke-virtual {p0, v1}, Lads_mobile_sdk/oy$d;->s(I)V

    .line 15219
    iput p1, p0, Lads_mobile_sdk/oy$d;->e:I

    goto :goto_5d

    :catch_4a
    move-exception p1

    goto :goto_63

    .line 15221
    :cond_4c
    invoke-static {p1}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;)I

    move-result v1

    .line 15222
    invoke-virtual {p0, v1}, Lads_mobile_sdk/oy$d;->s(I)V

    .line 15223
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->c:[B

    iget v2, p0, Lads_mobile_sdk/oy$d;->e:I

    invoke-static {p1, v0, v2, v1}, Lads_mobile_sdk/hx3;->a(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 15225
    :goto_5d
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I
    :try_end_62
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34 .. :try_end_62} :catch_4a

    return-void

    .line 15227
    :goto_63
    new-instance v0, Lads_mobile_sdk/oy$c;

    invoke-direct {v0, p1}, Lads_mobile_sdk/oy$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(ILads_mobile_sdk/du;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4333
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->l(II)V

    .line 4334
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->b(Lads_mobile_sdk/du;)V

    return-void
.end method

.method public c(ILads_mobile_sdk/tw1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 6533
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->l(II)V

    .line 6534
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->c(Lads_mobile_sdk/tw1;)V

    return-void
.end method

.method public c(Lads_mobile_sdk/tw1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8757
    invoke-interface {p1}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 8758
    invoke-interface {p1, p0}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    return-void
.end method

.method public c([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2182
    invoke-virtual {p0, p3}, Lads_mobile_sdk/oy$d;->p(I)V

    .line 2183
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/oy$d;->d([BII)V

    return-void
.end method

.method public final d()I
    .registers 3

    .line 4579
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(ILads_mobile_sdk/du;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 4575
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->l(II)V

    const/4 v2, 0x2

    .line 4576
    invoke-virtual {p0, v2, p1}, Lads_mobile_sdk/oy$d;->m(II)V

    .line 4577
    invoke-virtual {p0, v1, p2}, Lads_mobile_sdk/oy$d;->c(ILads_mobile_sdk/du;)V

    const/4 p1, 0x4

    .line 4578
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/oy$d;->l(II)V

    return-void
.end method

.method public d([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2333
    iget v0, p0, Lads_mobile_sdk/oy$d;->d:I

    iget v1, p0, Lads_mobile_sdk/oy$d;->e:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_17

    .line 2335
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->c:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2336
    iget p1, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2337
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    .line 2342
    :cond_17
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 2345
    iget v1, p0, Lads_mobile_sdk/oy$d;->d:I

    iput v1, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2346
    iget v1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    .line 2347
    invoke-direct {p0}, Lads_mobile_sdk/oy$d;->e()V

    .line 2352
    iget v0, p0, Lads_mobile_sdk/oy$d;->d:I

    if-gt p3, v0, :cond_37

    .line 2354
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->c:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2355
    iput p3, p0, Lads_mobile_sdk/oy$d;->e:I

    goto :goto_3c

    .line 2358
    :cond_37
    iget-object v0, p0, Lads_mobile_sdk/oy$d;->g:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2360
    :goto_3c
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public f(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 2130
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x1

    .line 2131
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2132
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$d;->l(J)V

    return-void
.end method

.method public g(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2266
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 2267
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy$d;->l(J)V

    return-void
.end method

.method public h(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 2116
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x5

    .line 2117
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2118
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->q(I)V

    return-void
.end method

.method public i(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2102
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 2103
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2104
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->r(I)V

    return-void
.end method

.method public j(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 2123
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 2125
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/oy$d;->m(J)V

    return-void
.end method

.method public k(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 2260
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 2261
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/oy$d;->m(J)V

    return-void
.end method

.method public l(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 4346
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 4347
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->q(I)V

    return-void
.end method

.method public l(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6444
    invoke-static {p1, p2}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->p(I)V

    return-void
.end method

.method public final l(J)V
    .registers 10

    .line 2082
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2083
    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    add-int/lit8 v2, v0, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2084
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x3

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2085
    aput-byte v5, v1, v3

    add-int/lit8 v3, v0, 0x4

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2086
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2087
    aput-byte v5, v1, v3

    add-int/lit8 v3, v0, 0x6

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2088
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x7

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 2089
    aput-byte v5, v1, v3

    add-int/2addr v0, v4

    const/16 v3, 0x38

    shr-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 2090
    aput-byte p1, v1, v2

    .line 2091
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2092
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/2addr p1, v4

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public m(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 4298
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->p(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 4301
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->k(J)V

    return-void
.end method

.method public m(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 6410
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    const/4 v0, 0x0

    .line 6411
    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/oy$d;->n(II)V

    .line 6412
    invoke-virtual {p0, p2}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void
.end method

.method public final m(J)V
    .registers 15

    .line 1984
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1985
    iget v1, p0, Lads_mobile_sdk/oy$d;->f:I

    const-wide/16 v2, -0x80

    and-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1d

    .line 1987
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 1988
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x1

    .line 1989
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    .line 1992
    :cond_1d
    iget-object v4, p0, Lads_mobile_sdk/oy$d;->c:[B

    long-to-int v5, p1

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    const/4 v5, 0x7

    ushr-long v8, p1, v5

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_3d

    add-int/lit8 p1, v0, 0x1

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 1995
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x2

    .line 1996
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x2

    .line 1997
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_3d
    add-int/lit8 v10, v0, 0x1

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2000
    aput-byte v8, v4, v10

    const/16 v8, 0xe

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_5e

    add-int/lit8 p1, v0, 0x2

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2003
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x3

    .line 2004
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x3

    .line 2005
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_5e
    add-int/lit8 v10, v0, 0x2

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2008
    aput-byte v8, v4, v10

    const/16 v8, 0x15

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_7f

    add-int/lit8 p1, v0, 0x3

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2011
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x4

    .line 2012
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x4

    .line 2013
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_7f
    add-int/lit8 v10, v0, 0x3

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2016
    aput-byte v8, v4, v10

    const/16 v8, 0x1c

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_a0

    add-int/lit8 p1, v0, 0x4

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2019
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x5

    .line 2020
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x5

    .line 2021
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_a0
    add-int/lit8 v10, v0, 0x4

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2024
    aput-byte v8, v4, v10

    const/16 v8, 0x23

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_c1

    add-int/lit8 p1, v0, 0x5

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2027
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x6

    .line 2028
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x6

    .line 2029
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_c1
    add-int/lit8 v10, v0, 0x5

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2032
    aput-byte v8, v4, v10

    const/16 v8, 0x2a

    ushr-long v8, p1, v8

    and-long v10, v8, v2

    cmp-long v10, v10, v6

    if-nez v10, :cond_e0

    add-int/lit8 p1, v0, 0x6

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2035
    aput-byte p2, v4, p1

    add-int/2addr v0, v5

    .line 2036
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/2addr v1, v5

    .line 2037
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_e0
    add-int/lit8 v5, v0, 0x6

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2040
    aput-byte v8, v4, v5

    const/16 v5, 0x31

    ushr-long v8, p1, v5

    and-long v10, v8, v2

    cmp-long v5, v10, v6

    if-nez v5, :cond_101

    add-int/lit8 p1, v0, 0x7

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2043
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x8

    .line 2044
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x8

    .line 2045
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_101
    add-int/lit8 v5, v0, 0x7

    long-to-int v8, v8

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 2048
    aput-byte v8, v4, v5

    const/16 v5, 0x38

    ushr-long v8, p1, v5

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_121

    add-int/lit8 p1, v0, 0x8

    long-to-int p2, v8

    int-to-byte p2, p2

    .line 2051
    aput-byte p2, v4, p1

    add-int/lit8 v0, v0, 0x9

    .line 2052
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x9

    .line 2053
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_121
    add-int/lit8 v2, v0, 0x8

    long-to-int v3, v8

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 2056
    aput-byte v3, v4, v2

    add-int/lit8 v2, v0, 0x9

    const/16 v3, 0x3f

    ushr-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 2057
    aput-byte p1, v4, v2

    add-int/lit8 v0, v0, 0xa

    .line 2058
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0xa

    .line 2059
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public final n(II)V
    .registers 3

    .line 1919
    invoke-static {p1, p2}, Lads_mobile_sdk/u24;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void
.end method

.method public p(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 2248
    invoke-direct {p0, v0}, Lads_mobile_sdk/oy$d;->t(I)V

    .line 2249
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void
.end method

.method public final q(I)V
    .registers 7

    .line 2068
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2069
    iget-object v1, p0, Lads_mobile_sdk/oy$d;->c:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v0

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    .line 2070
    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x3

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    .line 2071
    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x4

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 2072
    aput-byte p1, v1, v2

    .line 2073
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 2074
    iget p1, p0, Lads_mobile_sdk/oy$d;->f:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method

.method public final r(I)V
    .registers 4

    if-ltz p1, :cond_6

    .line 1928
    invoke-virtual {p0, p1}, Lads_mobile_sdk/oy$d;->s(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 1931
    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/oy$d;->m(J)V

    return-void
.end method

.method public final s(I)V
    .registers 7

    .line 1940
    iget v0, p0, Lads_mobile_sdk/oy$d;->e:I

    .line 1941
    iget v1, p0, Lads_mobile_sdk/oy$d;->f:I

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_16

    .line 1943
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 1944
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x1

    .line 1945
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    .line 1948
    :cond_16
    iget-object v2, p0, Lads_mobile_sdk/oy$d;->c:[B

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    ushr-int/lit8 v3, p1, 0x7

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_31

    add-int/lit8 p1, v0, 0x1

    int-to-byte v3, v3

    .line 1951
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x2

    .line 1952
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x2

    .line 1953
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_31
    add-int/lit8 v4, v0, 0x1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1956
    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p1, 0xe

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_4c

    add-int/lit8 p1, v0, 0x2

    int-to-byte v3, v3

    .line 1959
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x3

    .line 1960
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x3

    .line 1961
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_4c
    add-int/lit8 v4, v0, 0x2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1964
    aput-byte v3, v2, v4

    ushr-int/lit8 v3, p1, 0x15

    and-int/lit8 v4, v3, -0x80

    if-nez v4, :cond_67

    add-int/lit8 p1, v0, 0x3

    int-to-byte v3, v3

    .line 1967
    aput-byte v3, v2, p1

    add-int/lit8 v0, v0, 0x4

    .line 1968
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x4

    .line 1969
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void

    :cond_67
    add-int/lit8 v4, v0, 0x3

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 1972
    aput-byte v3, v2, v4

    add-int/lit8 v3, v0, 0x4

    ushr-int/lit8 p1, p1, 0x1c

    int-to-byte p1, p1

    .line 1973
    aput-byte p1, v2, v3

    add-int/lit8 v0, v0, 0x5

    .line 1974
    iput v0, p0, Lads_mobile_sdk/oy$d;->e:I

    add-int/lit8 v1, v1, 0x5

    .line 1975
    iput v1, p0, Lads_mobile_sdk/oy$d;->f:I

    return-void
.end method
