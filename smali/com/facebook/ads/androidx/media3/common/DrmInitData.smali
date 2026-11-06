###### Class com.facebook.ads.androidx.media3.common.DrmInitData (com.facebook.ads.androidx.media3.common.DrmInitData)
.class public final Lcom/facebook/ads/androidx/media3/common/DrmInitData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 791
    new-instance v0, Lcom/facebook/ads/redexgen/X/KT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KT;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 51052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51053
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    .line 51054
    sget-object v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 51055
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    array-length v0, v0

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01:I

    .line 51056
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V
    .registers 5

    .line 51057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51058
    iput-object p1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    .line 51059
    if-eqz p2, :cond_d

    .line 51060
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 51061
    :cond_d
    iput-object p3, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 51062
    array-length v0, p3

    iput v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01:I

    .line 51063
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 51064
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V
    .registers 4

    .line 51065
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    .line 51066
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    .line 51067
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;>;"
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    .line 51068
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V
    .registers 3

    .line 51069
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    .line 51070
    return-void
.end method

.method private final A00(Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)I
    .registers 5

    .line 51071
    sget-object v1, Lcom/facebook/ads/redexgen/X/KN;->A03:Ljava/util/UUID;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 51072
    sget-object v1, Lcom/facebook/ads/redexgen/X/KN;->A03:Ljava/util/UUID;

    iget-object v0, p2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 51073
    :goto_15
    return v0

    .line 51074
    :cond_16
    const/4 v0, 0x1

    goto :goto_15

    .line 51075
    :cond_18
    iget-object v1, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    iget-object v0, p2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    goto :goto_15
.end method


# virtual methods
.method public final A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .registers 5

    .line 51076
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/N1;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51077
    return-object p0

    .line 51078
    :cond_9
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    invoke-direct {v0, p1, v2, v1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)V

    return-object v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 51079
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    check-cast p2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00(Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;)I

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    .line 51080
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 51081
    const/4 v3, 0x1

    if-ne p0, p1, :cond_4

    .line 51082
    return v3

    .line 51083
    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    .line 51084
    .end local v2
    :cond_11
    return v2

    .line 51085
    :cond_12
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    .line 51086
    .local v2, "other":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 51087
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 51088
    :goto_28
    return v3

    .line 51089
    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public final hashCode()I
    .registers 3

    .line 51090
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00:I

    if-nez v0, :cond_14

    .line 51091
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 51092
    .local v0, "result":I
    :goto_9
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 51093
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00:I

    .line 51094
    .end local v1    # "result":I
    :cond_14
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A00:I

    return v0

    .line 51095
    :cond_17
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 51096
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51097
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A03:[Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 51098
    return-void
.end method

###### Class com.facebook.ads.androidx.media3.common.DrmInitData.SchemeData (com.facebook.ads.androidx.media3.common.DrmInitData$SchemeData)
.class public final Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/common/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/util/UUID;

.field public final A04:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 790
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oAeTEtAlyOup82kPMjCYy1oN1eNrefs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QGGjAQe4Z8olu0cK5dOrsz8HTXnFZt8z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "u7yWEKrQ4besBW1akJBVvOd3m0RM11Y2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mody2ULE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jJZkWtj0BLVOZjPweF7bXhvdfUcsBGoO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RBKqD8N9vp5NXHJGFGOpqbqufiZtAmHe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "57g0LXZV4yahChJV2Cc4Y1iuA02OcqCN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qSKdrSyp7RZs"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A05:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KU;-><init>()V

    sput-object v0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 51013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51014
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    .line 51015
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    .line 51016
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 51017
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    .line 51018
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    .line 51019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51020
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    .line 51021
    iput-object p2, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    .line 51022
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 51023
    iput-object p4, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    .line 51024
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 5

    .line 51025
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 51026
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 51027
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    .line 51028
    instance-of v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    const/4 v4, 0x0

    if-nez v0, :cond_6

    .line 51029
    return v4

    .line 51030
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    .line 51031
    return v0

    .line 51032
    :cond_a
    check-cast p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;

    .line 51033
    .local v2, "other":Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;
    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    .line 51034
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4a

    if-eq v1, v0, :cond_33

    :goto_2d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_33
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A05:[Ljava/lang/String;

    const-string v1, "nwzcIeoHX5G1x91stdhKFsj670J8g56s"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bs6fqAatAEid7ZT4S3XpFwQ770ggyBjp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_6d

    iget-object v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    .line 51035
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v3, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    sget-object v1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_5d

    goto :goto_2d

    :cond_5d
    sget-object v2, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A05:[Ljava/lang/String;

    const-string v1, "kP6BuVeT4sNageJ64kijP1V3zOkf5MC7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    .line 51036
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v4, 0x1

    .line 51037
    :cond_6d
    return v4
.end method

.method public final hashCode()I
    .registers 3

    .line 51038
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A00:I

    if-nez v0, :cond_26

    .line 51039
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 51040
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    :goto_11
    add-int/2addr v1, v0

    .line 51041
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 51042
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 51043
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A00:I

    .line 51044
    .end local v1    # "result":I
    :cond_26
    iget v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A00:I

    return v0

    .line 51045
    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_11
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 51046
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51047
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A03:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51048
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51049
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51050
    iget-object v0, p0, Lcom/facebook/ads/androidx/media3/common/DrmInitData$SchemeData;->A04:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 51051
    return-void
.end method
