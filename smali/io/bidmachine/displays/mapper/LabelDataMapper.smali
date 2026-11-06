###### Class io.bidmachine.displays.mapper.LabelDataMapper (io.bidmachine.displays.mapper.LabelDataMapper)
.class public final Lio/bidmachine/displays/mapper/LabelDataMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final positionDataMapper:Lio/bidmachine/displays/mapper/PositionDataMapper;


# direct methods
.method public constructor <init>(Lio/bidmachine/displays/mapper/PositionDataMapper;)V
    .registers 3

    const-string v0, "positionDataMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/mapper/LabelDataMapper;->positionDataMapper:Lio/bidmachine/displays/mapper/PositionDataMapper;

    return-void
.end method


# virtual methods
.method public final map(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;)Lio/bidmachine/LabelData;
    .registers 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_6
    iget-object v1, p0, Lio/bidmachine/displays/mapper/LabelDataMapper;->positionDataMapper:Lio/bidmachine/displays/mapper/PositionDataMapper;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;->getPos()Lcom/explorestack/protobuf/adcom/NativeAssetPosition;

    move-result-object v2

    const-string v3, "data.pos"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/bidmachine/displays/mapper/PositionDataMapper;->map(Lcom/explorestack/protobuf/adcom/NativeAssetPosition;)Lio/bidmachine/PositionData;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_4f

    .line 2
    :cond_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data.content"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0}, Lio/bidmachine/util/UtilsKt;->decodeBase64$default([BIILjava/lang/Object;)[B

    move-result-object v2

    if-nez v2, :cond_35

    goto :goto_4f

    .line 3
    :cond_35
    array-length v3, v2

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Lio/bidmachine/LabelData;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;->getW()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;->getH()I

    move-result p1

    int-to-float p1, p1

    const-string v5, "image"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1, v2, v1}, Lio/bidmachine/LabelData;-><init>(FFLandroid/graphics/Bitmap;Lio/bidmachine/PositionData;)V
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_4f

    return-object v3

    :catchall_4f
    :goto_4f
    return-object v0
.end method
