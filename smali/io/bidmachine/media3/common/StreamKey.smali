###### Class io.bidmachine.media3.common.StreamKey (io.bidmachine.media3.common.StreamKey)
.class public final Lio/bidmachine/media3/common/StreamKey;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/common/StreamKey;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_GROUP_INDEX:Ljava/lang/String;

.field public static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field public static final FIELD_STREAM_INDEX:Ljava/lang/String;


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final streamIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 136
    new-instance v0, Lio/bidmachine/media3/common/StreamKey$1;

    invoke-direct {v0}, Lio/bidmachine/media3/common/StreamKey$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    .line 150
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 151
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v0, 0x2

    .line 152
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    .line 70
    iput p2, p0, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    .line 71
    iput p3, p0, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/common/StreamKey;)I
    .registers 4

    .line 112
    iget v0, p0, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    iget v1, p1, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 114
    iget v0, p0, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    iget v1, p1, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 116
    iget v0, p0, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    iget p1, p1, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    sub-int/2addr v0, p1

    :cond_13
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 39
    check-cast p1, Lio/bidmachine/media3/common/StreamKey;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/StreamKey;->compareTo(Lio/bidmachine/media3/common/StreamKey;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/StreamKey;

    if-eq v3, v2, :cond_10

    goto :goto_25

    .line 94
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/StreamKey;

    .line 95
    iget v2, p0, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    iget v3, p1, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    iget v3, p1, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    iget p1, p1, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    if-ne v2, p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 102
    iget v0, p0, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget v1, p0, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget v1, p0, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 131
    iget p2, p0, Lio/bidmachine/media3/common/StreamKey;->periodIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget p2, p0, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget p2, p0, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

###### Class io.bidmachine.media3.common.StreamKey.AnonymousClass1 (io.bidmachine.media3.common.StreamKey$1)
.class public Lio/bidmachine/media3/common/StreamKey$1;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/StreamKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/bidmachine/media3/common/StreamKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/bidmachine/media3/common/StreamKey;
    .registers 3

    .line 141
    new-instance v0, Lio/bidmachine/media3/common/StreamKey;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/StreamKey;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 137
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/StreamKey$1;->createFromParcel(Landroid/os/Parcel;)Lio/bidmachine/media3/common/StreamKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/bidmachine/media3/common/StreamKey;
    .registers 2

    .line 146
    new-array p1, p1, [Lio/bidmachine/media3/common/StreamKey;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 137
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/StreamKey$1;->newArray(I)[Lio/bidmachine/media3/common/StreamKey;

    move-result-object p1

    return-object p1
.end method
