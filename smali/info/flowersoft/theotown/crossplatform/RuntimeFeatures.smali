###### Class info.flowersoft.theotown.crossplatform.RuntimeFeatures (info.flowersoft.theotown.crossplatform.RuntimeFeatures)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;
.super Ljava/lang/Object;
.source "RuntimeFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;
    }
.end annotation


# virtual methods
.method public abstract applyDarkTheme(Z)V
.end method

.method public abstract applyOrientation(I)V
.end method

.method public abstract canImportAndExportFolder()Z
.end method

.method public abstract closeApp()V
.end method

.method public abstract createTextEditor(Ljava/lang/String;IIII)Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;
.end method

.method public abstract downloadTPC(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract exportFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract getCommandHandlers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCornerRadius()F
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getFullscreenResolutions()[[I
.end method

.method public abstract getInsetsTRBL()[F
.end method

.method public abstract getLogicalWidth()I
.end method

.method public abstract getRemainingStorage(Ljava/io/File;)J
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract importFile(Ljava/io/File;ZLjava/lang/Runnable;)V
.end method

.method public abstract importImageFile(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract importMusicFile(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract informAboutNewImage(Ljava/io/File;)V
.end method

.method public abstract isFullscreen()Z
.end method

.method public abstract isWifiConnected()Z
.end method

.method public abstract loadHeightMap(Lcom/badlogic/gdx/files/FileHandle;I)Linfo/flowersoft/theotown/creation/HeightMap;
.end method

.method public abstract normalizeShaderCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract openURI(Ljava/lang/String;)Z
.end method

.method public abstract openURL(Ljava/lang/String;)V
.end method

.method public abstract openURLInApp(Ljava/lang/String;)V
.end method

.method public abstract prefersDarkMode()Z
.end method

.method public abstract rateGame()V
.end method

.method public abstract rateGameLight()V
.end method

.method public abstract restartAppSlowly()V
.end method

.method public abstract saveImageToGallery(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setFullscreen(ZII)V
.end method

.method public abstract shareImage(Ljava/io/File;)V
.end method

.method public abstract shareText(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showFile(Ljava/io/File;)V
.end method

.method public abstract showImage(Ljava/io/File;)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method

.method public abstract supportsFullscreen()Z
.end method

.method public abstract supportsOrientation()Z
.end method

.method public abstract supportsShareImage()Z
.end method

.method public abstract supportsShareText()Z
.end method

.method public abstract waitingForPermissions()Z
.end method

###### Class info.flowersoft.theotown.crossplatform.RuntimeFeatures.TextEditor (info.flowersoft.theotown.crossplatform.RuntimeFeatures$TextEditor)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;
.super Ljava/lang/Object;
.source "RuntimeFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextEditor"
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract markAsAutoFill(Z)V
.end method

.method public abstract setHint(Ljava/lang/String;)V
.end method

.method public abstract setPassword(Z)V
.end method

.method public abstract setShape(IIII)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method
