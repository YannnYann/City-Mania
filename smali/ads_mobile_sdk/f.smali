###### Class ads_mobile_sdk.f (ads_mobile_sdk.f)
.class public abstract Lads_mobile_sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/tw1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lads_mobile_sdk/f<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lads_mobile_sdk/f$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lads_mobile_sdk/tw1;"
    }
.end annotation


# instance fields
.field protected transient a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lads_mobile_sdk/f;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serializing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to a "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lads_mobile_sdk/f$a;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lads_mobile_sdk/la3;)I
.end method

.method public b()Lads_mobile_sdk/xv3;
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/xv3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/xv3;-><init>(Lads_mobile_sdk/tw1;)V

    return-object v0
.end method

.method public c()[B
    .registers 4

    .line 65
    :try_start_0
    invoke-interface {p0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    if-nez v0, :cond_b

    .line 67
    sget-object v0, Lads_mobile_sdk/yh1;->a:[B

    return-object v0

    :catch_9
    move-exception v0

    goto :goto_18

    .line 69
    :cond_b
    new-array v0, v0, [B

    .line 70
    invoke-static {v0}, Lads_mobile_sdk/oy;->b([B)Lads_mobile_sdk/oy;

    move-result-object v1

    .line 71
    invoke-interface {p0, v1}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    .line 72
    invoke-virtual {v1}, Lads_mobile_sdk/oy;->a()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_9

    return-object v0

    .line 75
    :goto_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lads_mobile_sdk/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-interface {p0}, Lads_mobile_sdk/tw1;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lads_mobile_sdk/oy;->e(I)I

    move-result v0

    .line 82
    invoke-static {p1, v0}, Lads_mobile_sdk/oy;->a(Ljava/io/OutputStream;I)Lads_mobile_sdk/oy;

    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Lads_mobile_sdk/tw1;->a(Lads_mobile_sdk/oy;)V

    .line 84
    invoke-virtual {p1}, Lads_mobile_sdk/oy;->b()V

    return-void
.end method

###### Class ads_mobile_sdk.f.a (ads_mobile_sdk.f$a)
.class public abstract Lads_mobile_sdk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/tw1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lads_mobile_sdk/f<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lads_mobile_sdk/f$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lads_mobile_sdk/tw1$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/tw1;)Lads_mobile_sdk/xv3;
    .registers 2

    .line 875
    new-instance v0, Lads_mobile_sdk/xv3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/xv3;-><init>(Lads_mobile_sdk/tw1;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lads_mobile_sdk/yh1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    instance-of v0, p0, Lads_mobile_sdk/mu2;

    if-eqz v0, :cond_d

    .line 462
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 464
    :cond_d
    invoke-static {p0, p1}, Lads_mobile_sdk/f$a;->b(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private static a(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 870
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-lt v1, p1, :cond_29

    .line 872
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 874
    :cond_29
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 374
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2a

    .line 375
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 376
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 377
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_2a

    .line 378
    :cond_1b
    instance-of v1, p1, Lads_mobile_sdk/bw2;

    if-eqz v1, :cond_2a

    .line 379
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/bw2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lads_mobile_sdk/bw2;->e(I)V

    .line 382
    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 383
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_4e

    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_4e

    .line 384
    check-cast p0, Ljava/util/List;

    .line 385
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_65

    .line 388
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_48

    .line 390
    invoke-static {p1, v0}, Lads_mobile_sdk/f$a;->a(Ljava/util/List;I)V

    .line 392
    :cond_48
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 395
    :cond_4e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_61

    .line 397
    invoke-static {p1, v0}, Lads_mobile_sdk/f$a;->a(Ljava/util/List;I)V

    .line 399
    :cond_61
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_65
    return-void
.end method
