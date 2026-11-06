###### Class io.bidmachine.media3.container.Mp4Box (io.bidmachine.media3.container.Mp4Box)
.class public abstract Lio/bidmachine/media3/container/Mp4Box;
.super Ljava/lang/Object;
.source "Mp4Box.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/container/Mp4Box$ContainerBox;,
        Lio/bidmachine/media3/container/Mp4Box$LeafBox;
    }
.end annotation


# instance fields
.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput p1, p0, Lio/bidmachine/media3/container/Mp4Box;->type:I

    return-void
.end method

.method public synthetic constructor <init>(ILio/bidmachine/media3/container/Mp4Box$1;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lio/bidmachine/media3/container/Mp4Box;-><init>(I)V

    return-void
.end method

.method public static getBoxTypeString(I)Ljava/lang/String;
    .registers 3

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 476
    iget v0, p0, Lio/bidmachine/media3/container/Mp4Box;->type:I

    invoke-static {v0}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.container.Mp4Box.AnonymousClass1 (io.bidmachine.media3.container.Mp4Box$1)
.class public synthetic Lio/bidmachine/media3/container/Mp4Box$1;
.super Ljava/lang/Object;
.source "Mp4Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/Mp4Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.container.Mp4Box.ContainerBox (io.bidmachine.media3.container.Mp4Box$ContainerBox)
.class public final Lio/bidmachine/media3/container/Mp4Box$ContainerBox;
.super Lio/bidmachine/media3/container/Mp4Box;
.source "Mp4Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/Mp4Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerBox"
.end annotation


# instance fields
.field public final containerChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field public final endPosition:J

.field public final leafChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/Mp4Box$LeafBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .registers 5

    const/4 v0, 0x0

    .line 507
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/container/Mp4Box;-><init>(ILio/bidmachine/media3/container/Mp4Box$1;)V

    .line 508
    iput-wide p2, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->endPosition:J

    .line 509
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    .line 510
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V
    .registers 3

    .line 528
    iget-object v0, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Lio/bidmachine/media3/container/Mp4Box$LeafBox;)V
    .registers 3

    .line 519
    iget-object v0, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;
    .registers 6

    .line 563
    iget-object v0, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 565
    iget-object v2, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    .line 566
    iget v3, v2, Lio/bidmachine/media3/container/Mp4Box;->type:I

    if-ne v3, p1, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;
    .registers 6

    .line 542
    iget-object v0, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    .line 544
    iget-object v2, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 545
    iget v3, v2, Lio/bidmachine/media3/container/Mp4Box;->type:I

    if-ne v3, p1, :cond_16

    return-object v2

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lio/bidmachine/media3/container/Mp4Box;->type:I

    invoke-static {v1}, Lio/bidmachine/media3/container/Mp4Box;->getBoxTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    .line 577
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    .line 579
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.container.Mp4Box.LeafBox (io.bidmachine.media3.container.Mp4Box$LeafBox)
.class public final Lio/bidmachine/media3/container/Mp4Box$LeafBox;
.super Lio/bidmachine/media3/container/Mp4Box;
.source "Mp4Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/Mp4Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeafBox"
.end annotation


# instance fields
.field public final data:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/container/Mp4Box;-><init>(ILio/bidmachine/media3/container/Mp4Box$1;)V

    .line 491
    iput-object p2, p0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method
