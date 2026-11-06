###### Class io.bidmachine.media3.common.DrmInitData (io.bidmachine.media3.common.DrmInitData)
.class public final Lio/bidmachine/media3/common/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hashCode:I

.field public final schemeDataCount:I

.field public final schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

.field public final schemeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 232
    new-instance v0, Lio/bidmachine/media3/common/DrmInitData$1;

    invoke-direct {v0}, Lio/bidmachine/media3/common/DrmInitData$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/DrmInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 142
    sget-object v0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    iput-object p1, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 143
    array-length p1, p1

    iput p1, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDataCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    new-array v1, v0, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-direct {p0, p1, v0, p2}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Z[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V
    .registers 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 131
    invoke-virtual {p3}, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 133
    :cond_e
    iput-object p3, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 134
    array-length p1, p3

    iput p1, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDataCount:I

    .line 137
    invoke-static {p3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V
    .registers 4

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, p1, v0, p2}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    new-array v1, v0, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    return-void
.end method

.method public varargs constructor <init>([Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V
    .registers 3

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    return-void
.end method

.method public static containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/UUID;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_17

    .line 251
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    iget-object v2, v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return v0
.end method

.method public static createSessionCreationData(Lio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/DrmInitData;
    .registers 10

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_1f

    .line 63
    iget-object v3, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    array-length v4, p0

    move v5, v1

    :goto_f
    if-ge v5, v4, :cond_20

    aget-object v6, p0, v5

    .line 65
    invoke-virtual {v6}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 66
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1f
    move-object v3, v2

    :cond_20
    if-eqz p1, :cond_45

    if-nez v3, :cond_26

    .line 73
    iget-object v3, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 75
    :cond_26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 76
    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    array-length v4, p1

    :goto_2d
    if-ge v1, v4, :cond_45

    aget-object v5, p1, v1

    .line 77
    invoke-virtual {v5}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, v5, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-static {v0, p0, v6}, Lio/bidmachine/media3/common/DrmInitData;->containsSchemeDataWithUuid(Ljava/util/ArrayList;ILjava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 83
    :cond_45
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4c

    return-object v2

    :cond_4c
    new-instance p0, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {p0, v3, v0}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public compare(Lio/bidmachine/media3/common/DrmInitData$SchemeData;Lio/bidmachine/media3/common/DrmInitData$SchemeData;)I
    .registers 5

    .line 214
    sget-object v0, Lio/bidmachine/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 215
    iget-object p1, p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    const/4 p1, 0x1

    return p1

    .line 216
    :cond_16
    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object p2, p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 35
    check-cast p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    check-cast p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/common/DrmInitData;->compare(Lio/bidmachine/media3/common/DrmInitData$SchemeData;Lio/bidmachine/media3/common/DrmInitData$SchemeData;)I

    move-result p1

    return p1
.end method

.method public copyWithSchemeType(Ljava/lang/String;)Lio/bidmachine/media3/common/DrmInitData;
    .registers 5

    .line 164
    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 167
    :cond_9
    new-instance v0, Lio/bidmachine/media3/common/DrmInitData;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-direct {v0, p1, v1, v2}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    return-object v0
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

    if-eqz p1, :cond_27

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/DrmInitData;

    if-eq v3, v2, :cond_10

    goto :goto_27

    .line 207
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/DrmInitData;

    .line 208
    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 209
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public get(I)Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    .registers 3

    .line 153
    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 191
    iget v0, p0, Lio/bidmachine/media3/common/DrmInitData;->hashCode:I

    if-nez v0, :cond_19

    .line 192
    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    .line 193
    iget-object v1, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    iput v0, p0, Lio/bidmachine/media3/common/DrmInitData;->hashCode:I

    .line 196
    :cond_19
    iget v0, p0, Lio/bidmachine/media3/common/DrmInitData;->hashCode:I

    return v0
.end method

.method public merge(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/DrmInitData;
    .registers 4

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v1, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 182
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 179
    :goto_12
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 183
    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    iget-object v0, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    .line 184
    :goto_1c
    iget-object v1, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 185
    invoke-static {v1, p1}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 186
    new-instance v1, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 228
    iget-object p2, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDatas:[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method

###### Class io.bidmachine.media3.common.DrmInitData.AnonymousClass1 (io.bidmachine.media3.common.DrmInitData$1)
.class public Lio/bidmachine/media3/common/DrmInitData$1;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/bidmachine/media3/common/DrmInitData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/bidmachine/media3/common/DrmInitData;
    .registers 3

    .line 237
    new-instance v0, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 233
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/DrmInitData$1;->createFromParcel(Landroid/os/Parcel;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/bidmachine/media3/common/DrmInitData;
    .registers 2

    .line 242
    new-array p1, p1, [Lio/bidmachine/media3/common/DrmInitData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 233
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/DrmInitData$1;->newArray(I)[Lio/bidmachine/media3/common/DrmInitData;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.common.DrmInitData.SchemeData (io.bidmachine.media3.common.DrmInitData$SchemeData)
.class public final Lio/bidmachine/media3/common/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field public hashCode:I

.field public final licenseServerUrl:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 390
    new-instance v0, Lio/bidmachine/media3/common/DrmInitData$SchemeData$1;

    invoke-direct {v0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 299
    iput-object p2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 300
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 301
    iput-object p4, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 5

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, p1, v0, p2, p3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public canReplace(Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Z
    .registers 3

    .line 328
    invoke-virtual {p0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hasData()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public copyWithData([B)Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    .registers 6

    .line 344
    new-instance v0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    iget-object v1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 349
    instance-of v0, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 355
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 356
    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 357
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 358
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    .line 359
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_35

    return v0

    :cond_35
    return v1
.end method

.method public hasData()Z
    .registers 2

    .line 333
    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 364
    iget v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hashCode:I

    if-nez v0, :cond_2b

    .line 365
    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 366
    iget-object v1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    iget-object v1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget-object v1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    iput v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hashCode:I

    .line 371
    :cond_2b
    iget v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->hashCode:I

    return v0
.end method

.method public matches(Ljava/util/UUID;)Z
    .registers 4

    .line 318
    sget-object v0, Lio/bidmachine/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 383
    iget-object p2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 384
    iget-object p2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 385
    iget-object p2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object p2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

###### Class io.bidmachine.media3.common.DrmInitData.SchemeData.AnonymousClass1 (io.bidmachine.media3.common.DrmInitData$SchemeData$1)
.class public Lio/bidmachine/media3/common/DrmInitData$SchemeData$1;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/DrmInitData$SchemeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    .registers 3

    .line 395
    new-instance v0, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 391
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData$1;->createFromParcel(Landroid/os/Parcel;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    .registers 2

    .line 400
    new-array p1, p1, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 391
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData$1;->newArray(I)[Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object p1

    return-object p1
.end method
