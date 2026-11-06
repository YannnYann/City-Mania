###### Class com.facebook.ads.redexgen.X.MS (com.facebook.ads.redexgen.X.MS)
.class public final Lcom/facebook/ads/redexgen/X/MS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/MQ;,
        Lcom/facebook/ads/redexgen/X/MR;,
        Lcom/facebook/ads/redexgen/X/MP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A09:[B


# instance fields
.field public A00:Z

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Lu;

.field public final A03:Lcom/facebook/ads/redexgen/X/MM;

.field public final A04:Lcom/facebook/ads/redexgen/X/MQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/MQ<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/Object;

.field public final A06:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/MR<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/MS;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/MQ;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/Lu;",
            "Lcom/facebook/ads/redexgen/X/MQ<",
            "TT;>;)V"
        }
    .end annotation

    .line 54008
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/MQ;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MS;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 54009
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/MQ;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/ads/redexgen/X/MR<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/Lu;",
            "Lcom/facebook/ads/redexgen/X/MQ<",
            "TT;>;)V"
        }
    .end annotation

    .line 54010
    .local p1, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "listeners":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;>;"
    .local p5, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/MQ;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54011
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MS;->A02:Lcom/facebook/ads/redexgen/X/Lu;

    .line 54012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MS;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 54013
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/MS;->A04:Lcom/facebook/ads/redexgen/X/MQ;

    .line 54014
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A05:Ljava/lang/Object;

    .line 54015
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A06:Ljava/util/ArrayDeque;

    .line 54016
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A07:Ljava/util/ArrayDeque;

    .line 54017
    new-instance v0, Lcom/facebook/ads/redexgen/X/MO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MO;-><init>(Lcom/facebook/ads/redexgen/X/MS;)V

    invoke-interface {p3, p2, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A5y(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/facebook/ads/redexgen/X/TU;

    move-result-object v0

    .line 54018
    .local v0, "handler":Lcom/facebook/ads/redexgen/X/MM;
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A03:Lcom/facebook/ads/redexgen/X/MM;

    .line 54019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A01:Z

    .line 54020
    sget-object v0, Lcom/facebook/ads/redexgen/X/XQ;->A0E:Lcom/facebook/ads/redexgen/X/XQ;

    .line 54021
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A03(Lcom/facebook/ads/redexgen/X/XQ;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A00:Z

    .line 54022
    return-void
.end method

.method private final A00(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/MQ;)Lcom/facebook/ads/redexgen/X/MS;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/Lu;",
            "Lcom/facebook/ads/redexgen/X/MQ<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/MS<",
            "TT;>;"
        }
    .end annotation

    .line 54023
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p3, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/MQ;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MS;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MS;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/MS;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/MQ;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/MS;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x34

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .registers 3

    .line 54024
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A01:Z

    if-nez v0, :cond_5

    .line 54025
    return-void

    .line 54026
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A03:Lcom/facebook/ads/redexgen/X/MM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MM;->A93()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_1a

    const/4 v0, 0x1

    :goto_16
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 54027
    return-void

    .line 54028
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/MS;->A09:[B

    return-void

    :array_a
    .array-data 1
        -0x5bt
        -0x56t
        -0x4et
        -0x55t
        -0x59t
        -0x5ft
        0x2t
        0xdt
        -0x2t
        0xbt
        -0x6t
        0xdt
        0x2t
        0x8t
        0x7t
        -0x21t
        0x2t
        0x7t
        0x2t
        0xct
        0x1t
        -0x2t
        -0x3t
    .end array-data
.end method

.method public static synthetic A04(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/MP;)V
    .registers 3

    .line 54029
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54030
    .local p1, "holder":Lcom/facebook/ads/redexgen/X/MR;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    const/4 p2, 0x0

    const/4 p1, 0x6

    const/16 p0, 0x8

    invoke-static {p2, p1, p0}, Lcom/facebook/ads/redexgen/X/MS;->A01(III)Ljava/lang/String;

    move-result-object p1

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54031
    :cond_1b
    return-void
.end method

.method private A05(Landroid/os/Message;)Z
    .registers 5

    .line 54032
    .local p1, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54033
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/MR;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    const/4 v2, 0x6

    const/16 v1, 0x11

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MS;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54034
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/MS;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MS;->A05(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A07(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/MQ;)Lcom/facebook/ads/redexgen/X/MS;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/MQ<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/MS<",
            "TT;>;"
        }
    .end annotation

    .line 54035
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "iterationFinishedEvent":Lcom/facebook/ads/redexgen/X/MQ;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$IterationFinishedEvent<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A02:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/MS;->A00(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/MQ;)Lcom/facebook/ads/redexgen/X/MS;

    move-result-object v0

    return-object v0
.end method

.method public final A08()V
    .registers 4

    .line 54036
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MS;->A02()V

    .line 54037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A07:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54038
    return-void

    .line 54039
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A03:Lcom/facebook/ads/redexgen/X/MM;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/MM;->AAR(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 54040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MS;->A03:Lcom/facebook/ads/redexgen/X/MM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A03:Lcom/facebook/ads/redexgen/X/MM;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/MM;->ADX(I)Lcom/facebook/ads/redexgen/X/TV;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MM;->AKV(Lcom/facebook/ads/redexgen/X/ML;)Z

    .line 54041
    :cond_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 54042
    .local v0, "recursiveFlushInProgress":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MS;->A06:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A07:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 54043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A07:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 54044
    if-eqz v2, :cond_37

    .line 54045
    return-void

    .line 54046
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    .line 54047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A06:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_37

    .line 54049
    :cond_50
    return-void
.end method

.method public final A09(ILcom/facebook/ads/redexgen/X/MP;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/MP<",
            "TT;>;)V"
        }
    .end annotation

    .line 54050
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "event":Lcom/facebook/ads/redexgen/X/MP;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$Event<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MS;->A02()V

    .line 54051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A08:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 54052
    .local v0, "listenerSnapshot":Ljava/util/concurrent/CopyOnWriteArraySet;, "Ljava/util/concurrent/CopyOnWriteArraySet<Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MS;->A00:Z

    if-eqz v0, :cond_2a

    .line 54053
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54054
    .local v2, "holder":Lcom/facebook/ads/redexgen/X/MR;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$ListenerHolder<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MS;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54055
    :cond_29
    return-void

    .line 54056
    :cond_2a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MS;->A07:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/MN;

    invoke-direct {v0, v2, p1, p2}, Lcom/facebook/ads/redexgen/X/MN;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/MP;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 54057
    return-void
.end method

.method public final A0A(ILcom/facebook/ads/redexgen/X/MP;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/MP<",
            "TT;>;)V"
        }
    .end annotation

    .line 54058
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MS;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet<TT;>;"
    .local p2, "event":Lcom/facebook/ads/redexgen/X/MP;, "Lcom/facebook/ads/androidx/media3/common/util/ListenerSet$Event<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/MS;->A09(ILcom/facebook/ads/redexgen/X/MP;)V

    .line 54059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MS;->A08()V

    .line 54060
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.MN (com.facebook.ads.redexgen.X.MN)
.class public final synthetic Lcom/facebook/ads/redexgen/X/MN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/MP;

.field public final synthetic A02:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/MP;)V
    .registers 4

    .line 54004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MN;->A02:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/MN;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MN;->A01:Lcom/facebook/ads/redexgen/X/MP;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 54005
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MN;->A02:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/MN;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MN;->A01:Lcom/facebook/ads/redexgen/X/MP;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MS;->A04(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/MP;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.MO (com.facebook.ads.redexgen.X.MO)
.class public final synthetic Lcom/facebook/ads/redexgen/X/MO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MS;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/MS;)V
    .registers 2

    .line 54006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MO;->A00:Lcom/facebook/ads/redexgen/X/MS;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 54007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MO;->A00:Lcom/facebook/ads/redexgen/X/MS;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/MS;->A06(Lcom/facebook/ads/redexgen/X/MS;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
