###### Class io.bidmachine.displays.mapper.PrivacySheetDataMapper (io.bidmachine.displays.mapper.PrivacySheetDataMapper)
.class public final Lio/bidmachine/displays/mapper/PrivacySheetDataMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final labelDataMapper:Lio/bidmachine/displays/mapper/LabelDataMapper;


# direct methods
.method public constructor <init>(Lio/bidmachine/displays/mapper/LabelDataMapper;)V
    .registers 3

    const-string v0, "labelDataMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/mapper/PrivacySheetDataMapper;->labelDataMapper:Lio/bidmachine/displays/mapper/LabelDataMapper;

    return-void
.end method


# virtual methods
.method public final map(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lio/bidmachine/PrivacySheetData;
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data.data.value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/rendering/utils/PrivacySheetParamsParser;->parseJson(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_31

    .line 2
    :cond_19
    iget-object v1, p0, Lio/bidmachine/displays/mapper/PrivacySheetDataMapper;->labelDataMapper:Lio/bidmachine/displays/mapper/LabelDataMapper;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLabel()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;

    move-result-object p1

    const-string v2, "data.label"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lio/bidmachine/displays/mapper/LabelDataMapper;->map(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;)Lio/bidmachine/LabelData;

    move-result-object p1

    if-nez p1, :cond_2b

    goto :goto_31

    .line 3
    :cond_2b
    new-instance v1, Lio/bidmachine/PrivacySheetData;

    invoke-direct {v1, p1, v0}, Lio/bidmachine/PrivacySheetData;-><init>(Lio/bidmachine/LabelData;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-object v1

    :catchall_31
    :goto_31
    const/4 p1, 0x0

    return-object p1
.end method
