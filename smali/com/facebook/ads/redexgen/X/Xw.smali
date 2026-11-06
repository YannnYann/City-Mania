###### Class com.facebook.ads.redexgen.X.C2044Xw (com.facebook.ads.redexgen.X.Xw)
.class public final Lcom/facebook/ads/redexgen/X/Xw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xu;,
        Lcom/facebook/ads/redexgen/X/Xv;
    }
.end annotation


# static fields
.field public static A0C:[B


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:Z

.field public final A09:Landroid/view/WindowManager;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Xu;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Xv;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xw;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 77086
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Xw;-><init>(Landroid/content/Context;)V

    .line 77087
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 77088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77089
    const/4 v3, 0x0

    if-eqz p1, :cond_3b

    .line 77090
    const/4 v2, 0x7

    const/4 v1, 0x6

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xw;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A09:Landroid/view/WindowManager;

    .line 77091
    :goto_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_36

    .line 77092
    sget v1, Lcom/facebook/ads/redexgen/X/N1;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_24

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Xw;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xu;

    move-result-object v3

    :cond_24
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0A:Lcom/facebook/ads/redexgen/X/Xu;

    .line 77093
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xv;->A00()Lcom/facebook/ads/redexgen/X/Xv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0B:Lcom/facebook/ads/redexgen/X/Xv;

    .line 77094
    :goto_2c
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A06:J

    .line 77095
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A07:J

    .line 77096
    return-void

    .line 77097
    :cond_36
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0A:Lcom/facebook/ads/redexgen/X/Xu;

    .line 77098
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0B:Lcom/facebook/ads/redexgen/X/Xv;

    goto :goto_2c

    .line 77099
    :cond_3b
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Xw;->A09:Landroid/view/WindowManager;

    goto :goto_16
.end method

.method public static A00(JJJ)J
    .registers 11

    .line 77100
    sub-long v2, p0, p2

    div-long/2addr v2, p4

    .line 77101
    .local v0, "vsyncCount":J
    mul-long v0, p4, v2

    add-long/2addr p2, v0

    .line 77102
    .local v2, "snappedTimeNs":J
    cmp-long v0, p0, p2

    if-gtz v0, :cond_16

    .line 77103
    sub-long v3, p2, p4

    .line 77104
    .local v4, "snappedBeforeNs":J
    .local p1, "snappedAfterNs":J
    .restart local p1    # "snappedAfterNs":J
    :goto_c
    sub-long v1, p2, p0

    .line 77105
    .local p3, "snappedAfterDiff":J
    sub-long/2addr p0, v3

    .line 77106
    .local p5, "snappedBeforeDiff":J
    cmp-long v0, v1, p0

    if-gez v0, :cond_14

    :goto_13
    return-wide p2

    :cond_14
    move-wide p2, v3

    goto :goto_13

    .line 77107
    .end local v4    # "snappedBeforeNs":J
    .end local p1    # "snappedAfterNs":J
    :cond_16
    move-wide v3, p2

    .line 77108
    .restart local v4    # "snappedBeforeNs":J
    add-long/2addr p2, p4

    goto :goto_c
.end method

.method private A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xu;
    .registers 5

    .line 77109
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xw;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 77110
    .local v0, "manager":Landroid/hardware/display/DisplayManager;
    if-nez v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xu;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Xu;-><init>(Lcom/facebook/ads/redexgen/X/Xw;Landroid/hardware/display/DisplayManager;)V

    goto :goto_11
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xw;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .registers 5

    .line 77111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A09:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 77112
    .local v0, "defaultDisplay":Landroid/view/Display;
    if-eqz v0, :cond_20

    .line 77113
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    .line 77114
    .local v1, "defaultDisplayRefreshRate":D
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A06:J

    .line 77115
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Xw;->A06:J

    const-wide/16 v0, 0x50

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Xw;->A07:J

    .line 77116
    .end local v1    # "defaultDisplayRefreshRate":D
    :cond_20
    return-void
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A0C:[B

    return-void

    :array_a
    .array-data 1
        0x5dt
        0x50t
        0x4at
        0x49t
        0x55t
        0x58t
        0x40t
        0x70t
        0x6et
        0x69t
        0x63t
        0x68t
        0x70t
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Xw;)V
    .registers 1

    .line 77117
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xw;->A03()V

    return-void
.end method

.method private A06(JJ)Z
    .registers 10

    .line 77118
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A04:J

    sub-long/2addr p1, v0

    .line 77119
    .local v0, "elapsedFrameTimeNs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A05:J

    sub-long/2addr p3, v0

    .line 77120
    .local v2, "elapsedReleaseTimeNs":J
    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x1312d00

    cmp-long v0, v3, v1

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final A07(JJ)J
    .registers 23

    .line 77121
    move-object/from16 v12, p0

    const-wide/16 v6, 0x3e8

    move-wide/from16 v10, p1

    mul-long/2addr v6, v10

    .line 77122
    .local v5, "framePresentationTimeNs":J
    move-wide v14, v6

    .line 77123
    .local v7, "adjustedFrameTimeNs":J
    move-wide/from16 v8, p3

    move-wide v2, v8

    .line 77124
    .local v9, "adjustedReleaseTimeNs":J
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A08:Z

    if-eqz v0, :cond_3d

    .line 77125
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A02:J

    cmp-long v4, v10, v0

    if-eqz v4, :cond_20

    .line 77126
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A01:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A01:J

    .line 77127
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A03:J

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A00:J

    .line 77128
    :cond_20
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A01:J

    const-wide/16 v16, 0x6

    const/4 v13, 0x0

    cmp-long v4, v0, v16

    if-ltz v4, :cond_68

    .line 77129
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A04:J

    sub-long v16, v6, v0

    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A01:J

    div-long v16, v16, v0

    .line 77130
    .local v11, "averageFrameDurationNs":J
    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/Xw;->A00:J

    add-long v4, v4, v16

    .line 77131
    .local v13, "candidateAdjustedFrameTimeNs":J
    invoke-direct {v12, v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/Xw;->A06(JJ)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 77132
    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/Xw;->A08:Z

    .line 77133
    .end local v9    # "adjustedReleaseTimeNs":J
    .restart local v16
    :cond_3d
    :goto_3d
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A08:Z

    if-nez v0, :cond_4c

    .line 77134
    iput-wide v6, v12, Lcom/facebook/ads/redexgen/X/Xw;->A04:J

    .line 77135
    iput-wide v8, v12, Lcom/facebook/ads/redexgen/X/Xw;->A05:J

    .line 77136
    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A01:J

    .line 77137
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A08:Z

    .line 77138
    :cond_4c
    iput-wide v10, v12, Lcom/facebook/ads/redexgen/X/Xw;->A02:J

    .line 77139
    iput-wide v14, v12, Lcom/facebook/ads/redexgen/X/Xw;->A03:J

    .line 77140
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A0B:Lcom/facebook/ads/redexgen/X/Xv;

    if-eqz v0, :cond_5f

    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/Xw;->A06:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_71

    .line 77141
    .end local v9
    .end local p2
    :cond_5f
    return-wide v2

    .line 77142
    .end local v9
    .local v16, "adjustedReleaseTimeNs":J
    :cond_60
    iget-wide v2, v12, Lcom/facebook/ads/redexgen/X/Xw;->A05:J

    add-long/2addr v2, v4

    .end local v7    # "adjustedFrameTimeNs":J
    .local p0, "adjustedFrameTimeNs":J
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A04:J

    sub-long/2addr v2, v0

    move-wide v14, v4

    goto :goto_3d

    .line 77143
    .end local v9
    .restart local v16    # "adjustedReleaseTimeNs":J
    :cond_68
    invoke-direct {v12, v6, v7, v8, v9}, Lcom/facebook/ads/redexgen/X/Xw;->A06(JJ)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 77144
    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/Xw;->A08:Z

    goto :goto_3d

    .line 77145
    :cond_71
    iget-object v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A0B:Lcom/facebook/ads/redexgen/X/Xv;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/Xv;->A04:J

    .line 77146
    .local v13, "sampledVsyncTimeNs":J
    cmp-long v0, v4, v6

    if-nez v0, :cond_7a

    .line 77147
    return-wide v2

    .line 77148
    :cond_7a
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A06:J

    .end local v13    # "sampledVsyncTimeNs":J
    .local p2, "sampledVsyncTimeNs":J
    move-wide v10, v0

    move-wide v6, v2

    move-wide v8, v4

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Xw;->A00(JJJ)J

    move-result-wide v2

    .line 77149
    .local v9, "snappedTimeNs":J
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/Xw;->A07:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final A08()V
    .registers 2

    .line 77150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_12

    .line 77151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0A:Lcom/facebook/ads/redexgen/X/Xu;

    if-eqz v0, :cond_d

    .line 77152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0A:Lcom/facebook/ads/redexgen/X/Xu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xu;->A01()V

    .line 77153
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0B:Lcom/facebook/ads/redexgen/X/Xv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xv;->A07()V

    .line 77154
    :cond_12
    return-void
.end method

.method public final A09()V
    .registers 2

    .line 77155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A08:Z

    .line 77156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_18

    .line 77157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0B:Lcom/facebook/ads/redexgen/X/Xv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xv;->A06()V

    .line 77158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0A:Lcom/facebook/ads/redexgen/X/Xu;

    if-eqz v0, :cond_15

    .line 77159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A0A:Lcom/facebook/ads/redexgen/X/Xu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xu;->A00()V

    .line 77160
    :cond_15
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xw;->A03()V

    .line 77161
    :cond_18
    return-void
.end method
