###### Class info.flowersoft.theotown.components.traffic.ParcelPriorityQueue (info.flowersoft.theotown.components.traffic.ParcelPriorityQueue)
.class public final Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "ParcelPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue<",
        "Linfo/flowersoft/theotown/city/Parcel;",
        ">;"
    }
.end annotation


# static fields
.field public static final parcelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Linfo/flowersoft/theotown/city/Parcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final lStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/Parcel;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Linfo/flowersoft/theotown/city/Parcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$LaBU3LMHISRbVIZ5EQW48fVuyM8(Linfo/flowersoft/theotown/city/Parcel;Linfo/flowersoft/theotown/city/Parcel;)I
    .registers 2

    .line 21
    iget p0, p0, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    iget p1, p1, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->parcelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 28
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0x10

    sget-object v2, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->parcelComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linfo/flowersoft/theotown/city/Parcel;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parcel priority queue cannot iterate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public offer(Linfo/flowersoft/theotown/city/Parcel;)Z
    .registers 6

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    iget v0, p1, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/Parcel;

    iget v2, v2, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    if-gt v0, v2, :cond_1d

    goto :goto_23

    .line 37
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_28

    .line 35
    :cond_23
    :goto_23
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    return v1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    check-cast p1, Linfo/flowersoft/theotown/city/Parcel;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->offer(Linfo/flowersoft/theotown/city/Parcel;)Z

    move-result p1

    return p1
.end method

.method public peek()Linfo/flowersoft/theotown/city/Parcel;
    .registers 5

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/Parcel;

    .line 62
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 63
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/Parcel;

    .line 64
    iget v2, v1, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    iget v3, v0, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    if-ge v2, v3, :cond_2d

    return-object v1

    :cond_2d
    return-object v0

    .line 70
    :cond_2e
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/Parcel;

    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->peek()Linfo/flowersoft/theotown/city/Parcel;

    move-result-object v0

    return-object v0
.end method

.method public poll()Linfo/flowersoft/theotown/city/Parcel;
    .registers 3

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/Parcel;

    .line 46
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 47
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/Parcel;

    .line 48
    iget v1, v1, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    iget v0, v0, Linfo/flowersoft/theotown/city/Parcel;->distance:I

    if-ge v1, v0, :cond_35

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/Parcel;

    return-object v0

    .line 52
    :cond_35
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/Parcel;

    return-object v0

    .line 54
    :cond_44
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/Parcel;

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->poll()Linfo/flowersoft/theotown/city/Parcel;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->lStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->q:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class info.flowersoft.theotown.components.traffic.ParcelPriorityQueue$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.traffic.ParcelPriorityQueue$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/city/Parcel;

    check-cast p2, Linfo/flowersoft/theotown/city/Parcel;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/components/traffic/ParcelPriorityQueue;->$r8$lambda$LaBU3LMHISRbVIZ5EQW48fVuyM8(Linfo/flowersoft/theotown/city/Parcel;Linfo/flowersoft/theotown/city/Parcel;)I

    move-result p1

    return p1
.end method
