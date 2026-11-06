###### Class com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData (com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData)
.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1117
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4Hx7OvDSSY6Qn1Dlb29M9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IjalnB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VfpXP03MgioH1ypmjAoNGAx3WvRNgJFY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x0bd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZPU15yp6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jkdOWxrankEP9khq"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gTJFwo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xvbGWmtrtKgtEhgKRff6QL0k8Z6vwV14"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;)V"
        }
    .end annotation

    .line 64764
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64765
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    .line 64766
    invoke-static {p1}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 64767
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_9
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const-string v1, "KLycsjpkvsjMD5X8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_31

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x2ft
        0x48t
        0x4bt
        0x53t
        0x29t
        0x4bt
        0x50t
        0x45t
        0x4bt
        0x4at
        0x16t
        -0x4t
        0x4ft
        0x41t
        0x43t
        0x49t
        0x41t
        0x4at
        0x50t
        0x4ft
        0x19t
    .end array-data
.end method

.method public static A02(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;)Z"
        }
    .end annotation

    .line 64768
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_8

    .line 64769
    return v6

    .line 64770
    :cond_8
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v3, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 64771
    .local v2, "previousEndTimeMs":J
    const/4 v5, 0x1

    .local v0, "i":I
    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4a

    .line 64772
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v1, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_37

    .line 64773
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_42

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 64774
    :cond_37
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v3, v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 64775
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_42
    sget-object v2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A02:[Ljava/lang/String;

    const-string v1, "ZRcff976jmehsSMZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 64776
    .end local v0    # "i":I
    :cond_4a
    return v6
.end method


# virtual methods
.method public final synthetic AAE()[B
    .registers 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L3;->A01(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public final synthetic AAF()Lcom/facebook/ads/redexgen/X/VC;
    .registers 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L3;->A00(Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)Lcom/facebook/ads/redexgen/X/VC;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    .line 64777
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 64778
    if-ne p0, p1, :cond_4

    .line 64779
    const/4 v0, 0x1

    return v0

    .line 64780
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    .line 64781
    .end local v0
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 64782
    :cond_12
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;

    .line 64783
    .local v0, "that":Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 64784
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 64785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 64786
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;->A00:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 64787
    return-void
.end method

###### Class com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData.Segment (com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData$Segment)
.class public final Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# static fields
.field public static A03:[B

.field public static final A04:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1819
    invoke-static {}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/aB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aB;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A04:Ljava/util/Comparator;

    .line 1820
    new-instance v0, Lcom/facebook/ads/redexgen/X/aC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aC;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJI)V
    .registers 7

    .line 80076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80077
    cmp-long v0, p1, p3

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A07(Z)V

    .line 80078
    iput-wide p1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    .line 80079
    iput-wide p3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 80080
    iput p5, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    .line 80081
    return-void

    .line 80082
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static synthetic A00(Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;)I
    .registers 7

    .line 80083
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A01()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    iget-wide v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    .line 80084
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Vy;->A07(JJ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v4

    iget-wide v2, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    .line 80085
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Vy;->A07(JJ)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    .line 80086
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vy;->A06(II)Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    .line 80087
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vy;->A05()I

    move-result v0

    .line 80088
    return v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

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

    const/16 v0, 0x36

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A03:[B

    return-void

    :array_a
    .array-data 1
        0xbt
        0x3dt
        0x3ft
        0x35t
        0x3dt
        0x36t
        0x2ct
        0x62t
        0x78t
        0x2bt
        0x2ct
        0x39t
        0x2at
        0x2ct
        0xct
        0x31t
        0x35t
        0x3dt
        0x15t
        0x2bt
        0x65t
        0x7dt
        0x3ct
        0x74t
        0x78t
        0x3dt
        0x36t
        0x3ct
        0xct
        0x31t
        0x35t
        0x3dt
        0x15t
        0x2bt
        0x65t
        0x7dt
        0x3ct
        0x74t
        0x78t
        0x2bt
        0x28t
        0x3dt
        0x3dt
        0x3ct
        0x1ct
        0x31t
        0x2et
        0x31t
        0x2bt
        0x37t
        0x2at
        0x65t
        0x7dt
        0x3ct
    .end array-data
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 80089
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 80090
    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    .line 80091
    return v5

    .line 80092
    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    .line 80093
    .end local v2
    :cond_11
    return v2

    .line 80094
    :cond_12
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    .line 80095
    .local v2, "segment":Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2b

    iget-wide v3, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2b

    iget v1, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    iget v0, p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    if-ne v1, v0, :cond_2b

    :goto_2a
    return v5

    :cond_2b
    const/4 v5, 0x0

    goto :goto_2a
.end method

.method public final hashCode()I
    .registers 6

    .line 80096
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/A6;->A00([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 80097
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    .line 80098
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 80099
    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/N1;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 80100
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A02:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80101
    iget-wide v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80102
    iget v0, p0, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80103
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C2110aB (com.facebook.ads.redexgen.X.aB)
.class public final synthetic Lcom/facebook/ads/redexgen/X/aB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 80066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 80067
    check-cast p1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    check-cast p2, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-static {p1, p2}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;->A00(Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;)I

    move-result v0

    return v0
.end method
