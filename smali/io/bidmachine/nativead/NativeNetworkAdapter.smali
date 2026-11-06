###### Class io.bidmachine.nativead.NativeNetworkAdapter (io.bidmachine.nativead.NativeNetworkAdapter)
.class public Lio/bidmachine/nativead/NativeNetworkAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/NativeData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/NativeNetworkAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/nativead/NativeNetworkAdapter$Companion;


# instance fields
.field public adLabelData:Lio/bidmachine/LabelData;

.field public callToAction:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public disclaimerData:Lio/bidmachine/internal/k;

.field public hasVideo:Z

.field public iconImageData:Lio/bidmachine/ImageData;

.field public isNetworkControlLoadingAssets:Z

.field public mainImageData:Lio/bidmachine/ImageData;

.field public privacySheetData:Lio/bidmachine/PrivacySheetData;

.field public rating:F

.field public title:Ljava/lang/String;

.field public videoAdm:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/nativead/NativeNetworkAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/NativeNetworkAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/nativead/NativeNetworkAdapter;->Companion:Lio/bidmachine/nativead/NativeNetworkAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->rating:F

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->isNetworkControlLoadingAssets:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public getCallToAction()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerData()Lio/bidmachine/internal/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->disclaimerData:Lio/bidmachine/internal/k;

    return-object v0
.end method

.method public getIcon()Lio/bidmachine/ImageData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->iconImageData:Lio/bidmachine/ImageData;

    return-object v0
.end method

.method public getMainImage()Lio/bidmachine/ImageData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->mainImageData:Lio/bidmachine/ImageData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdm()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoAdm:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasVideo()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->hasVideo:Z

    return v0
.end method

.method public final isNetworkControlLoadingAssets()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->isNetworkControlLoadingAssets:Z

    return v0
.end method

.method public final isValid()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_29

    .line 2
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_29

    .line 3
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public final setAdLabelData(Lio/bidmachine/LabelData;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->adLabelData:Lio/bidmachine/LabelData;

    return-object p0
.end method

.method public final setCallToAction(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->callToAction:Ljava/lang/String;

    return-object p0
.end method

.method public final setClickUrl(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->clickUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setDisclaimerData(Lio/bidmachine/internal/k;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->disclaimerData:Lio/bidmachine/internal/k;

    return-object p0
.end method

.method public final setHasVideo(Z)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->hasVideo:Z

    return-object p0
.end method

.method public final setIcon(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->iconImageData:Lio/bidmachine/ImageData;

    return-object p0
.end method

.method public final setMainImage(Lio/bidmachine/ImageData;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->mainImageData:Lio/bidmachine/ImageData;

    return-object p0
.end method

.method public final setNetworkControlLoadingAssets(Z)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->isNetworkControlLoadingAssets:Z

    return-object p0
.end method

.method public final setPrivacySheetData(Lio/bidmachine/PrivacySheetData;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->privacySheetData:Lio/bidmachine/PrivacySheetData;

    return-object p0
.end method

.method public final setRating(Ljava/lang/Float;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_9

    :cond_7
    const/high16 p1, -0x40800000    # -1.0f

    :goto_9
    iput p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->rating:F

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setVideoAdm(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoAdm:Ljava/lang/String;

    return-object p0
.end method

.method public final setVideoUrl(Ljava/lang/String;)Lio/bidmachine/nativead/NativeNetworkAdapter;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeNetworkAdapter;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public unregisterNative()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.nativead.NativeNetworkAdapter.Companion (io.bidmachine.nativead.NativeNetworkAdapter$Companion)
.class public final Lio/bidmachine/nativead/NativeNetworkAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeNetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/NativeNetworkAdapter$Companion;-><init>()V

    return-void
.end method
