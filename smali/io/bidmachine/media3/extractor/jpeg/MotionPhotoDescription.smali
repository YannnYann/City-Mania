###### Class io.bidmachine.media3.extractor.jpeg.MotionPhotoDescription (io.bidmachine.media3.extractor.jpeg.MotionPhotoDescription)
.class public final Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;
.super Ljava/lang/Object;
.source "MotionPhotoDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final photoPresentationTimestampUs:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    .line 69
    iput-object p3, p0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMotionPhotoMetadata(J)Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    .registers 24

    move-object/from16 v0, p0

    .line 81
    iget-object v1, v0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_d

    return-object v3

    .line 95
    :cond_d
    iget-object v1, v0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v4, -0x1

    move-wide/from16 v6, p1

    move-wide v9, v4

    move-wide v11, v9

    move-wide v15, v11

    move-wide/from16 v17, v15

    const/4 v8, 0x0

    :goto_1f
    if-ltz v1, :cond_57

    .line 96
    iget-object v13, v0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 97
    iget-object v14, v13, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    const-string v2, "video/mp4"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v8

    if-nez v1, :cond_3f

    .line 102
    iget-wide v13, v13, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v6, v13

    const-wide/16 v13, 0x0

    :goto_39
    move-wide/from16 v19, v13

    move-wide v13, v6

    move-wide/from16 v6, v19

    goto :goto_44

    .line 104
    :cond_3f
    iget-wide v13, v13, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long v13, v6, v13

    goto :goto_39

    :goto_44
    if-eqz v2, :cond_4f

    cmp-long v8, v6, v13

    if-eqz v8, :cond_4f

    sub-long v17, v13, v6

    move-wide v15, v6

    const/4 v8, 0x0

    goto :goto_50

    :cond_4f
    move v8, v2

    :goto_50
    if-nez v1, :cond_54

    move-wide v9, v6

    move-wide v11, v13

    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_57
    cmp-long v1, v15, v4

    if-eqz v1, :cond_70

    cmp-long v1, v17, v4

    if-eqz v1, :cond_70

    cmp-long v1, v9, v4

    if-eqz v1, :cond_70

    cmp-long v1, v11, v4

    if-nez v1, :cond_68

    goto :goto_70

    .line 123
    :cond_68
    new-instance v8, Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget-wide v13, v0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    invoke-direct/range {v8 .. v18}, Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    return-object v8

    :cond_70
    :goto_70
    return-object v3
.end method

###### Class io.bidmachine.media3.extractor.jpeg.MotionPhotoDescription.ContainerItem (io.bidmachine.media3.extractor.jpeg.MotionPhotoDescription$ContainerItem)
.class public final Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
.super Ljava/lang/Object;
.source "MotionPhotoDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerItem"
.end annotation


# instance fields
.field public final length:J

.field public final mime:Ljava/lang/String;

.field public final padding:J

.field public final semantic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->semantic:Ljava/lang/String;

    .line 50
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    .line 51
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    return-void
.end method
