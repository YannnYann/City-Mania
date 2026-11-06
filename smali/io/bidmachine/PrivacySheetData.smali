###### Class io.bidmachine.PrivacySheetData (io.bidmachine.PrivacySheetData)
.class public final Lio/bidmachine/PrivacySheetData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final labelData:Lio/bidmachine/LabelData;

.field private final privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;


# direct methods
.method public constructor <init>(Lio/bidmachine/LabelData;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 4

    const-string v0, "labelData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacySheetParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    iput-object p2, p0, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    return-void
.end method

.method public static synthetic copy$default(Lio/bidmachine/PrivacySheetData;Lio/bidmachine/LabelData;Lio/bidmachine/rendering/model/PrivacySheetParams;ILjava/lang/Object;)Lio/bidmachine/PrivacySheetData;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/PrivacySheetData;->copy(Lio/bidmachine/LabelData;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/PrivacySheetData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/bidmachine/LabelData;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    return-object v0
.end method

.method public final component2()Lio/bidmachine/rendering/model/PrivacySheetParams;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    return-object v0
.end method

.method public final copy(Lio/bidmachine/LabelData;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/PrivacySheetData;
    .registers 4

    .line 0
    const-string v0, "labelData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacySheetParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/PrivacySheetData;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/PrivacySheetData;-><init>(Lio/bidmachine/LabelData;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/PrivacySheetData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/PrivacySheetData;

    iget-object v1, p0, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    iget-object v3, p1, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    iget-object p1, p1, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getLabelData()Lio/bidmachine/LabelData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    return-object v0
.end method

.method public final getPrivacySheetParams()Lio/bidmachine/rendering/model/PrivacySheetParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    invoke-virtual {v0}, Lio/bidmachine/LabelData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivacySheetData(labelData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/PrivacySheetData;->labelData:Lio/bidmachine/LabelData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", privacySheetParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/PrivacySheetData;->privacySheetParams:Lio/bidmachine/rendering/model/PrivacySheetParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
