###### Class io.bidmachine.iab.mraid.MraidOrientationProperties (io.bidmachine.iab.mraid.MraidOrientationProperties)
.class public final Lio/bidmachine/iab/mraid/MraidOrientationProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowOrientationChange:Z

.field public forceOrientation:I


# direct methods
.method public constructor <init>(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allowOrientationChange",
            "forceOrientation"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->allowOrientationChange:Z

    .line 3
    iput p2, p0, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->forceOrientation:I

    return-void
.end method

.method public static forceOrientationFromString(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-string v0, "landscape"

    const-string v1, "none"

    const-string v2, "portrait"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_16

    return p0

    :cond_16
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public forceOrientationString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->forceOrientation:I

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 9
    const-string v0, "error"

    return-object v0

    .line 10
    :cond_d
    const-string v0, "none"

    return-object v0

    .line 11
    :cond_10
    const-string v0, "landscape"

    return-object v0

    .line 12
    :cond_13
    const-string v0, "portrait"

    return-object v0
.end method

.method public obtainTargetActivityOrientation(Landroid/content/Context;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    move p1, v1

    goto :goto_11

    :cond_10
    move p1, v0

    .line 4
    :goto_11
    iget v2, p0, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->forceOrientation:I

    if-nez v2, :cond_16

    return v1

    :cond_16
    if-ne v2, v1, :cond_19

    return v0

    .line 8
    :cond_19
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->allowOrientationChange:Z

    if-eqz v0, :cond_1e

    const/4 p1, -0x1

    :cond_1e
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAIDOrientationProperties{allowOrientationChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->allowOrientationChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->forceOrientationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
