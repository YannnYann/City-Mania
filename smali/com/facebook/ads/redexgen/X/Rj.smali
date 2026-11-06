###### Class com.facebook.ads.redexgen.X.C1886Rj (com.facebook.ads.redexgen.X.Rj)
.class public final Lcom/facebook/ads/redexgen/X/Rj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/X7;
.implements Lcom/facebook/ads/redexgen/X/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/NX;

.field public A02:Lcom/facebook/ads/redexgen/X/ZP;

.field public A03:Z

.field public A04:Z

.field public final A05:J

.field public final A06:Landroid/net/Uri;

.field public final A07:Lcom/facebook/ads/redexgen/X/Lx;

.field public final A08:Lcom/facebook/ads/redexgen/X/99;

.field public final A09:Lcom/facebook/ads/redexgen/X/Uz;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Yw;

.field public final A0B:Lcom/facebook/ads/redexgen/X/ZH;

.field public volatile A0C:Z

.field public final synthetic A0D:Lcom/facebook/ads/redexgen/X/8p;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1224
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XaDD5PgyAmJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8zmS63z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j8ciNHuCepgrbIigmG1k2aMiHO0R8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k8mv2Mp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LdWYTg8T9Rti"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vTCnbQfzDGS3p1oDNxDazVjLN5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FIxjTRthEwDZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8p;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/Uz;Lcom/facebook/ads/redexgen/X/Yw;Lcom/facebook/ads/redexgen/X/Lx;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 68365
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68366
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A06:Landroid/net/Uri;

    .line 68367
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, p3}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/TE;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    .line 68368
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    .line 68369
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/Yw;

    .line 68370
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Rj;->A07:Lcom/facebook/ads/redexgen/X/Lx;

    .line 68371
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0B:Lcom/facebook/ads/redexgen/X/ZH;

    .line 68372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Z

    .line 68373
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uc;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A05:J

    .line 68374
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Rj;)J
    .registers 2

    .line 68375
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A05:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Rj;)J
    .registers 2

    .line 68376
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/NX;
    .registers 1

    .line 68377
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/NX;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/99;
    .registers 1

    .line 68378
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    return-object p0
.end method

.method private A04(JJ)V
    .registers 6

    .line 68379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0B:Lcom/facebook/ads/redexgen/X/ZH;

    iput-wide p1, v0, Lcom/facebook/ads/redexgen/X/ZH;->A00:J

    .line 68380
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:J

    .line 68381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Z

    .line 68382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A04:Z

    .line 68383
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Rj;JJ)V
    .registers 5

    .line 68384
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Rj;->A04(JJ)V

    return-void
.end method


# virtual methods
.method public final A5N()V
    .registers 2

    .line 68385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0C:Z

    .line 68386
    return-void
.end method

.method public final ABZ()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68387
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 68388
    .local v2, "result":I
    :goto_3
    if-nez v0, :cond_148

    iget-boolean v2, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0C:Z

    if-nez v2, :cond_148

    .line 68389
    const/4 v2, 0x1

    const-wide/16 v8, -0x1

    :try_start_c
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0B:Lcom/facebook/ads/redexgen/X/ZH;

    iget-wide v14, v3, Lcom/facebook/ads/redexgen/X/ZH;->A00:J

    .line 68390
    .local v6, "position":J
    new-instance v12, Lcom/facebook/ads/redexgen/X/NX;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/Rj;->A06:Landroid/net/Uri;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A0C(Lcom/facebook/ads/redexgen/X/8p;)Ljava/lang/String;

    move-result-object v18

    const-wide/16 v16, -0x1

    invoke-direct/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iput-object v12, v1, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/NX;

    .line 68391
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/NX;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/99;->AHv(Lcom/facebook/ads/redexgen/X/NX;)J

    move-result-wide v16

    .line 68392
    .local v8, "length":J
    cmp-long v3, v16, v8

    if-eqz v3, :cond_34

    .line 68393
    add-long v16, v16, v14

    .line 68394
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A0P(Lcom/facebook/ads/redexgen/X/8p;)V

    .line 68395
    .end local v8    # "length":J
    .local v17, "length":J
    :cond_34
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/8p;->A09(Lcom/facebook/ads/redexgen/X/8p;Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 68396
    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    .line 68397
    .local v0, "extractorDataSource":Lcom/facebook/ads/redexgen/X/TE;
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A08(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    if-eqz v3, :cond_87

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A08(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    iget v7, v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_12b

    const/4 v6, -0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/Rj;->A0E:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x7

    if-eq v4, v3, :cond_125

    sget-object v5, Lcom/facebook/ads/redexgen/X/Rj;->A0E:[Ljava/lang/String;

    const-string v4, "Yk5WckqCjpE"

    const/4 v3, 0x0

    aput-object v4, v5, v3

    const-string v4, "o7AELwMD0LYTFZS4cgGrm65fOh"

    const/4 v3, 0x5

    aput-object v4, v5, v3

    if-eq v7, v6, :cond_87

    .line 68398
    :try_start_67
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A08(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    iget v3, v3, Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;->A01:I

    new-instance v11, Lcom/facebook/ads/redexgen/X/8q;

    invoke-direct {v11, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/8q;-><init>(Lcom/facebook/ads/redexgen/X/TE;ILcom/facebook/ads/redexgen/X/Ub;)V

    .line 68399
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8p;->A0Z()Lcom/facebook/ads/redexgen/X/ZP;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/ZP;

    .line 68400
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8p;->A05()Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/ZP;->A7E(Lcom/facebook/ads/redexgen/X/VC;)V

    .line 68401
    .end local v0    # "extractorDataSource":Lcom/facebook/ads/redexgen/X/TE;
    .local p0, "extractorDataSource":Lcom/facebook/ads/redexgen/X/TE;
    :cond_87
    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/Rj;->A06:Landroid/net/Uri;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    .line 68402
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/99;->A9W()Ljava/util/Map;

    move-result-object v13

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/Yw;

    .line 68403
    move-object/from16 v18, v3

    invoke-interface/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/Uz;->AAp(Lcom/facebook/ads/redexgen/X/TE;Landroid/net/Uri;Ljava/util/Map;JJLcom/facebook/ads/redexgen/X/Yw;)V

    .line 68404
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A08(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/androidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v3

    if-eqz v3, :cond_a5

    .line 68405
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Uz;->A6X()V

    .line 68406
    :cond_a5
    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A03:Z

    if-eqz v3, :cond_b3

    .line 68407
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A00:J

    invoke-interface {v5, v14, v15, v3, v4}, Lcom/facebook/ads/redexgen/X/Uz;->AKO(JJ)V

    .line 68408
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A03:Z

    .line 68409
    :cond_b3
    :goto_b3
    if-nez v0, :cond_ed

    iget-boolean v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0C:Z

    if-nez v3, :cond_ed
    :try_end_b9
    .catchall {:try_start_67 .. :try_end_b9} :catchall_12b

    .line 68410
    :try_start_b9
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A07:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Lx;->A00()V
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_be} :catch_11f
    .catchall {:try_start_b9 .. :try_end_be} :catchall_12b

    .line 68411
    :try_start_be
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0B:Lcom/facebook/ads/redexgen/X/ZH;

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/Uz;->AIZ(Lcom/facebook/ads/redexgen/X/ZH;)I

    move-result v0

    .line 68412
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Uz;->A8B()J

    move-result-wide v6

    .line 68413
    .local v8, "currentInputPosition":J
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A01(Lcom/facebook/ads/redexgen/X/8p;)J

    move-result-wide v4

    add-long/2addr v4, v14

    cmp-long v3, v6, v4

    if-lez v3, :cond_b3

    .line 68414
    move-wide v14, v6

    .line 68415
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A07:Lcom/facebook/ads/redexgen/X/Lx;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Lx;->A02()Z

    .line 68416
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A04(Lcom/facebook/ads/redexgen/X/8p;)Landroid/os/Handler;

    move-result-object v4

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/8p;->A0A(Lcom/facebook/ads/redexgen/X/8p;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b3

    .line 68417
    .end local v0
    .end local v6    # "position":J
    .end local v17    # "length":J
    .end local p0    # "extractorDataSource":Lcom/facebook/ads/redexgen/X/TE;
    .restart local v2    # "result":I
    :cond_ed
    if-ne v0, v2, :cond_f7

    .line 68418
    const/4 v0, 0x0
    :try_end_f0
    .catchall {:try_start_be .. :try_end_f0} :catchall_12b

    .line 68419
    .end local v2    # "result":I
    .local v0, "result":I
    :cond_f0
    :goto_f0
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/NS;->A00(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 68420
    goto/16 :goto_3

    .line 68421
    .end local v0    # "result":I
    .restart local v2    # "result":I
    :cond_f7
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Uz;->A8B()J

    move-result-wide v3

    cmp-long v2, v3, v8

    if-eqz v2, :cond_f0

    .line 68422
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0B:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Rj;->A0E:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x7

    if-eq v3, v2, :cond_125

    sget-object v4, Lcom/facebook/ads/redexgen/X/Rj;->A0E:[Ljava/lang/String;

    const-string v3, "gEkEzlsd4WVRbObRS9T"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/Uz;->A8B()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/ZH;->A00:J

    goto :goto_f0

    .line 68423
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_11f
    :try_start_11f
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    .end local v2    # "result":I
    throw v3
    :try_end_125
    .catchall {:try_start_11f .. :try_end_125} :catchall_12b

    :cond_125
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68424
    :catchall_12b
    move-exception v5

    if-eq v0, v2, :cond_142

    .line 68425
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A8B()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-eqz v0, :cond_142

    .line 68426
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/Rj;->A0B:Lcom/facebook/ads/redexgen/X/ZH;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/Uz;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Uz;->A8B()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/ZH;->A00:J

    .line 68427
    :cond_142
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rj;->A08:Lcom/facebook/ads/redexgen/X/99;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NS;->A00(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 68428
    throw v5

    .line 68429
    :cond_148
    return-void
.end method

.method public final AF8(Lcom/facebook/ads/redexgen/X/Mk;)V
    .registers 14

    .line 68430
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A04:Z

    const/4 v4, 0x1

    if-nez v0, :cond_1f

    .line 68431
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:J

    .line 68432
    .local v5, "timeUs":J
    :goto_7
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mk;->A07()I

    move-result v9

    .line 68433
    .local v0, "length":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/ZP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/ZP;

    .line 68434
    .local v2, "icyTrackOutput":Lcom/facebook/ads/redexgen/X/ZP;
    invoke-interface {v5, p1, v9}, Lcom/facebook/ads/redexgen/X/ZP;->AK9(Lcom/facebook/ads/redexgen/X/Mk;I)V

    .line 68435
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/ZP;->AKC(JIIILcom/facebook/ads/redexgen/X/ZN;)V

    .line 68436
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A04:Z

    .line 68437
    return-void

    .line 68438
    :cond_1f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0D:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/8p;->A02(Lcom/facebook/ads/redexgen/X/8p;Z)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_7
.end method

###### Class com.facebook.ads.redexgen.X.C8q (com.facebook.ads.redexgen.X.8q)
.class public final Lcom/facebook/ads/redexgen/X/8q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/TE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ub;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/TE;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ub;

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 371
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AADzzswwW8PGyDGYU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ArC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "orSQ12XGouG4EbDUF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "f0SH1r1qTJ7UOD9Hs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HhN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1XCgKSbxB46C"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "a4iWK1VOuTlVbRV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uGTY8cKgmQdhZuobhrqmdzAdtw2h9Ipc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TE;ILcom/facebook/ads/redexgen/X/Ub;)V
    .registers 6

    .line 25738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25739
    const/4 v1, 0x1

    if-lez p2, :cond_17

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 25740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8q;->A02:Lcom/facebook/ads/redexgen/X/TE;

    .line 25741
    iput p2, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:I

    .line 25742
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8q;->A03:Lcom/facebook/ads/redexgen/X/Ub;

    .line 25743
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A04:[B

    .line 25744
    iput p2, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    .line 25745
    return-void

    .line 25746
    :cond_17
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private A00()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25747
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8q;->A02:Lcom/facebook/ads/redexgen/X/TE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A04:[B

    const/4 v10, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v0, v10, v5}, Lcom/facebook/ads/redexgen/X/KR;->read([BII)I

    move-result v0

    .line 25748
    .local v0, "bytesRead":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_e

    .line 25749
    return v10

    .line 25750
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A04:[B

    aget-byte v0, v0, v10

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x4

    .line 25751
    .local v4, "metadataLength":I
    if-nez v4, :cond_19

    .line 25752
    return v5

    .line 25753
    :cond_19
    const/4 v8, 0x0

    .line 25754
    .local v5, "offset":I
    move v7, v4

    .line 25755
    .local v6, "lengthRemaining":I
    new-array v3, v4, [B

    .line 25756
    .local v7, "metadata":[B
    :goto_1d
    if-lez v7, :cond_4c

    .line 25757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A02:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0, v3, v8, v7}, Lcom/facebook/ads/redexgen/X/KR;->read([BII)I

    move-result v6

    .line 25758
    if-ne v6, v9, :cond_28

    .line 25759
    return v10

    .line 25760
    :cond_28
    add-int/2addr v8, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_46

    .line 25761
    sget-object v2, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    const-string v1, "7FdP2hzljBIR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "oRfwJDo3VBMpfuC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr v7, v6

    goto :goto_1d

    :cond_46
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25762
    :cond_4c
    :goto_4c
    if-lez v4, :cond_7a

    add-int/lit8 v0, v4, -0x1

    aget-byte v6, v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_70

    sget-object v2, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    const-string v1, "LdT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v6, :cond_7a

    .line 25763
    :goto_6d
    add-int/lit8 v4, v4, -0x1

    goto :goto_4c

    :cond_70
    sget-object v2, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    const-string v1, "ERqxWuTtBALh66gFQPQv9BxDi0"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v6, :cond_7a

    goto :goto_6d

    .line 25764
    :cond_7a
    if-lez v4, :cond_86

    .line 25765
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8q;->A03:Lcom/facebook/ads/redexgen/X/Ub;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mk;

    invoke-direct {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Mk;-><init>([BI)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ub;->AF8(Lcom/facebook/ads/redexgen/X/Mk;)V

    .line 25766
    :cond_86
    return v5
.end method


# virtual methods
.method public final A4T(Lcom/facebook/ads/redexgen/X/Ni;)V
    .registers 3

    .line 25767
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A02:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/TE;->A4T(Lcom/facebook/ads/redexgen/X/Ni;)V

    .line 25769
    return-void
.end method

.method public final A9W()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 25770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A02:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TE;->A9W()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final AA2()Landroid/net/Uri;
    .registers 2

    .line 25771
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A02:Lcom/facebook/ads/redexgen/X/TE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/TE;->AA2()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final AHv(Lcom/facebook/ads/redexgen/X/NX;)J
    .registers 3

    .line 25772
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final close()V
    .registers 2

    .line 25773
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25774
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    const/4 v3, -0x1

    if-nez v0, :cond_28

    .line 25775
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8q;->A00()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 25776
    iget v4, p0, Lcom/facebook/ads/redexgen/X/8q;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/8q;->A05:[Ljava/lang/String;

    const-string v1, "Ogl6Bd85LgnoQ5rv529h8eZh0doTaT4v"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    .line 25777
    :cond_28
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8q;->A02:Lcom/facebook/ads/redexgen/X/TE;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/KR;->read([BII)I

    move-result v1

    .line 25778
    .local v0, "bytesRead":I
    if-eq v1, v3, :cond_3b

    .line 25779
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8q;->A00:I

    .line 25780
    :cond_3b
    return v1

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25781
    :cond_42
    return v3
.end method
