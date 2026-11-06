###### Class ads_mobile_sdk.vz0 (ads_mobile_sdk.vz0)
.class public abstract Lads_mobile_sdk/vz0;
.super Lads_mobile_sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/vz0$d;,
        Lads_mobile_sdk/vz0$a;,
        Lads_mobile_sdk/vz0$b;,
        Lads_mobile_sdk/vz0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageT:",
        "Lads_mobile_sdk/vz0<",
        "TMessageT;TBuilderT;>;BuilderT:",
        "Lads_mobile_sdk/vz0$a<",
        "TMessageT;TBuilderT;>;>",
        "Lads_mobile_sdk/f<",
        "TMessageT;TBuilderT;>;"
    }
.end annotation


# static fields
.field private static final MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final MUTABLE_FLAG_MASK:I = -0x80000000

.field private static final parserOrInstanceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lads_mobile_sdk/zv3;

.field private memoizedSerializedSize:I


# direct methods
.method public static bridge synthetic -$$Nest$sma(Lads_mobile_sdk/vz0;Z)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Z)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lads_mobile_sdk/vz0;->parserOrInstanceMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lads_mobile_sdk/f;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lads_mobile_sdk/vz0;->memoizedSerializedSize:I

    .line 79
    invoke-static {}, Lads_mobile_sdk/zv3;->b()Lads_mobile_sdk/zv3;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/vz0;->b:Lads_mobile_sdk/zv3;

    return-void
.end method

.method private static a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-eqz p0, :cond_16

    .line 1787
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 1789
    :cond_9
    invoke-virtual {p0}, Lads_mobile_sdk/f;->b()Lads_mobile_sdk/xv3;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Lads_mobile_sdk/xv3;->a()Lads_mobile_sdk/np1;

    move-result-object v0

    .line 1791
    invoke-virtual {v0, p0}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    :cond_16
    :goto_16
    return-object p0
.end method

.method public static a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/du;)Lads_mobile_sdk/vz0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;",
            "Lads_mobile_sdk/du;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 11855
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/du;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    .line 11856
    invoke-static {p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/du;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;",
            "Lads_mobile_sdk/du;",
            "Lads_mobile_sdk/er0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 13677
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/vz0;->b(Lads_mobile_sdk/vz0;Lads_mobile_sdk/du;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;",
            "Lads_mobile_sdk/my;",
            "Lads_mobile_sdk/er0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 20951
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->t()Lads_mobile_sdk/vz0;

    move-result-object p0

    .line 20955
    :try_start_4
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    .line 20956
    invoke-static {p1}, Lads_mobile_sdk/ny;->a(Lads_mobile_sdk/my;)Lads_mobile_sdk/ny;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lads_mobile_sdk/la3;->a(Ljava/lang/Object;Lads_mobile_sdk/ny;Lads_mobile_sdk/er0;)V

    .line 20957
    invoke-interface {v0, p0}, Lads_mobile_sdk/la3;->c(Ljava/lang/Object;)V
    :try_end_16
    .catch Lads_mobile_sdk/np1; {:try_start_4 .. :try_end_16} :catch_1b
    .catch Lads_mobile_sdk/xv3; {:try_start_4 .. :try_end_16} :catch_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_16} :catch_1d

    return-object p0

    :catch_17
    move-exception p1

    goto :goto_2e

    :catch_19
    move-exception p1

    goto :goto_47

    :catch_1b
    move-exception p1

    goto :goto_50

    :catch_1d
    move-exception p0

    .line 20971
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lads_mobile_sdk/np1;

    if-eqz p1, :cond_2d

    .line 20972
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/np1;

    throw p0

    .line 20974
    :cond_2d
    throw p0

    .line 20975
    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lads_mobile_sdk/np1;

    if-eqz p2, :cond_3d

    .line 20976
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/np1;

    throw p0

    .line 20978
    :cond_3d
    new-instance p2, Lads_mobile_sdk/np1;

    invoke-direct {p2, p1}, Lads_mobile_sdk/np1;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 20979
    :goto_47
    invoke-virtual {p1}, Lads_mobile_sdk/xv3;->a()Lads_mobile_sdk/np1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 20980
    :goto_50
    invoke-virtual {p1}, Lads_mobile_sdk/np1;->a()Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 20981
    new-instance p2, Lads_mobile_sdk/np1;

    invoke-direct {p2, p1}, Lads_mobile_sdk/np1;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 20983
    :cond_5c
    invoke-virtual {p1, p0}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a(Lads_mobile_sdk/vz0;Ljava/io/InputStream;)Lads_mobile_sdk/vz0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 15538
    invoke-static {p1}, Lads_mobile_sdk/my;->a(Ljava/io/InputStream;)Lads_mobile_sdk/my;

    move-result-object p1

    .line 15539
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object v0

    .line 15540
    invoke-static {p0, p1, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    .line 15541
    invoke-static {p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/vz0;[B)Lads_mobile_sdk/vz0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 17383
    array-length v0, p1

    .line 17385
    invoke-static {}, Lads_mobile_sdk/er0;->a()Lads_mobile_sdk/er0;

    move-result-object v1

    const/4 v2, 0x0

    .line 17386
    invoke-static {p0, p1, v2, v0, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[BIILads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    .line 17387
    invoke-static {p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lads_mobile_sdk/vz0;[BIILads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;[BII",
            "Lads_mobile_sdk/er0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    if-nez p3, :cond_3

    return-object p0

    .line 22733
    :cond_3
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->t()Lads_mobile_sdk/vz0;

    move-result-object v1

    .line 22735
    :try_start_7
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object p0

    invoke-virtual {p0, v1}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    add-int v4, p2, p3

    .line 22736
    new-instance v5, Lads_mobile_sdk/ao$a;

    invoke-direct {v5, p4}, Lads_mobile_sdk/ao$a;-><init>(Lads_mobile_sdk/er0;)V

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lads_mobile_sdk/la3;->a(Ljava/lang/Object;[BIILads_mobile_sdk/ao$a;)V

    .line 22738
    invoke-interface {v0, v1}, Lads_mobile_sdk/la3;->c(Ljava/lang/Object;)V
    :try_end_1e
    .catch Lads_mobile_sdk/np1; {:try_start_7 .. :try_end_1e} :catch_25
    .catch Lads_mobile_sdk/xv3; {:try_start_7 .. :try_end_1e} :catch_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_1e} :catch_28

    return-object v1

    :catch_1f
    move-exception v0

    move-object p0, v0

    goto :goto_31

    :catch_22
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    :catch_25
    move-exception v0

    move-object p0, v0

    goto :goto_53

    .line 22752
    :catch_28
    invoke-static {}, Lads_mobile_sdk/np1;->l()Lads_mobile_sdk/np1;

    move-result-object p0

    invoke-virtual {p0, v1}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 22753
    :goto_31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lads_mobile_sdk/np1;

    if-eqz p1, :cond_40

    .line 22754
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/np1;

    throw p0

    .line 22756
    :cond_40
    new-instance p1, Lads_mobile_sdk/np1;

    invoke-direct {p1, p0}, Lads_mobile_sdk/np1;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p1, v1}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 22757
    :goto_4a
    invoke-virtual {p0}, Lads_mobile_sdk/xv3;->a()Lads_mobile_sdk/np1;

    move-result-object p0

    invoke-virtual {p0, v1}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0

    .line 22758
    :goto_53
    invoke-virtual {p0}, Lads_mobile_sdk/np1;->a()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 22759
    new-instance p1, Lads_mobile_sdk/np1;

    invoke-direct {p1, p0}, Lads_mobile_sdk/np1;-><init>(Ljava/io/IOException;)V

    move-object p0, p1

    .line 22761
    :cond_5f
    invoke-virtual {p0, v1}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static a(Lads_mobile_sdk/vz0;[BLads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;[B",
            "Lads_mobile_sdk/er0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 19238
    array-length v0, p1

    const/4 v1, 0x0

    .line 19239
    invoke-static {p0, p1, v1, v0, p2}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;[BIILads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    .line 19240
    invoke-static {p0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lads_mobile_sdk/vz0;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23314
    sget-object v0, Lads_mobile_sdk/vz0;->parserOrInstanceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22

    .line 23319
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_14} :catch_19

    .line 23323
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_22

    :catch_19
    move-exception p0

    .line 23324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_22
    :goto_22
    if-nez v1, :cond_3a

    .line 23331
    invoke-static {p0}, Lads_mobile_sdk/hw3;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vz0;

    invoke-virtual {v1}, Lads_mobile_sdk/vz0;->l()Lads_mobile_sdk/vz0;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 23337
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 23338
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 23343
    :cond_3a
    :goto_3a
    instance-of p0, v1, Lads_mobile_sdk/vz0;

    if-eqz p0, :cond_41

    .line 23344
    check-cast v1, Lads_mobile_sdk/vz0;

    return-object v1

    .line 23346
    :cond_41
    check-cast v1, Lads_mobile_sdk/vz0$b;

    invoke-static {v1}, Lads_mobile_sdk/vz0$b;->-$$Nest$fgetb(Lads_mobile_sdk/vz0$b;)Lads_mobile_sdk/vz0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/yh1$c;)Lads_mobile_sdk/yh1$c;
    .registers 2

    .line 6734
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 6735
    invoke-interface {p0, v0}, Lads_mobile_sdk/yh1$c;->a(I)Lads_mobile_sdk/yh1$c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/yh1$e;)Lads_mobile_sdk/yh1$e;
    .registers 2

    .line 8369
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 8370
    invoke-interface {p0, v0}, Lads_mobile_sdk/yh1$e;->a(I)Lads_mobile_sdk/yh1$e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/yh1$f;)Lads_mobile_sdk/yh1$f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/yh1$f<",
            "TE;>;)",
            "Lads_mobile_sdk/yh1$f<",
            "TE;>;"
        }
    .end annotation

    .line 10040
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 10041
    invoke-interface {p0, v0}, Lads_mobile_sdk/yh1$f;->a(I)Lads_mobile_sdk/yh1$f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 23347
    new-instance v0, Lads_mobile_sdk/i13;

    invoke-direct {v0, p0, p1, p2}, Lads_mobile_sdk/i13;-><init>(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 3482
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 3487
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3488
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 3490
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 3491
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 3493
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 3494
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 3495
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 23215
    invoke-virtual {p1}, Lads_mobile_sdk/vz0;->r()V

    .line 23216
    sget-object v0, Lads_mobile_sdk/vz0;->parserOrInstanceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final a(Lads_mobile_sdk/vz0;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 5092
    sget-object v0, Lads_mobile_sdk/vz0$d;->a:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    return v2

    .line 5096
    :cond_b
    instance-of v3, v0, Ljava/lang/Byte;

    if-eqz v3, :cond_1c

    .line 5097
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v2, :cond_18

    return v2

    :cond_18
    if-nez v0, :cond_1c

    const/4 p0, 0x0

    return p0

    .line 5105
    :cond_1c
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    invoke-interface {v0, p0}, Lads_mobile_sdk/la3;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_34

    .line 5108
    sget-object p1, Lads_mobile_sdk/vz0$d;->b:Lads_mobile_sdk/vz0$d;

    if-eqz v0, :cond_30

    move-object v2, p0

    goto :goto_31

    :cond_30
    move-object v2, v1

    .line 5109
    :goto_31
    invoke-virtual {p0, p1, v2, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return v0
.end method

.method private b(Lads_mobile_sdk/la3;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/la3<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_f

    .line 376
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object p1

    invoke-interface {p1, p0}, Lads_mobile_sdk/la3;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 379
    :cond_f
    invoke-interface {p1, p0}, Lads_mobile_sdk/la3;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lads_mobile_sdk/aj2<",
            "TT;>;"
        }
    .end annotation

    .line 2539
    sget-object v0, Lads_mobile_sdk/vz0;->parserOrInstanceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 2541
    invoke-static {p0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;)Lads_mobile_sdk/vz0;

    .line 2542
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_f
    if-eqz v1, :cond_2e

    .line 2547
    instance-of v2, v1, Lads_mobile_sdk/aj2;

    if-eqz v2, :cond_18

    .line 2548
    check-cast v1, Lads_mobile_sdk/aj2;

    return-object v1

    .line 2550
    :cond_18
    new-instance v2, Lads_mobile_sdk/vz0$b;

    move-object v3, v1

    check-cast v3, Lads_mobile_sdk/vz0;

    invoke-direct {v2, v3}, Lads_mobile_sdk/vz0$b;-><init>(Lads_mobile_sdk/vz0;)V

    .line 2551
    invoke-interface {v0, p0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-object v2

    .line 2554
    :cond_27
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/aj2;

    return-object p0

    .line 2555
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Default instance cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lads_mobile_sdk/vz0;Lads_mobile_sdk/du;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lads_mobile_sdk/vz0<",
            "TT;*>;>(TT;",
            "Lads_mobile_sdk/du;",
            "Lads_mobile_sdk/er0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 2208
    invoke-virtual {p1}, Lads_mobile_sdk/du;->g()Lads_mobile_sdk/my;

    move-result-object p1

    .line 2209
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p0

    const/4 p2, 0x0

    .line 2211
    :try_start_9
    invoke-virtual {p1, p2}, Lads_mobile_sdk/my;->a(I)V
    :try_end_c
    .catch Lads_mobile_sdk/np1; {:try_start_9 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 2213
    invoke-virtual {p1, p0}, Lads_mobile_sdk/np1;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/np1;

    move-result-object p0

    throw p0
.end method

.method public static i()Lads_mobile_sdk/yh1$c;
    .registers 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/xh1;->e()Lads_mobile_sdk/xh1;

    move-result-object v0

    return-object v0
.end method

.method public static j()Lads_mobile_sdk/yh1$e;
    .registers 1

    .line 1
    invoke-static {}, Lads_mobile_sdk/au1;->e()Lads_mobile_sdk/au1;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lads_mobile_sdk/yh1$f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lads_mobile_sdk/yh1$f<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lads_mobile_sdk/bw2;->e()Lads_mobile_sdk/bw2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lads_mobile_sdk/la3;)I
    .registers 5

    .line 2133
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->p()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2135
    invoke-direct {p0, p1}, Lads_mobile_sdk/vz0;->b(Lads_mobile_sdk/la3;)I

    move-result p1

    if-ltz p1, :cond_d

    return p1

    .line 2137
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2143
    :cond_24
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->n()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_32

    .line 2144
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->n()I

    move-result p1

    return p1

    .line 2148
    :cond_32
    invoke-direct {p0, p1}, Lads_mobile_sdk/vz0;->b(Lads_mobile_sdk/la3;)I

    move-result p1

    .line 2149
    invoke-virtual {p0, p1}, Lads_mobile_sdk/vz0;->b(I)V

    return p1
.end method

.method public abstract a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(I)V
    .registers 2

    .line 23310
    iput p1, p0, Lads_mobile_sdk/f;->a:I

    return-void
.end method

.method public a(Lads_mobile_sdk/oy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23311
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    .line 23312
    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    .line 23313
    invoke-static {p1}, Lads_mobile_sdk/py;->a(Lads_mobile_sdk/oy;)Lads_mobile_sdk/py;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lads_mobile_sdk/la3;->a(Ljava/lang/Object;Lads_mobile_sdk/py;)V

    return-void
.end method

.method public b(I)V
    .registers 5

    if-ltz p1, :cond_f

    .line 2537
    iget v0, p0, Lads_mobile_sdk/vz0;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/vz0;->memoizedSerializedSize:I

    return-void

    .line 2538
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 385
    sget-object v0, Lads_mobile_sdk/vz0$d;->c:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lads_mobile_sdk/f;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 177
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 181
    :cond_13
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    check-cast p1, Lads_mobile_sdk/vz0;

    invoke-interface {v0, p0, p1}, Lads_mobile_sdk/la3;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .registers 2

    const v0, 0x7fffffff

    .line 311
    invoke-virtual {p0, v0}, Lads_mobile_sdk/vz0;->b(I)V

    return-void
.end method

.method public final g()I
    .registers 2

    .line 1
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    invoke-interface {v0, p0}, Lads_mobile_sdk/la3;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lads_mobile_sdk/tw1;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->l()Lads_mobile_sdk/vz0;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lads_mobile_sdk/aj2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lads_mobile_sdk/aj2<",
            "TMessageT;>;"
        }
    .end annotation

    .line 108
    sget-object v0, Lads_mobile_sdk/vz0$d;->g:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/aj2;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/la3;)I

    move-result v0

    return v0
.end method

.method public final h()Lads_mobile_sdk/vz0$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Message2T:",
            "Lads_mobile_sdk/vz0<",
            "TMessage2T;TBuilder2T;>;Builder2T:",
            "Lads_mobile_sdk/vz0$a<",
            "TMessage2T;TBuilder2T;>;>()TBuilder2T;"
        }
    .end annotation

    .line 233
    sget-object v0, Lads_mobile_sdk/vz0$d;->e:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz0$a;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 147
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->g()I

    move-result v0

    return v0

    .line 151
    :cond_b
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->o()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 152
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lads_mobile_sdk/vz0;->a(I)V

    .line 155
    :cond_18
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->m()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    .line 247
    invoke-static {p0, v0}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Z)Z

    move-result v0

    return v0
.end method

.method public final l()Lads_mobile_sdk/vz0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 114
    sget-object v0, Lads_mobile_sdk/vz0$d;->f:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public final m()I
    .registers 2

    .line 90
    iget v0, p0, Lads_mobile_sdk/f;->a:I

    return v0
.end method

.method public final n()I
    .registers 3

    .line 316
    iget v0, p0, Lads_mobile_sdk/vz0;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lads_mobile_sdk/tw1$a;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->s()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    return-object v0
.end method

.method public final o()Z
    .registers 2

    .line 102
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->m()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .registers 2

    .line 82
    iget v0, p0, Lads_mobile_sdk/vz0;->memoizedSerializedSize:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final q()V
    .registers 2

    .line 224
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    invoke-interface {v0, p0}, Lads_mobile_sdk/la3;->c(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lads_mobile_sdk/vz0;->r()V

    return-void
.end method

.method public final r()V
    .registers 3

    .line 86
    iget v0, p0, Lads_mobile_sdk/vz0;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lads_mobile_sdk/vz0;->memoizedSerializedSize:I

    return-void
.end method

.method public final s()Lads_mobile_sdk/vz0$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderT;"
        }
    .end annotation

    .line 120
    sget-object v0, Lads_mobile_sdk/vz0$d;->e:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz0$a;

    return-object v0
.end method

.method public final t()Lads_mobile_sdk/vz0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 125
    sget-object v0, Lads_mobile_sdk/vz0$d;->d:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 142
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lads_mobile_sdk/vw1;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lads_mobile_sdk/vz0$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderT;"
        }
    .end annotation

    .line 253
    sget-object v0, Lads_mobile_sdk/vz0$d;->e:Lads_mobile_sdk/vz0$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vz0$a;

    .line 254
    invoke-virtual {v0, p0}, Lads_mobile_sdk/vz0$a;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0$a;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.vz0.a (ads_mobile_sdk.vz0$a)
.class public abstract Lads_mobile_sdk/vz0$a;
.super Lads_mobile_sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/vz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageT:",
        "Lads_mobile_sdk/vz0<",
        "TMessageT;TBuilderT;>;BuilderT:",
        "Lads_mobile_sdk/vz0$a<",
        "TMessageT;TBuilderT;>;>",
        "Lads_mobile_sdk/f$a<",
        "TMessageT;TBuilderT;>;"
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/vz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageT;"
        }
    .end annotation
.end field

.field protected b:Lads_mobile_sdk/vz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vz0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageT;)V"
        }
    .end annotation

    .line 481
    invoke-direct {p0}, Lads_mobile_sdk/f$a;-><init>()V

    .line 482
    iput-object p1, p0, Lads_mobile_sdk/vz0$a;->a:Lads_mobile_sdk/vz0;

    .line 483
    invoke-virtual {p1}, Lads_mobile_sdk/vz0;->p()Z

    move-result p1

    if-nez p1, :cond_12

    .line 488
    invoke-direct {p0}, Lads_mobile_sdk/vz0$a;->g()Lads_mobile_sdk/vz0;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-void

    .line 489
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/vz0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageT:",
            "Lads_mobile_sdk/vz0<",
            "**>;>(TMessageT;TMessageT;)V"
        }
    .end annotation

    .line 1040
    invoke-static {}, Lads_mobile_sdk/aw2;->a()Lads_mobile_sdk/aw2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/aw2;->a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/la3;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lads_mobile_sdk/la3;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private g()Lads_mobile_sdk/vz0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->a:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->t()Lads_mobile_sdk/vz0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Lads_mobile_sdk/tw1;
    .registers 2

    .line 472
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->c()Lads_mobile_sdk/vz0;

    move-result-object v0

    return-object v0
.end method

.method public a(Lads_mobile_sdk/vz0;)Lads_mobile_sdk/vz0$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageT;)TBuilderT;"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 1031
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->f()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 1032
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1035
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->f()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/vz0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p0

    .line 1038
    :cond_24
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->d()V

    .line 1039
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-static {v0, p1}, Lads_mobile_sdk/vz0$a;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/vz0;)V

    return-object p0
.end method

.method public final b()Lads_mobile_sdk/vz0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->c()Lads_mobile_sdk/vz0;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 547
    :cond_b
    invoke-static {v0}, Lads_mobile_sdk/f$a;->a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/xv3;

    move-result-object v0

    throw v0
.end method

.method public c()Lads_mobile_sdk/vz0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->p()Z

    move-result v0

    if-nez v0, :cond_b

    .line 536
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-object v0

    .line 539
    :cond_b
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->q()V

    .line 540
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public clone()Lads_mobile_sdk/vz0$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderT;"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->f()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->s()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->c()Lads_mobile_sdk/vz0;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->clone()Lads_mobile_sdk/vz0$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .registers 2

    .line 500
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-virtual {v0}, Lads_mobile_sdk/vz0;->p()Z

    move-result v0

    if-nez v0, :cond_b

    .line 501
    invoke-virtual {p0}, Lads_mobile_sdk/vz0$a;->e()V

    :cond_b
    return-void
.end method

.method public e()V
    .registers 3

    .line 506
    invoke-direct {p0}, Lads_mobile_sdk/vz0$a;->g()Lads_mobile_sdk/vz0;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    invoke-static {v0, v1}, Lads_mobile_sdk/vz0$a;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/vz0;)V

    .line 508
    iput-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    return-void
.end method

.method public f()Lads_mobile_sdk/vz0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageT;"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->a:Lads_mobile_sdk/vz0;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 513
    iget-object v0, p0, Lads_mobile_sdk/vz0$a;->b:Lads_mobile_sdk/vz0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lads_mobile_sdk/vz0;->-$$Nest$sma(Lads_mobile_sdk/vz0;Z)Z

    move-result v0

    return v0
.end method

###### Class ads_mobile_sdk.vz0.b (ads_mobile_sdk.vz0$b)
.class public Lads_mobile_sdk/vz0$b;
.super Lads_mobile_sdk/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/vz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lads_mobile_sdk/vz0<",
        "TT;*>;>",
        "Lads_mobile_sdk/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lads_mobile_sdk/vz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetb(Lads_mobile_sdk/vz0$b;)Lads_mobile_sdk/vz0;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/vz0$b;->b:Lads_mobile_sdk/vz0;

    return-object p0
.end method

.method public constructor <init>(Lads_mobile_sdk/vz0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1684
    invoke-direct {p0}, Lads_mobile_sdk/h;-><init>()V

    .line 1685
    iput-object p1, p0, Lads_mobile_sdk/vz0$b;->b:Lads_mobile_sdk/vz0;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1679
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/vz0$b;->d(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/my;",
            "Lads_mobile_sdk/er0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lads_mobile_sdk/np1;
        }
    .end annotation

    .line 1691
    iget-object v0, p0, Lads_mobile_sdk/vz0$b;->b:Lads_mobile_sdk/vz0;

    invoke-static {v0, p1, p2}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/vz0;Lads_mobile_sdk/my;Lads_mobile_sdk/er0;)Lads_mobile_sdk/vz0;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.vz0.c (ads_mobile_sdk.vz0$c)
.class public abstract Lads_mobile_sdk/vz0$c;
.super Lads_mobile_sdk/br0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/vz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lads_mobile_sdk/tw1;",
        "ExtensionT:",
        "Ljava/lang/Object;",
        ">",
        "Lads_mobile_sdk/br0<",
        "TContainingType;TExtensionT;>;"
    }
.end annotation

###### Class ads_mobile_sdk.vz0.d (ads_mobile_sdk.vz0$d)
.class public final enum Lads_mobile_sdk/vz0$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/vz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/vz0$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lads_mobile_sdk/vz0$d;

.field public static final enum b:Lads_mobile_sdk/vz0$d;

.field public static final enum c:Lads_mobile_sdk/vz0$d;

.field public static final enum d:Lads_mobile_sdk/vz0$d;

.field public static final enum e:Lads_mobile_sdk/vz0$d;

.field public static final enum f:Lads_mobile_sdk/vz0$d;

.field public static final enum g:Lads_mobile_sdk/vz0$d;

.field private static final synthetic h:[Lads_mobile_sdk/vz0$d;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->a:Lads_mobile_sdk/vz0$d;

    .line 2
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->b:Lads_mobile_sdk/vz0$d;

    .line 5
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "BUILD_MESSAGE_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->c:Lads_mobile_sdk/vz0$d;

    .line 6
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "NEW_MUTABLE_INSTANCE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->d:Lads_mobile_sdk/vz0$d;

    .line 7
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "NEW_BUILDER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->e:Lads_mobile_sdk/vz0$d;

    .line 8
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "GET_DEFAULT_INSTANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->f:Lads_mobile_sdk/vz0$d;

    .line 9
    new-instance v0, Lads_mobile_sdk/vz0$d;

    const-string v1, "GET_PARSER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/vz0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lads_mobile_sdk/vz0$d;->g:Lads_mobile_sdk/vz0$d;

    .line 10
    invoke-static {}, Lads_mobile_sdk/vz0$d;->d()[Lads_mobile_sdk/vz0$d;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/vz0$d;->h:[Lads_mobile_sdk/vz0$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/vz0$d;
    .registers 7

    .line 263
    sget-object v0, Lads_mobile_sdk/vz0$d;->a:Lads_mobile_sdk/vz0$d;

    sget-object v1, Lads_mobile_sdk/vz0$d;->b:Lads_mobile_sdk/vz0$d;

    sget-object v2, Lads_mobile_sdk/vz0$d;->c:Lads_mobile_sdk/vz0$d;

    sget-object v3, Lads_mobile_sdk/vz0$d;->d:Lads_mobile_sdk/vz0$d;

    sget-object v4, Lads_mobile_sdk/vz0$d;->e:Lads_mobile_sdk/vz0$d;

    sget-object v5, Lads_mobile_sdk/vz0$d;->f:Lads_mobile_sdk/vz0$d;

    sget-object v6, Lads_mobile_sdk/vz0$d;->g:Lads_mobile_sdk/vz0$d;

    filled-new-array/range {v0 .. v6}, [Lads_mobile_sdk/vz0$d;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/vz0$d;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/vz0$d;->h:[Lads_mobile_sdk/vz0$d;

    invoke-virtual {v0}, [Lads_mobile_sdk/vz0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/vz0$d;

    return-object v0
.end method
