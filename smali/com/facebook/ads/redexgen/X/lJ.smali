###### Class com.facebook.ads.redexgen.X.C2789lJ (com.facebook.ads.redexgen.X.lJ)
.class public final Lcom/facebook/ads/redexgen/X/lJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/lI;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/lang/String;

.field public static final A07:Ljava/util/concurrent/locks/Lock;

.field public static final A08:Ljava/util/concurrent/locks/Lock;

.field public static final A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field public A00:Landroid/database/sqlite/SQLiteOpenHelper;

.field public final A01:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A02:Lcom/facebook/ads/redexgen/X/Hg;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hf;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 2723
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qJOvsPrm5BQkhL6wLJahauzjA45r7dQz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hfx8x2hkXgxq19RSFkkqiaOe1zMy03Qo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bV5o7GaQth4ZZOPd4LFtWwXjKNVB8lua"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1EyYFmGpmEhL9EWyl0I1ptwRPtnJxpez"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "plO80lk7YnGQvaXazMopbLIwOg8MB0TR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EzLFA06L6a2SQhX4934tm7serJXXg4XA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/lJ;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/lJ;->A07()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6b

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hf;->A02:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3a

    const/4 v1, 0x2

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x8e

    const/4 v1, 0x6

    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v3, 0x3c

    const/4 v1, 0x1

    const/16 v0, 0x6a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hf;->A01:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v3, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A04:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A05:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A0A:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A08:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A07:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A06:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A03:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A02:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xb

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x11

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1e

    const/4 v1, 0x4

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A09:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hf;->A02:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x22

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A08:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A06:Ljava/lang/String;

    .line 2724
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2725
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    .line 2726
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A09:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 3

    .line 101017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101018
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 101019
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Hf;-><init>(Lcom/facebook/ads/redexgen/X/lJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:Lcom/facebook/ads/redexgen/X/Hf;

    .line 101020
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Hg;-><init>(Lcom/facebook/ads/redexgen/X/lJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    .line 101021
    return-void
.end method

.method private declared-synchronized A00()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    .line 101022
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_e

    .line 101023
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/lK;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/lK;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/lJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 101024
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lJ;
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 101025
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A01()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    monitor-enter p0

    .line 101026
    const/4 v4, 0x0

    .line 101027
    .local v0, "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    .local v1, "attempts":I
    :goto_3
    const/16 v0, 0xa

    if-ge v2, v0, :cond_17

    .line 101028
    :try_start_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lJ;->A00()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_15
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_c} :catch_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_32

    .line 101029
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lJ;
    :catch_c
    move-exception v4

    .line 101030
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v0, 0x64

    :try_start_f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_12
    .catchall {:try_start_f .. :try_end_12} :catchall_32

    .line 101031
    :catch_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 101032
    :goto_15
    monitor-exit p0

    return-object v0

    .line 101033
    .end local v1    # "attempts":I
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 101034
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v3

    const/16 v2, 0x80

    const/16 v1, 0x8

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/lf;->A0v:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 101035
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 101036
    throw v4
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_32

    .line 101037
    .end local v0    # "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hh;
    .registers 1

    .line 101038
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hg;
    .registers 1

    .line 101039
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hf;
    .registers 1

    .line 101040
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:Lcom/facebook/ads/redexgen/X/Hf;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/lJ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/lJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object v2, Lcom/facebook/ads/redexgen/X/lJ;->A05:[Ljava/lang/String;

    const-string v1, "6YOEgEHO6bjbd5au9bSAefu6W5tI3Dak"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "kgOgsYcmlOEy6T8oxoaixHiO6WRSp1D2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_37

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x73

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 101041
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static A07()V
    .registers 1

    const/16 v0, 0x94

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A04:[B

    return-void

    :array_a
    .array-data 1
        -0x1ft
        -0x2t
        -0x1ft
        -0x51t
        -0x33t
        -0x51t
        -0x32t
        -0xbt
        0x16t
        0x28t
        0x18t
        -0x43t
        -0x1dt
        -0x11t
        -0x14t
        -0x16t
        -0x43t
        -0x2ct
        -0x2t
        0x3t
        -0x3t
        0x2t
        -0x2ct
        -0x6ct
        -0x40t
        -0x43t
        -0x3ft
        -0x43t
        -0x38t
        -0x6ct
        -0x6at
        -0x3bt
        -0x3ct
        -0x6at
        -0x23t
        0xct
        0xft
        0x1t
        0x2t
        0xft
        -0x23t
        -0x1t
        0x16t
        -0x23t
        -0x2at
        0x9t
        -0x5t
        0xat
        -0x2at
        -0x62t
        -0x2bt
        -0x3at
        -0x3dt
        -0x30t
        -0x3dt
        -0x62t
        -0x31t
        -0x2bt
        -0x2et
        -0x3at
        0xbt
        0x3t
        -0x36t
        -0x34t
        0x16t
        0x34t
        0x41t
        0x41t
        0x42t
        0x47t
        -0xdt
        0x36t
        0x34t
        0x3ft
        0x3ft
        -0xdt
        0x3at
        0x38t
        0x47t
        0x17t
        0x34t
        0x47t
        0x34t
        0x35t
        0x34t
        0x46t
        0x38t
        -0xdt
        0x39t
        0x45t
        0x42t
        0x40t
        -0xdt
        0x47t
        0x3bt
        0x38t
        -0xdt
        0x28t
        0x1ct
        -0xdt
        0x47t
        0x3bt
        0x45t
        0x38t
        0x34t
        0x37t
        -0xct
        0x21t
        0x13t
        0x1at
        0x13t
        0x11t
        0x22t
        -0x12t
        0x42t
        0x3dt
        0x39t
        0x33t
        0x3ct
        0x41t
        -0x4t
        0x27t
        0x22t
        0x16t
        0x13t
        0x26t
        0x17t
        -0xet
        0x2bt
        0x28t
        0x3bt
        0x28t
        0x29t
        0x28t
        0x3at
        0x2ct
        0x47t
        0x58t
        0x47t
        0x50t
        0x56t
        0x55t
        -0x9t
        -0xet
        -0x12t
        -0x18t
        -0xft
        -0xat
    .end array-data
.end method


# virtual methods
.method public final A08(I)I
    .registers 8

    .line 101042
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101043
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lJ;->A0E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A02:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x3

    const/4 v2, 0x4

    const/16 v0, 0x1c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, p1, -0x1

    .line 101044
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 101045
    invoke-virtual {v5, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_43

    .line 101046
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101047
    return v1

    .line 101048
    :catchall_43
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101049
    throw v1
.end method

.method public final A09()Landroid/database/Cursor;
    .registers 3

    .line 101050
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101051
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0D()Landroid/database/Cursor;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 101052
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101053
    return-object v1

    .line 101054
    :catchall_11
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101055
    throw v1
.end method

.method public final A0A()Landroid/database/Cursor;
    .registers 3

    .line 101056
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101057
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0E()Landroid/database/Cursor;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 101058
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101059
    return-object v1

    .line 101060
    :catchall_11
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101061
    throw v1
.end method

.method public final A0B()Landroid/database/Cursor;
    .registers 3

    .line 101062
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101063
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:Lcom/facebook/ads/redexgen/X/Hf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hf;->A0D()Landroid/database/Cursor;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 101064
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101065
    return-object v1

    .line 101066
    :catchall_11
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101067
    throw v1
.end method

.method public final A0C(I)Landroid/database/Cursor;
    .registers 7

    .line 101068
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101069
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lJ;->A0E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/4 v1, 0x7

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101070
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_37

    .line 101071
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101072
    return-object v1

    .line 101073
    :catchall_37
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101074
    throw v1
.end method

.method public final A0D(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    .line 101075
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101076
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->A0F(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 101077
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101078
    return-object v1

    .line 101079
    :catchall_11
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101080
    throw v1
.end method

.method public final A0E()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .line 101081
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v1, v0, :cond_f

    .line 101082
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/lJ;->A01()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 101083
    :cond_f
    const/16 v2, 0x40

    const/16 v1, 0x2b

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/lM;Lcom/facebook/ads/redexgen/X/mR;)Landroid/os/AsyncTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/lM<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/mR<",
            "TT;>;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 101084
    .local p1, "query":Lcom/facebook/ads/redexgen/X/lM;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    .local p2, "callback":Lcom/facebook/ads/redexgen/X/mR;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<TT;>;"
    sget-object v2, Lcom/facebook/ads/redexgen/X/qh;->A07:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v1, Lcom/facebook/ads/redexgen/X/lI;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/lI;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/lM;Lcom/facebook/ads/redexgen/X/mR;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/qe;->A00(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/mR;)Landroid/os/AsyncTask;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/mR<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 101085
    .local p9, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "callback":Lcom/facebook/ads/redexgen/X/mR;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/7C;

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v3, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Lcom/facebook/ads/redexgen/X/lJ;Ljava/lang/String;Ljava/lang/String;IDDLjava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A0F(Lcom/facebook/ads/redexgen/X/lM;Lcom/facebook/ads/redexgen/X/mR;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .registers 3

    .line 101086
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101087
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lN;->A0B()Z

    .line 101088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:Lcom/facebook/ads/redexgen/X/Hf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lN;->A0B()Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 101089
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101090
    return-void

    .line 101091
    :catchall_15
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101092
    throw v1
.end method

.method public final A0I()V
    .registers 3

    .line 101093
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101094
    :try_start_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:Lcom/facebook/ads/redexgen/X/Hf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A0F(Lcom/facebook/ads/redexgen/X/Hh;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 101095
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101096
    return-void

    .line 101097
    :catchall_12
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101098
    throw v1
.end method

.method public final declared-synchronized A0J()V
    .registers 3

    monitor-enter p0

    .line 101099
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lJ;->A0M()[Lcom/facebook/ads/redexgen/X/lN;

    move-result-object v0

    array-length v1, v0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_c

    .end local p1
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 101100
    .end local p2
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_18

    .line 101101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 101102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 101103
    :cond_18
    monitor-exit p0

    return-void

    .line 101104
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0K(Ljava/lang/String;)Z
    .registers 7

    .line 101105
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101106
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hg;->A0H(Ljava/lang/String;)Z

    move-result v4
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_37

    .line 101107
    sget-object v3, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    sget-object v2, Lcom/facebook/ads/redexgen/X/lJ;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    sget-object v2, Lcom/facebook/ads/redexgen/X/lJ;->A05:[Ljava/lang/String;

    const-string v1, "8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "N"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101108
    return v4

    .line 101109
    :catchall_37
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101110
    throw v1
.end method

.method public final A0L(Ljava/lang/String;)Z
    .registers 7

    .line 101111
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101112
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101113
    .local v0, "queryBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x79

    const/4 v1, 0x7

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 101114
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 101115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2c

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 101116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A02:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    .line 101117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3d

    const/4 v1, 0x1

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 101118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A02:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    .line 101119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x38

    const/4 v1, 0x2

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 101120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x31

    const/4 v1, 0x7

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 101121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hg;->A04:Lcom/facebook/ads/redexgen/X/lH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/lH;->A01:Ljava/lang/String;

    .line 101122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 101123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101124
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lJ;->A0E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101125
    const/4 v1, 0x1

    .line 101126
    .local v0, "updateResult":Z
    goto :goto_8e
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_8d} :catch_8d

    .line 101127
    .end local v0    # "updateResult":Z
    .local v0, "ignored":Landroid/database/sqlite/SQLiteException;
    :catch_8d
    const/4 v1, 0x0

    .line 101128
    .local v0, "updateResult":Z
    :goto_8e
    sget-object v0, Lcom/facebook/ads/redexgen/X/lJ;->A08:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 101129
    return v1
.end method

.method public final A0M()[Lcom/facebook/ads/redexgen/X/lN;
    .registers 4

    .line 101130
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/lN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A03:Lcom/facebook/ads/redexgen/X/Hf;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lJ;->A02:Lcom/facebook/ads/redexgen/X/Hg;

    aput-object v0, v2, v1

    return-object v2
.end method

###### Class com.facebook.ads.redexgen.X.C7C (com.facebook.ads.redexgen.X.7C)
.class public final Lcom/facebook/ads/redexgen/X/7C;
.super Lcom/facebook/ads/redexgen/X/He;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/lJ;->A0G(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/mR;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/He<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:D

.field public final synthetic A01:D

.field public final synthetic A02:I

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/lJ;

.field public final synthetic A04:Ljava/lang/String;

.field public final synthetic A05:Ljava/lang/String;

.field public final synthetic A06:Ljava/lang/String;

.field public final synthetic A07:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 272
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "l"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T0JdG9ZEnLfTeCeftC9G7d8cUsVG3XZb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aLcPLzyPnyiGnlL0eBnocVG2Im"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "W3EwFUE7CvVeZV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "t2q4fu0Y0bIBimY2SigNyotMmunbmEsF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TUpEXXUjgi8xLksArOVlucAVZCM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AqOn5F5Mae0spU5kh0gbanyLcs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "chqW8UrgIl8Ef4OOKimE4h"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7C;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7C;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/lJ;Ljava/lang/String;Ljava/lang/String;IDDLjava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 18868
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7C;->A06:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7C;->A05:Ljava/lang/String;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/7C;->A02:I

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/7C;->A01:D

    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/7C;->A00:D

    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/7C;->A04:Ljava/lang/String;

    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/7C;->A07:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/He;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/String;
    .registers 20

    .line 18869
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7C;->A01(III)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A02(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A06:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/le;->AAh(Ljava/lang/String;)V

    .line 18870
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A05:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_24

    .line 18871
    return-object v8

    .line 18872
    :cond_24
    invoke-static {}, Lcom/facebook/ads/redexgen/X/lJ;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/7C;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_43

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 18873
    :cond_43
    sget-object v2, Lcom/facebook/ads/redexgen/X/7C;->A09:[Ljava/lang/String;

    const-string v1, "mqnyRlomjFPPGlBu5iJ3A4HRnrnsorAH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "vLAqNnzkqKgbXCY8NZfbbPBhHyGRm9s6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v7, 0x0

    .line 18874
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_50
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A0E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 18875
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 18876
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    .line 18877
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A03(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hg;

    move-result-object v9

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    .line 18878
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A04(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hf;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hf;->A0E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, v5, Lcom/facebook/ads/redexgen/X/7C;->A02:I

    iget-object v12, v5, Lcom/facebook/ads/redexgen/X/7C;->A06:Ljava/lang/String;

    iget-wide v13, v5, Lcom/facebook/ads/redexgen/X/7C;->A01:D

    iget-wide v15, v5, Lcom/facebook/ads/redexgen/X/7C;->A00:D

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/7C;->A04:Ljava/lang/String;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A07:Ljava/util/Map;

    .line 18879
    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-virtual/range {v9 .. v18}, Lcom/facebook/ads/redexgen/X/Hg;->A0G(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 18880
    .local v3, "eventId":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 18881
    if-eqz v7, :cond_a9
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_84} :catch_b1
    .catchall {:try_start_50 .. :try_end_84} :catchall_fa

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 18882
    :try_start_8a
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 18883
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_a9
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_94} :catch_94

    .line 18884
    :catch_94
    move-exception v4

    .line 18885
    .local v2, "e":Ljava/lang/Exception;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A02(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    .line 18886
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/lf;->A0z:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 18887
    invoke-interface {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 18888
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a9
    :goto_a9
    invoke-static {}, Lcom/facebook/ads/redexgen/X/lJ;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18889
    return-object v6

    .line 18890
    :catch_b1
    move-exception v4

    .line 18891
    .local v3, "e":Ljava/lang/Exception;
    :try_start_b2
    sget-object v0, Lcom/facebook/ads/redexgen/X/lL;->A06:Lcom/facebook/ads/redexgen/X/lL;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/lM;->A01(Lcom/facebook/ads/redexgen/X/lL;)V

    .line 18892
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A02(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    .line 18893
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/lf;->A0y:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 18894
    invoke-interface {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 18895
    if-eqz v7, :cond_f2
    :try_end_cd
    .catchall {:try_start_b2 .. :try_end_cd} :catchall_fa

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 18896
    :try_start_d3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 18897
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_f2
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_dd} :catch_dd

    .line 18898
    :catch_dd
    move-exception v4

    .line 18899
    .local v4, "e":Ljava/lang/Exception;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A02(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    .line 18900
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/lf;->A0z:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 18901
    invoke-interface {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 18902
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_f2
    :goto_f2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/lJ;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18903
    return-object v8

    .line 18904
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_fa
    move-exception v6

    .end local v3
    if-eqz v7, :cond_122

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 18905
    :try_start_103
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_122

    .line 18906
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_122
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_10d} :catch_10d

    .line 18907
    :catch_10d
    move-exception v4

    .line 18908
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/7C;->A03:Lcom/facebook/ads/redexgen/X/lJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/lJ;->A02(Lcom/facebook/ads/redexgen/X/lJ;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    .line 18909
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/lf;->A0z:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Ljava/lang/Throwable;)V

    .line 18910
    invoke-interface {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/le;->ABz(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/lg;)V

    .line 18911
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_122
    :goto_122
    invoke-static {}, Lcom/facebook/ads/redexgen/X/lJ;->A06()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18912
    throw v6
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7C;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7C;->A08:[B

    return-void

    :array_a
    .array-data 1
        -0x70t
        -0x73t
        -0x60t
        -0x73t
        -0x72t
        -0x73t
        -0x61t
        -0x6ft
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A03()Ljava/lang/Object;
    .registers 2

    .line 18913
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7C;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
