###### Class com.facebook.ads.redexgen.X.AnonymousClass14 (com.facebook.ads.redexgen.X.14)
.class public final Lcom/facebook/ads/redexgen/X/14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2g;,
        Lcom/facebook/ads/redexgen/X/2f;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewpointManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewpointManager.kt\ncom/instagram/common/viewpoint/core/ViewpointManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Lcom/facebook/ads/redexgen/X/2g;

.field public static final A0C:Z

.field public static final A0D:Z

.field public static final A0E:Z


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0e;

.field public A01:Lcom/facebook/ads/redexgen/X/2f;

.field public A02:Lcom/facebook/ads/redexgen/X/2L;

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/2f;

.field public final A06:Lcom/facebook/ads/redexgen/X/30;

.field public final A07:Lcom/facebook/ads/redexgen/X/2h;

.field public final A08:Lcom/facebook/ads/redexgen/X/13;

.field public final A09:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 21
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L7pB8f6DJ5mJum6GDSmpdJslJXsMxtHa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HksPSFaLNpHeSbIn6Lpnse9MpsMCj7WG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QrtmqxkkG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pEruzS9O6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lcR3P06ACt7Jm9PISjJ4lll4eLJSZPNO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "rISygATOhWoedzWflPt6FhXlFyg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kGU4neNHJNKOGsm3ZekUG4yaL8gPq8fX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Hkf6X2ilN2bShHzWvJrFhhvcvulX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/14;->A0A:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2g;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2g;-><init>(Lcom/facebook/ads/redexgen/X/1i;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/14;->A0B:Lcom/facebook/ads/redexgen/X/2g;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/0e;Lcom/facebook/ads/redexgen/X/2h;Lcom/facebook/ads/redexgen/X/30;)V
    .registers 6

    .line 4380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4381
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/14;->A08:Lcom/facebook/ads/redexgen/X/13;

    .line 4382
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/14;->A00:Lcom/facebook/ads/redexgen/X/0e;

    .line 4383
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/14;->A07:Lcom/facebook/ads/redexgen/X/2h;

    .line 4384
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/14;->A06:Lcom/facebook/ads/redexgen/X/30;

    .line 4385
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A09:Ljava/util/LinkedHashMap;

    .line 4386
    new-instance v0, Lcom/facebook/ads/redexgen/X/16;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/16;-><init>(Lcom/facebook/ads/redexgen/X/14;)V

    check-cast v0, Lcom/facebook/ads/redexgen/X/2f;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A05:Lcom/facebook/ads/redexgen/X/2f;

    .line 4387
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/0e;Lcom/facebook/ads/redexgen/X/2h;Lcom/facebook/ads/redexgen/X/30;ILcom/facebook/ads/redexgen/X/1i;)V
    .registers 8

    .line 4388
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_5

    .line 4389
    const/4 p4, 0x0

    .line 4390
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/0e;Lcom/facebook/ads/redexgen/X/2h;Lcom/facebook/ads/redexgen/X/30;)V

    .line 4391
    return-void
.end method

.method public static final synthetic A00(Lcom/facebook/ads/redexgen/X/14;)Lcom/facebook/ads/redexgen/X/2f;
    .registers 1

    .line 4392
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/14;->A01:Lcom/facebook/ads/redexgen/X/2f;

    return-object p0
.end method

.method public static final A01()Lcom/facebook/ads/redexgen/X/14;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/ads/redexgen/X/14;->A0B:Lcom/facebook/ads/redexgen/X/2g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2g;->A00()Lcom/facebook/ads/redexgen/X/14;

    move-result-object v0

    .line 4393
    return-object v0
.end method

.method public static final synthetic A02(Lcom/facebook/ads/redexgen/X/14;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 4394
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/14;->A09:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private final A03(Lcom/facebook/ads/redexgen/X/2j;Lcom/facebook/ads/redexgen/X/2o;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/2p;)V
    .registers 12

    .line 4395
    sget-object v0, Lcom/facebook/ads/redexgen/X/2L;->A04:Lcom/facebook/ads/redexgen/X/2M;

    .line 4396
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/14;->A08:Lcom/facebook/ads/redexgen/X/13;

    .line 4397
    const/4 v6, 0x0

    .line 4398
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/2M;->A03(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/2j;Lcom/facebook/ads/redexgen/X/2o;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/2p;Lcom/facebook/ads/redexgen/X/30;)Lcom/facebook/ads/redexgen/X/2L;

    move-result-object v0

    .line 4399
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A02:Lcom/facebook/ads/redexgen/X/2L;

    .line 4400
    const/4 v1, 0x0

    .line 4401
    .local v0, "localViewpointListener":Lcom/facebook/ads/redexgen/X/2i;
    if-eqz v1, :cond_1a

    .line 4402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A02:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1h;->A06(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2L;->A03(Lcom/facebook/ads/redexgen/X/2i;)V

    .line 4403
    :cond_1a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/14;->A02:Lcom/facebook/ads/redexgen/X/2L;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/1h;->A06(Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/14;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_40

    sget-object v2, Lcom/facebook/ads/redexgen/X/14;->A0A:[Ljava/lang/String;

    const-string v1, "EeMj3KlYf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "dKx0p3seg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A05:Lcom/facebook/ads/redexgen/X/2f;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2L;->A04(Lcom/facebook/ads/redexgen/X/2f;)V

    .line 4404
    return-void

    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;)V
    .registers 6

    .line 4405
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/14;->A02:Lcom/facebook/ads/redexgen/X/2L;

    .line 4406
    .local v0, "localViewpointWatcher":Lcom/facebook/ads/redexgen/X/2L;
    if-eqz v2, :cond_11

    if-eqz p1, :cond_11

    .line 4407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A08:Lcom/facebook/ads/redexgen/X/13;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/13;->A01:Z

    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    .line 4408
    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/2L;->A05(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;)V

    .line 4409
    :cond_11
    :goto_11
    return-void

    .line 4410
    :cond_12
    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, p1, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A02(Lcom/facebook/ads/redexgen/X/2L;Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;ILjava/lang/Object;)V

    goto :goto_11
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;Lcom/facebook/ads/redexgen/X/2l;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2K;",
            "Lcom/facebook/ads/redexgen/X/2y;",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;)V"
        }
    .end annotation

    .line 4411
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/14;->A02:Lcom/facebook/ads/redexgen/X/2L;

    .line 4412
    .local v0, "localViewpointWatcher":Lcom/facebook/ads/redexgen/X/2L;
    if-eqz v2, :cond_36

    if-eqz p1, :cond_36

    if-eqz p3, :cond_36

    .line 4413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A08:Lcom/facebook/ads/redexgen/X/13;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/13;->A01:Z

    if-eqz v0, :cond_37

    if-eqz p2, :cond_37

    .line 4414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p3, Lcom/facebook/ads/redexgen/X/2l;->A08:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/facebook/ads/redexgen/X/2l;->A02:Ljava/lang/String;

    .line 4415
    invoke-virtual {v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2L;->A06(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;Lcom/facebook/ads/redexgen/X/2l;)V

    .line 4416
    :cond_36
    :goto_36
    return-void

    .line 4417
    :cond_37
    invoke-virtual {v2, p1, p3}, Lcom/facebook/ads/redexgen/X/2L;->A07(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2l;)V

    goto :goto_36
.end method


# virtual methods
.method public final A06(Landroid/view/View;)V
    .registers 7

    .line 4418
    const/4 v4, 0x0

    if-eqz p1, :cond_1a

    sget-object v3, Lcom/facebook/ads/redexgen/X/11;->A03:Lcom/facebook/ads/redexgen/X/2O;

    sget-object v1, Lcom/facebook/ads/redexgen/X/14;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    move-object v0, v4

    goto :goto_27

    :cond_1c
    sget-object v2, Lcom/facebook/ads/redexgen/X/14;->A0A:[Ljava/lang/String;

    const-string v1, "qbapvPJhWt7eO9TL5njdwoTQY07eJIz0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/2O;->A04(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/11;

    move-result-object v0

    :goto_27
    check-cast v0, Lcom/facebook/ads/redexgen/X/2K;

    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/14;->A04(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;)V

    .line 4419
    return-void
.end method

.method public final A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/redexgen/X/2l<",
            "**>;)V"
        }
    .end annotation

    .line 4420
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    sget-object v0, Lcom/facebook/ads/redexgen/X/11;->A03:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2O;->A04(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/11;

    move-result-object v0

    :goto_9
    check-cast v0, Lcom/facebook/ads/redexgen/X/2K;

    .line 4421
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/ads/redexgen/X/14;->A05(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2y;Lcom/facebook/ads/redexgen/X/2l;)V

    .line 4422
    return-void

    .line 4423
    :cond_f
    move-object v0, v1

    goto :goto_9
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/2j;Landroid/view/View;)V
    .registers 14

    .line 4424
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    .line 4425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A00:Lcom/facebook/ads/redexgen/X/0e;

    new-instance v1, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/18;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/0e;)V

    check-cast v1, Lcom/facebook/ads/redexgen/X/2o;

    .line 4426
    new-instance v2, Lcom/facebook/ads/redexgen/X/0d;

    .line 4427
    const/4 v3, 0x0

    .line 4428
    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/14;->A03:Z

    .line 4429
    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/14;->A04:Z

    .line 4430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/14;->A08:Lcom/facebook/ads/redexgen/X/13;

    iget-boolean v8, v0, Lcom/facebook/ads/redexgen/X/13;->A00:Z

    .line 4431
    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/0d;-><init>(Lcom/facebook/ads/redexgen/X/2h;ZZZZZILcom/facebook/ads/redexgen/X/1i;)V

    check-cast v2, Lcom/facebook/ads/redexgen/X/12;

    .line 4432
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/14;->A03(Lcom/facebook/ads/redexgen/X/2j;Lcom/facebook/ads/redexgen/X/2o;Lcom/facebook/ads/redexgen/X/12;Lcom/facebook/ads/redexgen/X/2p;)V

    .line 4433
    :cond_25
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass16 (com.facebook.ads.redexgen.X.16)
.class public final Lcom/facebook/ads/redexgen/X/16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/0e;Lcom/facebook/ads/redexgen/X/2h;Lcom/facebook/ads/redexgen/X/30;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/14;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/14;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGx()V
    .registers 6

    .line 4434
    const/4 v0, 0x0

    .line 4435
    .local v0, "runnablesList":Ljava/lang/Object;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/14;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/14;->A02(Lcom/facebook/ads/redexgen/X/14;)Ljava/util/LinkedHashMap;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/14;

    monitor-enter v4

    .line 4436
    .local v3, "$i$a$-synchronized-ViewpointManager$mPostScanViewpointScanListener$1$1":I
    :try_start_a
    sget-boolean v1, Lcom/facebook/ads/redexgen/X/14;->A0C:Z

    if-eqz v1, :cond_18

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/14;->A02(Lcom/facebook/ads/redexgen/X/14;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 4437
    :cond_18
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/14;->A02(Lcom/facebook/ads/redexgen/X/14;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4438
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/14;->A02(Lcom/facebook/ads/redexgen/X/14;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4439
    .local v4, "it":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4440
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4441
    .local p0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 4442
    .end local p0    # "runnable":Ljava/lang/Runnable;
    :cond_41
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/14;->A02(Lcom/facebook/ads/redexgen/X/14;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_6d

    .line 4443
    :cond_48
    monitor-exit v4

    .line 4444
    if-eqz v0, :cond_61

    .line 4445
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 4446
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_51

    .line 4447
    :cond_61
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/14;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/14;->A00(Lcom/facebook/ads/redexgen/X/14;)Lcom/facebook/ads/redexgen/X/2f;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2f;->AGx()V

    .line 4448
    :cond_6c
    return-void

    .line 4449
    :catchall_6d
    move-exception v0

    monitor-exit v4

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass18 (com.facebook.ads.redexgen.X.18)
.class public final Lcom/facebook/ads/redexgen/X/18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/2o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2w;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Lcom/facebook/ads/redexgen/X/2w;


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Landroid/graphics/Rect;

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Lcom/facebook/ads/redexgen/X/0e;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 23
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IEiXcTkMIl1ap8Zf6qOVAjQ1rvSIicom"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QYAiQp9VSKIcO10LfC8C0oMZ52KCP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5FnqVZjKRiUcCEiMettDGQkf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eIcxxbRAXAOJgXUDruK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Xqq5h503ORagU11Zkm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kVW5mdc93LjiLmP7jOmm8EZ9ikbuw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Pup9EGwYSaPQ0jjcMKTOfwULbNi8Bcjo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/18;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/18;->A01()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2w;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2w;-><init>(Lcom/facebook/ads/redexgen/X/1i;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/18;->A07:Lcom/facebook/ads/redexgen/X/2w;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/0e;)V
    .registers 6

    const/16 v2, 0x25

    const/4 v1, 0x4

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/18;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/18;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/18;->A03:Lcom/facebook/ads/redexgen/X/0e;

    .line 4453
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:Ljava/lang/ref/WeakReference;

    .line 4454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A04:Ljava/util/List;

    .line 4455
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A02:Landroid/graphics/Rect;

    .line 4456
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A01:Landroid/graphics/Rect;

    .line 4457
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/18;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/18;->A05:[B

    return-void

    :array_a
    .array-data 1
        -0x36t
        -0x2dt
        -0x30t
        -0x29t
        -0x47t
        -0x34t
        -0x32t
        -0x30t
        -0x2at
        -0x2bt
        -0x26t
        -0x49t
        -0x27t
        -0x2at
        -0x23t
        -0x30t
        -0x35t
        -0x34t
        -0x27t
        -0x4t
        -0x6t
        0x9t
        -0x28t
        0x1t
        -0x2t
        0x5t
        -0x19t
        -0x6t
        -0x8t
        0x9t
        0x1et
        0x24t
        0x23t
        -0x5t
        0x18t
        0x22t
        0x23t
        0x3t
        -0xat
        -0xet
        0x4t
    .end array-data
.end method

.method private final A02(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    move-object v2, p0

    const/16 v3, 0x1e

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/18;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4458
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4459
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/18;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4460
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/18;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4461
    .local v2, "view":Landroid/view/View;
    if-eqz v1, :cond_2f

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/18;->A02:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/18;->A02:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4462
    .end local v2    # "view":Landroid/view/View;
    .restart local p12
    :cond_2f
    return-void

    .line 4463
    :cond_30
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/18;->A04:Ljava/util/List;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/18;->A02:Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4464
    const/4 v1, 0x0

    .local v3, "i":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/18;->A03:Lcom/facebook/ads/redexgen/X/0e;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0e;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    .line 4465
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/18;->A03:Lcom/facebook/ads/redexgen/X/0e;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0e;->A7I(I)Lcom/facebook/ads/redexgen/X/33;

    .line 4466
    .local p1, "clipRegion":Lcom/facebook/ads/redexgen/X/33;
    const/16 v2, 0x13

    const/16 v1, 0xb

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/18;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4467
    .end local p12
    .restart local v2    # "view":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "i":I
    .restart local p12
    :cond_55
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/18;->A04:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/18;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7b

    sget-object v2, Lcom/facebook/ads/redexgen/X/18;->A06:[Ljava/lang/String;

    const-string v1, "LXhIn0ySVvfbhvFPsQzIW8Ps"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4468
    return-void

    :cond_7b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A85()Landroid/content/Context;
    .registers 2

    .line 4469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/18;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4470
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final AAD(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x1e

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/18;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/1h;->A09(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4471
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/18;->A02(Ljava/util/List;)V

    .line 4472
    return-void
.end method
