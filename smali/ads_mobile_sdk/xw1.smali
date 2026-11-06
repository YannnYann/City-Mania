###### Class ads_mobile_sdk.xw1 (ads_mobile_sdk.xw1)
.class final Lads_mobile_sdk/xw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/la3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lads_mobile_sdk/la3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/tw1;

.field private final b:Lads_mobile_sdk/yv3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yv3<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lads_mobile_sdk/fr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/fr0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lads_mobile_sdk/yv3;Lads_mobile_sdk/fr0;Lads_mobile_sdk/tw1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/yv3<",
            "**>;",
            "Lads_mobile_sdk/fr0<",
            "*>;",
            "Lads_mobile_sdk/tw1;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    .line 34
    invoke-virtual {p2, p3}, Lads_mobile_sdk/fr0;->a(Lads_mobile_sdk/tw1;)Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/xw1;->c:Z

    .line 35
    iput-object p2, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    .line 36
    iput-object p3, p0, Lads_mobile_sdk/xw1;->a:Lads_mobile_sdk/tw1;

    return-void
.end method

.method private a(Lads_mobile_sdk/yv3;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/yv3<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 407
    invoke-virtual {p1, p2}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 408
    invoke-virtual {p1, p2}, Lads_mobile_sdk/yv3;->d(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static a(Lads_mobile_sdk/yv3;Lads_mobile_sdk/fr0;Lads_mobile_sdk/tw1;)Lads_mobile_sdk/xw1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/yv3<",
            "**>;",
            "Lads_mobile_sdk/fr0<",
            "*>;",
            "Lads_mobile_sdk/tw1;",
            ")",
            "Lads_mobile_sdk/xw1<",
            "TT;>;"
        }
    .end annotation

    .line 2217
    new-instance v0, Lads_mobile_sdk/xw1;

    invoke-direct {v0, p0, p1, p2}, Lads_mobile_sdk/xw1;-><init>(Lads_mobile_sdk/yv3;Lads_mobile_sdk/fr0;Lads_mobile_sdk/tw1;)V

    return-object v0
.end method

.method private a(Lads_mobile_sdk/yv3;Lads_mobile_sdk/fr0;Ljava/lang/Object;Lads_mobile_sdk/ny;Lads_mobile_sdk/er0;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lads_mobile_sdk/qr0$b<",
            "TET;>;>(",
            "Lads_mobile_sdk/yv3<",
            "TUT;TUB;>;",
            "Lads_mobile_sdk/fr0<",
            "TET;>;TT;",
            "Lads_mobile_sdk/ny;",
            "Lads_mobile_sdk/er0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1505
    invoke-virtual {p1, p3}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1506
    invoke-virtual {p2, p3}, Lads_mobile_sdk/fr0;->b(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object v5

    .line 1509
    :goto_8
    :try_start_8
    invoke-virtual {p4}, Lads_mobile_sdk/ny;->a()I

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_2c

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_15

    .line 1526
    invoke-virtual {p1, p3, v7}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_15
    move-object v1, p0

    move-object v6, p1

    move-object v4, p2

    move-object v2, p4

    move-object v3, p5

    .line 1527
    :try_start_1a
    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/xw1;->a(Lads_mobile_sdk/ny;Lads_mobile_sdk/er0;Lads_mobile_sdk/fr0;Lads_mobile_sdk/qr0;Lads_mobile_sdk/yv3;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_29

    if-eqz p1, :cond_25

    move-object p4, v2

    move-object p5, v3

    move-object p2, v4

    move-object p1, v6

    goto :goto_8

    .line 1540
    :cond_25
    invoke-virtual {v6, p3, v7}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_29
    move-exception v0

    :goto_2a
    move-object p1, v0

    goto :goto_2f

    :catchall_2c
    move-exception v0

    move-object v6, p1

    goto :goto_2a

    .line 1541
    :goto_2f
    invoke-virtual {v6, p3, v7}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1542
    throw p1
.end method

.method private a(Lads_mobile_sdk/yv3;Ljava/lang/Object;Lads_mobile_sdk/py;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/yv3<",
            "TUT;TUB;>;TT;",
            "Lads_mobile_sdk/py;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    invoke-virtual {p1, p2}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;Lads_mobile_sdk/py;)V

    return-void
.end method

.method private a(Lads_mobile_sdk/ny;Lads_mobile_sdk/er0;Lads_mobile_sdk/fr0;Lads_mobile_sdk/qr0;Lads_mobile_sdk/yv3;Ljava/lang/Object;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lads_mobile_sdk/qr0$b<",
            "TET;>;>(",
            "Lads_mobile_sdk/ny;",
            "Lads_mobile_sdk/er0;",
            "Lads_mobile_sdk/fr0<",
            "TET;>;",
            "Lads_mobile_sdk/qr0<",
            "TET;>;",
            "Lads_mobile_sdk/yv3<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1886
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->c()I

    move-result v0

    .line 1887
    sget v1, Lads_mobile_sdk/u24;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2b

    .line 1888
    invoke-static {v0}, Lads_mobile_sdk/u24;->b(I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_26

    .line 1889
    iget-object v1, p0, Lads_mobile_sdk/xw1;->a:Lads_mobile_sdk/tw1;

    .line 1891
    invoke-static {v0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    .line 1892
    invoke-virtual {p3, p2, v1, v0}, Lads_mobile_sdk/fr0;->a(Lads_mobile_sdk/er0;Lads_mobile_sdk/tw1;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1895
    invoke-virtual {p3, p1, v0, p2, p4}, Lads_mobile_sdk/fr0;->a(Lads_mobile_sdk/ny;Ljava/lang/Object;Lads_mobile_sdk/er0;Lads_mobile_sdk/qr0;)V

    return v3

    .line 1899
    :cond_21
    invoke-virtual {p5, p6, p1, v2}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;Lads_mobile_sdk/ny;I)Z

    move-result p1

    return p1

    .line 1902
    :cond_26
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->u()Z

    move-result p1

    return p1

    :cond_2b
    const/4 v0, 0x0

    move-object v1, v0

    .line 1930
    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_37

    goto :goto_64

    .line 1935
    :cond_37
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->c()I

    move-result v4

    .line 1936
    sget v5, Lads_mobile_sdk/u24;->c:I

    if-ne v4, v5, :cond_4a

    .line 1937
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->s()I

    move-result v2

    .line 1938
    iget-object v0, p0, Lads_mobile_sdk/xw1;->a:Lads_mobile_sdk/tw1;

    .line 1939
    invoke-virtual {p3, p2, v0, v2}, Lads_mobile_sdk/fr0;->a(Lads_mobile_sdk/er0;Lads_mobile_sdk/tw1;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2d

    .line 1941
    :cond_4a
    sget v5, Lads_mobile_sdk/u24;->d:I

    if-ne v4, v5, :cond_59

    if-eqz v0, :cond_54

    .line 1943
    invoke-virtual {p3, p1, v0, p2, p4}, Lads_mobile_sdk/fr0;->a(Lads_mobile_sdk/ny;Ljava/lang/Object;Lads_mobile_sdk/er0;Lads_mobile_sdk/qr0;)V

    goto :goto_2d

    .line 1948
    :cond_54
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->e()Lads_mobile_sdk/du;

    move-result-object v1

    goto :goto_2d

    .line 1950
    :cond_59
    sget v5, Lads_mobile_sdk/u24;->b:I

    if-ne v4, v5, :cond_5e

    goto :goto_64

    .line 1953
    :cond_5e
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->u()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1959
    :goto_64
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->c()I

    move-result v4

    sget v5, Lads_mobile_sdk/u24;->b:I

    if-ne v4, v5, :cond_8c

    if-eqz v1, :cond_8b

    if-eqz v0, :cond_88

    .line 1968
    invoke-virtual {p1}, Lads_mobile_sdk/ny;->b()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_83

    .line 1972
    invoke-virtual {v1}, Lads_mobile_sdk/du;->g()Lads_mobile_sdk/my;

    move-result-object p5

    .line 1973
    invoke-virtual {p5, p1}, Lads_mobile_sdk/my;->f(I)I

    .line 1975
    invoke-virtual {p3, p5, v0, p2, p4}, Lads_mobile_sdk/fr0;->a(Lads_mobile_sdk/my;Ljava/lang/Object;Lads_mobile_sdk/er0;Lads_mobile_sdk/qr0;)V

    goto :goto_8b

    .line 1976
    :cond_83
    invoke-static {}, Lads_mobile_sdk/np1;->i()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1

    .line 1984
    :cond_88
    invoke-virtual {p5, p6, v2, v1}, Lads_mobile_sdk/yv3;->a(Ljava/lang/Object;ILads_mobile_sdk/du;)V

    :cond_8b
    :goto_8b
    return v3

    .line 1985
    :cond_8c
    invoke-static {}, Lads_mobile_sdk/np1;->b()Lads_mobile_sdk/np1;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lads_mobile_sdk/xw1;->a:Lads_mobile_sdk/tw1;

    instance-of v1, v0, Lads_mobile_sdk/vz0;

    if-eqz v1, :cond_d

    .line 1594
    check-cast v0, Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->t()Lads_mobile_sdk/vz0;

    move-result-object v0

    return-object v0

    .line 1596
    :cond_d
    invoke-interface {v0}, Lads_mobile_sdk/tw1;->newBuilderForType()Lads_mobile_sdk/tw1$a;

    move-result-object v0

    invoke-interface {v0}, Lads_mobile_sdk/tw1$a;->a()Lads_mobile_sdk/tw1;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lads_mobile_sdk/ny;Lads_mobile_sdk/er0;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lads_mobile_sdk/ny;",
            "Lads_mobile_sdk/er0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    iget-object v1, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    iget-object v2, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/xw1;->a(Lads_mobile_sdk/yv3;Lads_mobile_sdk/fr0;Ljava/lang/Object;Lads_mobile_sdk/ny;Lads_mobile_sdk/er0;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lads_mobile_sdk/py;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lads_mobile_sdk/py;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2079
    iget-object v0, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fr0;->a(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object v0

    .line 2080
    invoke-virtual {v0}, Lads_mobile_sdk/qr0;->e()Ljava/util/Iterator;

    move-result-object v0

    .line 2081
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    .line 2094
    iget-object v0, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    invoke-direct {p0, v0, p1, p2}, Lads_mobile_sdk/xw1;->a(Lads_mobile_sdk/yv3;Ljava/lang/Object;Lads_mobile_sdk/py;)V

    return-void

    .line 2095
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 2096
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2097
    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ma3;->a(Lads_mobile_sdk/yv3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    iget-boolean v0, p0, Lads_mobile_sdk/xw1;->c:Z

    if-eqz v0, :cond_e

    .line 1120
    iget-object v0, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-static {v0, p1, p2}, Lads_mobile_sdk/ma3;->a(Lads_mobile_sdk/fr0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public a(Ljava/lang/Object;[BIILads_mobile_sdk/ao$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lads_mobile_sdk/ao$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1249
    move-object p2, p1

    check-cast p2, Lads_mobile_sdk/vz0;

    iget-object p3, p2, Lads_mobile_sdk/vz0;->b:Lads_mobile_sdk/zv3;

    .line 1250
    invoke-static {}, Lads_mobile_sdk/zv3;->b()Lads_mobile_sdk/zv3;

    move-result-object p4

    if-ne p3, p4, :cond_11

    .line 1251
    invoke-static {}, Lads_mobile_sdk/zv3;->f()Lads_mobile_sdk/zv3;

    move-result-object p3

    .line 1252
    iput-object p3, p2, Lads_mobile_sdk/vz0;->b:Lads_mobile_sdk/zv3;

    .line 1254
    :cond_11
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1255
    throw p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fr0;->a(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object p1

    .line 797
    invoke-virtual {p1}, Lads_mobile_sdk/qr0;->d()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    invoke-direct {p0, v0, p1}, Lads_mobile_sdk/xw1;->a(Lads_mobile_sdk/yv3;Ljava/lang/Object;)I

    move-result v0

    .line 466
    iget-boolean v1, p0, Lads_mobile_sdk/xw1;->c:Z

    if-eqz v1, :cond_15

    .line 467
    iget-object v1, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/fr0;->a(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/qr0;->a()I

    move-result p1

    add-int/2addr v0, p1

    :cond_15
    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    invoke-virtual {v1, p2}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_14
    iget-boolean v0, p0, Lads_mobile_sdk/xw1;->c:Z

    if-eqz v0, :cond_29

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fr0;->a(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-virtual {v0, p2}, Lads_mobile_sdk/fr0;->a(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lads_mobile_sdk/qr0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/yv3;->e(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fr0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lads_mobile_sdk/xw1;->b:Lads_mobile_sdk/yv3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/yv3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 76
    iget-boolean v1, p0, Lads_mobile_sdk/xw1;->c:Z

    if-eqz v1, :cond_1b

    .line 77
    iget-object v1, p0, Lads_mobile_sdk/xw1;->d:Lads_mobile_sdk/fr0;

    invoke-virtual {v1, p1}, Lads_mobile_sdk/fr0;->a(Ljava/lang/Object;)Lads_mobile_sdk/qr0;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 78
    invoke-virtual {p1}, Lads_mobile_sdk/qr0;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method
