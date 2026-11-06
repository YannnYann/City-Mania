###### Class com.facebook.ads.redexgen.X.C1478Ay (com.facebook.ads.redexgen.X.Ay)
.class public final Lcom/facebook/ads/redexgen/X/Ay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e3;


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Be;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:Landroid/os/Handler;

.field public final A08:Lcom/facebook/ads/redexgen/X/BM;

.field public final A09:Lcom/facebook/ads/redexgen/X/BG;

.field public final A0A:Lcom/facebook/ads/redexgen/X/BE;

.field public final A0B:Lcom/facebook/ads/redexgen/X/BB;

.field public final A0C:Lcom/facebook/ads/redexgen/X/B5;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/db;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 462
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ua4Z1F3Vn1tdURaP0tTj5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VlqKJtfjGqtNso0qX2A6lmnvOZsZ2xTE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1pb0xsuTqC4ySw1JjiCpjHk6a0KK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HW9a8amQa56v9usqS4J3KzzxMBRp7oUY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lzg290ZQq0ECc78zj7A2Pt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9JBQniCNh78hbF6UnJo6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DIRAqcjzgSQz4x9q8OrEXdtc6Zce0V5V"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FPN1H6gS7aT4O5CCkRk249I"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    .line 31387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31388
    new-instance v0, Lcom/facebook/ads/redexgen/X/5U;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5U;-><init>(Lcom/facebook/ads/redexgen/X/Ay;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A09:Lcom/facebook/ads/redexgen/X/BG;

    .line 31389
    new-instance v0, Lcom/facebook/ads/redexgen/X/5T;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5T;-><init>(Lcom/facebook/ads/redexgen/X/Ay;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A08:Lcom/facebook/ads/redexgen/X/BM;

    .line 31390
    new-instance v0, Lcom/facebook/ads/redexgen/X/5S;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5S;-><init>(Lcom/facebook/ads/redexgen/X/Ay;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0A:Lcom/facebook/ads/redexgen/X/BE;

    .line 31391
    new-instance v0, Lcom/facebook/ads/redexgen/X/5R;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5R;-><init>(Lcom/facebook/ads/redexgen/X/Ay;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0B:Lcom/facebook/ads/redexgen/X/BB;

    .line 31392
    new-instance v0, Lcom/facebook/ads/redexgen/X/5Q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5Q;-><init>(Lcom/facebook/ads/redexgen/X/Ay;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0C:Lcom/facebook/ads/redexgen/X/B5;

    .line 31393
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A07:Landroid/os/Handler;

    .line 31394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0D:Ljava/util/List;

    .line 31395
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A00:I

    .line 31396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A02:Z

    .line 31397
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A04:Z

    .line 31398
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Ay;->A03:Z

    .line 31399
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ay;)I
    .registers 1

    .line 31400
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ay;)Landroid/os/Handler;
    .registers 1

    .line 31401
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A07:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ay;)Lcom/facebook/ads/redexgen/X/Be;
    .registers 1

    .line 31402
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A01:Lcom/facebook/ads/redexgen/X/Be;

    return-object p0
.end method

.method private A03()V
    .registers 6

    .line 31403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A07:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 31404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A0E:[Ljava/lang/String;

    const-string v1, "SzC94btdcN1119JNHgRanzsWdfoutew0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/db;

    .line 31405
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/db;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/db;->cancel()V

    .line 31406
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/db;
    goto :goto_c

    .line 31407
    :cond_36
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ay;)V
    .registers 1

    .line 31408
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ay;->A03()V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Ay;ZZ)V
    .registers 3

    .line 31409
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ay;->A06(ZZ)V

    return-void
.end method

.method private A06(ZZ)V
    .registers 8

    .line 31410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/db;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 31411
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/db;
    :cond_25
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A0E:[Ljava/lang/String;

    const-string v1, "qWrr7wKcnD6M25Nm7U3j0NNRElcnIA4d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/db;->A4b(ZZ)V

    .line 31412
    .end local v1    # "animation":Lcom/facebook/ads/redexgen/X/db;
    goto :goto_6

    .line 31413
    :cond_30
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Ay;)Z
    .registers 1

    .line 31414
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A05:Z

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Ay;)Z
    .registers 1

    .line 31415
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A02:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Ay;)Z
    .registers 1

    .line 31416
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A03:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Ay;)Z
    .registers 1

    .line 31417
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A04:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Ay;)Z
    .registers 1

    .line 31418
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A06:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Ay;Lcom/facebook/ads/redexgen/X/dc;)Z
    .registers 2

    .line 31419
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ay;->A0G(Lcom/facebook/ads/redexgen/X/dc;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Ay;Z)Z
    .registers 2

    .line 31420
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A05:Z

    return p1
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Ay;Z)Z
    .registers 2

    .line 31421
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A02:Z

    return p1
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Ay;Z)Z
    .registers 2

    .line 31422
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A06:Z

    return p1
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/dc;)Z
    .registers 4

    .line 31423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/db;

    .line 31424
    .local v1, "animation":Lcom/facebook/ads/redexgen/X/db;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/db;->A9o()Lcom/facebook/ads/redexgen/X/dc;

    move-result-object v0

    if-eq v0, p1, :cond_6

    .line 31425
    const/4 v0, 0x0

    return v0

    .line 31426
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A0H()V
    .registers 2

    .line 31427
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31428
    return-void
.end method

.method public final A0I()V
    .registers 3

    .line 31429
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A04:Z

    if-eqz v0, :cond_d

    .line 31430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A07:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 31431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A04:Z

    .line 31432
    :cond_d
    return-void
.end method

.method public final A0J()V
    .registers 2

    .line 31433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A06:Z

    .line 31434
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A05:Z

    .line 31435
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A06(ZZ)V

    .line 31436
    return-void
.end method

.method public final A0K(I)V
    .registers 2

    .line 31437
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A00:I

    .line 31438
    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/db;)V
    .registers 3

    .line 31439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31440
    return-void
.end method

.method public final A0M()Z
    .registers 2

    .line 31441
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A04:Z

    return v0
.end method

.method public final ABd(Lcom/facebook/ads/redexgen/X/Be;)V
    .registers 6

    .line 31442
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A01:Lcom/facebook/ads/redexgen/X/Be;

    .line 31443
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->getEventBus()Lcom/facebook/ads/redexgen/X/mP;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A09:Lcom/facebook/ads/redexgen/X/BG;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0C:Lcom/facebook/ads/redexgen/X/B5;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0A:Lcom/facebook/ads/redexgen/X/BE;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0B:Lcom/facebook/ads/redexgen/X/BB;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A08:Lcom/facebook/ads/redexgen/X/BM;

    aput-object v0, v2, v1

    .line 31444
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/mP;->A03([Lcom/facebook/ads/redexgen/X/mQ;)V

    .line 31445
    return-void
.end method

.method public final ALp(Lcom/facebook/ads/redexgen/X/Be;)V
    .registers 6

    .line 31446
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ay;->A03()V

    .line 31447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A01:Lcom/facebook/ads/redexgen/X/Be;

    .line 31448
    if-nez p1, :cond_9

    .line 31449
    return-void

    .line 31450
    :cond_9
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Be;->getEventBus()Lcom/facebook/ads/redexgen/X/mP;

    move-result-object v3

    const/4 v0, 0x5

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/mQ;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A08:Lcom/facebook/ads/redexgen/X/BM;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0C:Lcom/facebook/ads/redexgen/X/B5;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0A:Lcom/facebook/ads/redexgen/X/BE;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A0B:Lcom/facebook/ads/redexgen/X/BB;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A09:Lcom/facebook/ads/redexgen/X/BG;

    aput-object v0, v2, v1

    .line 31451
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/mP;->A04([Lcom/facebook/ads/redexgen/X/mQ;)V

    .line 31452
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C5R (com.facebook.ads.redexgen.X.5R)
.class public final Lcom/facebook/ads/redexgen/X/5R;
.super Lcom/facebook/ads/redexgen/X/BB;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ay;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ay;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11820
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BB;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5V;)V
    .registers 5

    .line 11821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0A(Lcom/facebook/ads/redexgen/X/Ay;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dc;->A05:Lcom/facebook/ads/redexgen/X/dc;

    .line 11822
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0C(Lcom/facebook/ads/redexgen/X/Ay;Lcom/facebook/ads/redexgen/X/dc;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 11823
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A04(Lcom/facebook/ads/redexgen/X/Ay;)V

    .line 11824
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A05(Lcom/facebook/ads/redexgen/X/Ay;ZZ)V

    .line 11825
    :cond_1e
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11826
    check-cast p1, Lcom/facebook/ads/redexgen/X/5V;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5R;->A00(Lcom/facebook/ads/redexgen/X/5V;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C5T (com.facebook.ads.redexgen.X.5T)
.class public final Lcom/facebook/ads/redexgen/X/5T;
.super Lcom/facebook/ads/redexgen/X/BM;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ay;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ay;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11843
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5Y;)V
    .registers 5

    .line 11844
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Ay;->A0E(Lcom/facebook/ads/redexgen/X/Ay;Z)Z

    .line 11845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A09(Lcom/facebook/ads/redexgen/X/Ay;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11846
    return-void

    .line 11847
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A04(Lcom/facebook/ads/redexgen/X/Ay;)V

    .line 11848
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A05(Lcom/facebook/ads/redexgen/X/Ay;ZZ)V

    .line 11849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Ay;->A0D(Lcom/facebook/ads/redexgen/X/Ay;Z)Z

    .line 11850
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11851
    check-cast p1, Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5T;->A00(Lcom/facebook/ads/redexgen/X/5Y;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C5U (com.facebook.ads.redexgen.X.5U)
.class public final Lcom/facebook/ads/redexgen/X/5U;
.super Lcom/facebook/ads/redexgen/X/BG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ay;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ay;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11852
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BG;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/5W;)V
    .registers 5

    .line 11853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A01(Lcom/facebook/ads/redexgen/X/Ay;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11854
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dc;->A05:Lcom/facebook/ads/redexgen/X/dc;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0C(Lcom/facebook/ads/redexgen/X/Ay;Lcom/facebook/ads/redexgen/X/dc;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 11855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ay;->A04(Lcom/facebook/ads/redexgen/X/Ay;)V

    .line 11856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A05(Lcom/facebook/ads/redexgen/X/Ay;ZZ)V

    .line 11857
    :cond_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5U;->A00:Lcom/facebook/ads/redexgen/X/Ay;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Ay;->A0D(Lcom/facebook/ads/redexgen/X/Ay;Z)Z

    .line 11858
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/mO;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11859
    check-cast p1, Lcom/facebook/ads/redexgen/X/5W;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5U;->A00(Lcom/facebook/ads/redexgen/X/5W;)V

    return-void
.end method
