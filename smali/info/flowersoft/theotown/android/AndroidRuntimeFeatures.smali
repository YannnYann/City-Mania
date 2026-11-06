###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures (info.flowersoft.theotown.android.AndroidRuntimeFeatures)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;


# instance fields
.field public final application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field public gotPermissions:Z

.field public tpc:Z

.field public final trbl:[F


# direct methods
.method public static synthetic $r8$lambda$1W05kU_2wWN0vVo7TlIUDNjf_Bg(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/lang/String;)V
    .registers 3

    .line 281
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const/4 v0, 0x1

    .line 281
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$K2-2rGTYapNZCvQpeQ1DTsnty5k(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 664
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 665
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    .line 666
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-interface {p1, p0, p2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 667
    new-instance p1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1d
    return-void
.end method

.method public static synthetic $r8$lambda$eKy_LZLVm_TQ0C8pKQtALHgWOCU(Lcom/google/android/gms/tasks/Task;)V
    .registers 1

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 93
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    .line 96
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;
    .registers 1

    .line 88
    iget-object p0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Ljava/lang/String;
    .registers 1

    .line 88
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getSig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 88
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->importDocumentFile(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/Runnable;)V
    .registers 4

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->copyFolderToUri(Lcom/badlogic/gdx/files/FileHandle;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Landroid/net/Uri;)V
    .registers 3

    .line 88
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->copyFileToUri(Lcom/badlogic/gdx/files/FileHandle;Landroid/net/Uri;)V

    return-void
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 906
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 907
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 908
    :cond_c
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0x2e

    .line 909
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_20
    if-eqz v0, :cond_2b

    .line 914
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    if-nez p0, :cond_30

    .line 917
    const-string p0, "*/*"

    :cond_30
    return-object p0
.end method


# virtual methods
.method public applyDarkTheme(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public applyOrientation(I)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 p1, 0x2

    goto :goto_c

    :cond_7
    const/16 p1, 0xc

    goto :goto_c

    :cond_a
    const/16 p1, 0xb

    .line 118
    :goto_c
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 119
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->prepareTPC()V

    return-void
.end method

.method public canImportAndExportFolder()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public closeApp()V
    .registers 3

    .line 286
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public final copyFileToUri(Lcom/badlogic/gdx/files/FileHandle;Landroid/net/Uri;)V
    .registers 4

    .line 892
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 893
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 895
    invoke-static {v0, p2}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 897
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 898
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 900
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final copyFolderToUri(Lcom/badlogic/gdx/files/FileHandle;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/Runnable;)V
    .registers 9

    .line 868
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    if-eqz p1, :cond_43

    if-eqz p2, :cond_43

    .line 871
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_43

    aget-object v2, p1, v1

    .line 872
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 873
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 875
    invoke-virtual {p0, v2, v3, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->copyFolderToUri(Lcom/badlogic/gdx/files/FileHandle;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/Runnable;)V

    goto :goto_40

    .line 878
    :cond_22
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 880
    invoke-virtual {p2, v4, v3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 882
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->copyFileToUri(Lcom/badlogic/gdx/files/FileHandle;Landroid/net/Uri;)V

    if-eqz p3, :cond_40

    .line 883
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_43
    return-void
.end method

.method public createTextEditor(Ljava/lang/String;IIII)Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;
    .registers 13

    .line 399
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v3, p5

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public downloadTPC(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 577
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getTpc()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public exportFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 7

    if-nez p2, :cond_6

    .line 765
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object p2

    .line 768
    :cond_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    const-string v1, "android.intent.extra.TITLE"

    if-eqz v0, :cond_31

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string p2, "Select target directory"

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 773
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const v1, 0x504e5

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 775
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;

    invoke-direct {v0, p0, p1, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    return-void

    .line 788
    :cond_31
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string p2, "Select target"

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 793
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const v1, 0x504e6

    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 795
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;

    invoke-direct {v0, p0, p1, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    return-void
.end method

.method public getCommandHandlers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCornerRadius()F
    .registers 5

    .line 164
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->edgeRadius:I

    if-ltz v0, :cond_6

    int-to-float v0, v0

    return v0

    .line 166
    :cond_6
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Mi MIX 3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3a

    .line 172
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getView()Landroid/view/View;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_23
    const/4 v3, 0x4

    if-ge v1, v3, :cond_38

    const/4 v3, 0x3

    .line 176
    invoke-static {v0, v3}, Lads_mobile_sdk/mb$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;I)Landroid/view/RoundedCorner;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 178
    invoke-static {v3}, Lads_mobile_sdk/mb$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/RoundedCorner;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_38
    int-to-float v0, v2

    return v0

    :cond_3a
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_41

    const/high16 v0, 0x41f00000    # 30.0f

    return v0

    :cond_41
    const/4 v0, 0x0

    return v0

    :cond_43
    const/high16 v0, 0x42b40000    # 90.0f

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 4

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullscreenResolutions()[[I
    .registers 2

    const/4 v0, 0x0

    .line 296
    new-array v0, v0, [[I

    return-object v0
.end method

.method public getInsetsTRBL()[F
    .registers 9

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v1, :cond_76

    .line 125
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getView()Landroid/view/View;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Impl28$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 129
    iget-object v6, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    invoke-static {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/DisplayCutout;)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v5

    .line 130
    iget-object v6, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    invoke-static {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout;)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v4

    .line 131
    iget-object v6, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    invoke-static {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/DisplayCutout;)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v3

    .line 132
    iget-object v6, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    invoke-static {v1}, Lcom/badlogic/gdx/backends/android/AndroidGraphics$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/DisplayCutout;)I

    move-result v1

    int-to-float v1, v1

    aput v1, v6, v2

    .line 135
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getCornerRadius()F

    move-result v1

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v6, v0, :cond_5f

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    aget v3, v0, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v0, v4

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    aget v3, v0, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v2

    goto :goto_73

    .line 142
    :cond_5f
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    aget v2, v0, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v5

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    aget v2, v0, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 146
    :goto_73
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    return-object v0

    .line 150
    :cond_76
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getCornerRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v6, v0, v1

    if-lez v6, :cond_8d

    .line 152
    iget-object v6, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    aput v1, v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    .line 153
    aput v0, v6, v4

    .line 154
    aput v1, v6, v3

    .line 155
    aput v0, v6, v2

    goto :goto_92

    .line 157
    :cond_8d
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 159
    :goto_92
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->trbl:[F

    return-object v0
.end method

.method public getLogicalWidth()I
    .registers 2

    .line 970
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    return v0
.end method

.method public getRemainingStorage(Ljava/io/File;)J
    .registers 4

    .line 572
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSig()Ljava/lang/String;
    .registers 9

    .line 609
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_48

    .line 623
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 625
    :goto_29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :catch_40
    move-exception v0

    goto/16 :goto_dd

    .line 626
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :cond_48
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "classes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_52} :catch_40

    const-string v4, " - "

    if-eqz v3, :cond_80

    :try_start_56
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".dex"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 616
    :cond_80
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "META-INF/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".SF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a4

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 617
    :cond_a4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 618
    invoke-static {v0, v3}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Hashing;->md5([B)[B

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_db} :catch_40

    goto/16 :goto_1a

    .line 628
    :goto_dd
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 960
    :try_start_1
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_2d

    .line 961
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    goto :goto_2d

    .line 962
    :cond_1c
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    return-object v2

    :catch_2d
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public final getTpc()Ljava/lang/String;
    .registers 7

    .line 635
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "Z2V0UGFja2FnZUNvZGVQYXRo"

    .line 636
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 635
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-array v3, v2, [Ljava/lang/Object;

    .line 636
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    :cond_3d
    :goto_3d
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_72

    .line 647
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    :goto_4b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 650
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6a

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :catch_68
    move-exception v0

    goto :goto_80

    :cond_6a
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 653
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 642
    :cond_72
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 643
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_68

    goto :goto_3d

    .line 655
    :goto_80
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .registers 2

    .line 192
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final importDocumentFile(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 737
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_4d

    .line 739
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 741
    :try_start_11
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 742
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 743
    invoke-static {p1, v2}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_27} :catch_28

    return-object v2

    :catch_28
    move-exception p1

    .line 746
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4d

    .line 748
    :cond_2d
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 749
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 751
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 753
    array-length p2, p1

    const/4 v1, 0x0

    :goto_43
    if-ge v1, p2, :cond_4d

    aget-object v3, p1, v1

    .line 754
    invoke-virtual {p0, v3, v2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->importDocumentFile(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_4d
    :goto_4d
    return-object v0
.end method

.method public importFile(Ljava/io/File;ZLjava/lang/Runnable;)V
    .registers 7

    if-eqz p2, :cond_a

    .line 695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_21

    .line 697
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_21
    if-eqz p2, :cond_26

    .line 703
    const-string v1, "Choose a folder"

    goto :goto_28

    :cond_26
    const-string v1, "Choose a file"

    :goto_28
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 705
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const v2, 0x504e4

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 707
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;

    invoke-direct {v1, p0, p1, p2, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/io/File;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    return-void
.end method

.method public importImageFile(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v1, "Choose an image"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 818
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const v2, 0x504e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 820
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    return-void
.end method

.method public importMusicFile(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 841
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v1, "Choose a music file"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 846
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const v2, 0x504ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 848
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    return-void
.end method

.method public informAboutNewImage(Ljava/io/File;)V
    .registers 4

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public isFullscreen()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiConnected()Z
    .registers 4

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 198
    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 199
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 201
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_23

    .line 202
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_24

    :cond_23
    return v2

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public loadHeightMap(Lcom/badlogic/gdx/files/FileHandle;I)Linfo/flowersoft/theotown/creation/HeightMap;
    .registers 9

    .line 311
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object p1

    .line 312
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_5c

    if-lez p2, :cond_17

    const/4 p1, 0x1

    .line 317
    invoke-static {v0, p2, p2, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_17

    :catch_15
    move-exception p1

    goto :goto_59

    .line 320
    :cond_17
    :goto_17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    new-array p1, p1, [F

    const/4 p2, 0x0

    move v1, p2

    .line 321
    :goto_24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_4b

    move v2, p2

    .line 322
    :goto_2b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 323
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 327
    :cond_4b
    new-instance p2, Linfo/flowersoft/theotown/creation/HeightMap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p2, v1, v0, p1}, Linfo/flowersoft/theotown/creation/HeightMap;-><init>(II[F)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_15

    return-object p2

    .line 330
    :goto_59
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5c
    const/4 p1, 0x0

    return-object p1
.end method

.method public normalizeShaderCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    return-object p1
.end method

.method public openURI(Ljava/lang/String;)Z
    .registers 3

    .line 245
    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public openURL(Ljava/lang/String;)V
    .registers 3

    .line 562
    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method

.method public openURLInApp(Ljava/lang/String;)V
    .registers 3

    .line 567
    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method

.method public prefersDarkMode()Z
    .registers 3

    .line 986
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 987
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final prepareTPC()V
    .registers 2

    .line 582
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->tpc:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->tpc:Z

    .line 585
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)V

    .line 603
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    return-void
.end method

.method public rateGame()V
    .registers 3

    .line 557
    sget-object v0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const-string v1, "https://play.google.com/store/apps/details?id=info.flowersoft.theotown.theotown"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Net;->openURI(Ljava/lang/String;)Z

    return-void
.end method

.method public rateGameLight()V
    .registers 4

    .line 661
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    .line 662
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 663
    new-instance v2, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/google/android/play/core/review/ReviewManager;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public restartApp()V
    .registers 6

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_33

    const v1, 0x10008000

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-class v4, Linfo/flowersoft/theotown/theotown/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const-string v1, "theotown_restart_intents"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 266
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    .line 257
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Something here is off, and you probably know what it is :/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restartAppSlowly()V
    .registers 3

    const-wide/16 v0, 0xc8

    .line 272
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    :goto_a
    invoke-virtual {p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->restartApp()V

    return-void
.end method

.method public saveImageToGallery(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 924
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_80

    .line 925
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 926
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 927
    const-string v3, "_display_name"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v3, "mime_type"

    const-string v4, "image/png"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DCIM/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "relative_path"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 932
    new-instance v1, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>()V

    const/4 v3, 0x0

    .line 933
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setFlipY(Z)V

    const/16 v3, 0x9

    .line 934
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setCompression(I)V

    .line 936
    :try_start_48
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_6f

    .line 937
    :try_start_4c
    invoke-virtual {v1, v0, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 938
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 939
    new-instance p2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    const-string v1, "uri"

    .line 940
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    const-string p2, "name"

    .line 941
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 942
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_4c .. :try_end_6b} :catchall_71

    .line 943
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f

    return-object p1

    :catch_6f
    move-exception p1

    goto :goto_7d

    :catchall_71
    move-exception p1

    if-eqz v0, :cond_7c

    .line 936
    :try_start_74
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p2

    :try_start_79
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw p1
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7d} :catch_6f

    .line 944
    :goto_7d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_80
    return-object v2
.end method

.method public setFullscreen(ZII)V
    .registers 4

    .line 0
    return-void
.end method

.method public setGotPermissions()V
    .registers 2

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->gotPermissions:Z

    return-void
.end method

.method public shareImage(Ljava/io/File;)V
    .registers 5

    .line 362
    :try_start_0
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    const-string v1, "uri"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 364
    const-string v2, "name"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_19} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_24

    :catch_1a
    move-exception p1

    goto :goto_47

    .line 366
    :catch_1c
    :try_start_1c
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 367
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 370
    :goto_24
    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 372
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string v1, "Share using"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_1a

    goto :goto_51

    .line 377
    :goto_47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->showToast(Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string p2, "text/plain"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showFile(Ljava/io/File;)V
    .registers 4

    .line 675
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 676
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_59

    .line 678
    :cond_2d
    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, ".lua"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, ".manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_53

    :cond_4e
    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->showGenericFile(Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 679
    :cond_53
    :goto_53
    const-string v0, "text/plain"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->showGenericFile(Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 677
    :cond_59
    :goto_59
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->showImage(Ljava/io/File;)V

    return-void
.end method

.method public final showGenericFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 217
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 219
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_42

    .line 223
    :cond_2f
    :try_start_2f
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "uri"

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_42} :catch_53

    .line 228
    :goto_42
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 229
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    :try_start_49
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_49 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_53
    return-void
.end method

.method public showImage(Ljava/io/File;)V
    .registers 3

    .line 240
    const-string v0, "image/*"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->showGenericFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4

    .line 281
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public supportsFullscreen()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrientation()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public supportsShareImage()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public supportsShareText()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public waitingForPermissions()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->gotPermissions:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->createTextEditor(Ljava/lang/String;IIII)Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures$TextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public editText:Landroid/widget/EditText;

.field public text:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic val$content:Ljava/lang/String;

.field public final synthetic val$h:I

.field public final synthetic val$w:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/lang/String;IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$content:Ljava/lang/String;

    iput p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$h:I

    iput p4, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$x:I

    iput p5, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$y:I

    iput p6, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->text:Ljava/lang/String;

    .line 405
    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 539
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$8;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$8;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 502
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->text:Ljava/lang/String;

    return-object v0
.end method

.method public markAsAutoFill(Z)V
    .registers 4

    .line 523
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .registers 4

    .line 468
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$3;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$3;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPassword(Z)V
    .registers 4

    .line 507
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShape(IIII)V
    .registers 12

    .line 478
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;IIII)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    .line 457
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->text:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$2;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$2;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 4

    .line 492
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$5;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$5;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.RunnableC10731 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$1)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 405
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 408
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    .line 409
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    .line 413
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    .line 415
    iget-object v2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v4

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v1

    invoke-static {v3, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 417
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 418
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 419
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 422
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 423
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 424
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v4

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v0

    invoke-static {v3, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 425
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$h:I

    int-to-float v0, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v0, 0x2

    const/high16 v3, -0x1000000

    .line 426
    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 427
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$x:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    .line 430
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$y:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 431
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$w:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 432
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$h:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 433
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$h:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 435
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1$1;-><init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.RunnableC10731.C10741 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$1$1)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1$1;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 437
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1$1;->this$2:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 444
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1$1;->this$2:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;

    iget-object p2, p2, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$1;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->text:Ljava/lang/String;

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.AnonymousClass2 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$2)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$2;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$2;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 461
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$2;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.AnonymousClass3 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$3)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$3;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->setHint(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

.field public final synthetic val$hint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 468
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$3;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$3;->val$hint:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 471
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$3;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$3;->val$hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.AnonymousClass4 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$4)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->setShape(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

.field public final synthetic val$h:I

.field public final synthetic val$w:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 478
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iput p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$x:I

    iput p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$y:I

    iput p4, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$w:I

    iput p5, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 481
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 482
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 483
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$w:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 484
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 485
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$4;->val$h:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.AnonymousClass5 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$5)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$5;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

.field public final synthetic val$visible:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 492
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$5;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$5;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 495
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$5;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$5;->val$visible:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_c

    :cond_a
    const/16 v1, 0x8

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.AnonymousClass6 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$6)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->setPassword(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

.field public final synthetic val$state:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 507
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 510
    iget-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;->val$state:Z

    if-eqz v0, :cond_e

    .line 511
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    .line 514
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$6;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.AnonymousClass7 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$7)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->markAsAutoFill(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

.field public final synthetic val$password:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;->val$password:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_27

    .line 527
    iget-boolean v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;->val$password:Z

    if-eqz v0, :cond_18

    .line 528
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    const-string v1, "password"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/EditText;[Ljava/lang/String;)V

    return-void

    .line 530
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    const-string v1, "username"

    const-string v2, "emailAddress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$7$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/EditText;[Ljava/lang/String;)V

    :cond_27
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass1.AnonymousClass8 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$1$8)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$8;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 539
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$8;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 542
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$8;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1a

    .line 543
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    .line 545
    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$8;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 547
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1$8;->this$1:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;

    const/4 v1, 0x0

    iput-object v1, v0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$1;->editText:Landroid/widget/EditText;

    :cond_1a
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass2 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$2)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;
.super Ljava/lang/Thread;
.source "AndroidRuntimeFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->prepareTPC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 585
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 588
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 589
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 591
    :try_start_9
    const-string v3, "cpt"

    iget-object v4, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v4}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 592
    const-string v3, "cpl"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v5}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 593
    const-string v3, "rpt"

    iget-object v4, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v4}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 594
    const-string v3, "pna"

    iget-object v4, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v4}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 595
    const-string v3, "vsc"

    sget v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 596
    const-string v3, "dbg"

    sget-boolean v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 597
    const-string v3, "sig"

    iget-object v4, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$2;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v4}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$100(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_67
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_9 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v2

    .line 599
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 601
    :goto_6c
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPC"

    invoke-interface {v2, v1, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass3 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$3)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->importFile(Ljava/io/File;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic val$folder:Z

.field public final synthetic val$signalDirty:Ljava/lang/Runnable;

.field public final synthetic val$targetFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/io/File;ZLjava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 707
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->val$targetFolder:Ljava/io/File;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->val$folder:Z

    iput-object p4, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->val$signalDirty:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const v0, 0x504e4

    if-ne p1, v0, :cond_65

    .line 711
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_65

    .line 713
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_38

    const/4 p2, 0x0

    .line 715
    :goto_18
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p3

    if-ge p2, p3, :cond_5e

    .line 716
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p3

    .line 717
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v1

    invoke-static {v1, p3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p3

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->val$targetFolder:Ljava/io/File;

    invoke-static {v0, p3, v1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$200(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 720
    :cond_38
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 722
    iget-boolean p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->val$folder:Z

    if-eqz p2, :cond_4d

    .line 723
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    goto :goto_57

    .line 724
    :cond_4d
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 725
    :goto_57
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iget-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->val$targetFolder:Ljava/io/File;

    invoke-static {p2, p1, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$200(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;

    .line 728
    :cond_5e
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$3;->val$signalDirty:Ljava/lang/Runnable;

    if-eqz p1, :cond_65

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_65
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass4 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$4)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->exportFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic val$signalDirty:Ljava/lang/Runnable;

.field public final synthetic val$srcFile:Lcom/badlogic/gdx/files/FileHandle;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 775
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;->val$srcFile:Lcom/badlogic/gdx/files/FileHandle;

    iput-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;->val$signalDirty:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const v0, 0x504e5

    if-ne p1, v0, :cond_26

    .line 779
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_26

    .line 781
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 782
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iget-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;->val$srcFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$4;->val$signalDirty:Ljava/lang/Runnable;

    invoke-static {p2, p3, p1, v0}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$300(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/Runnable;)V

    :cond_26
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass5 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$5)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->exportFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic val$signalDirty:Ljava/lang/Runnable;

.field public final synthetic val$srcFile:Lcom/badlogic/gdx/files/FileHandle;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 795
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;->val$srcFile:Lcom/badlogic/gdx/files/FileHandle;

    iput-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;->val$signalDirty:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const v0, 0x504e6

    if-ne p1, v0, :cond_23

    .line 799
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_23

    .line 801
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 802
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iget-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;->val$srcFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {p2, p3, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$400(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/badlogic/gdx/files/FileHandle;Landroid/net/Uri;)V

    .line 803
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$5;->val$signalDirty:Ljava/lang/Runnable;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_23
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass6 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$6)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->importImageFile(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic val$onResult:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$targetFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 820
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;->val$targetFolder:Ljava/io/File;

    iput-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;->val$onResult:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const v0, 0x504e9

    if-ne p1, v0, :cond_2e

    .line 824
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2e

    .line 826
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 828
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iget-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;->val$targetFolder:Ljava/io/File;

    invoke-static {p2, p1, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$200(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 830
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$6;->val$onResult:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures.AnonymousClass7 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$7)
.class public Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;
.super Ljava/lang/Object;
.source "AndroidRuntimeFeatures.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->importMusicFile(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic val$onResult:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$targetFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 848
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;->val$targetFolder:Ljava/io/File;

    iput-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;->val$onResult:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const v0, 0x504ea

    if-ne p1, v0, :cond_2e

    .line 852
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->removeAndroidEventListener(Lcom/badlogic/gdx/backends/android/AndroidEventListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2e

    .line 854
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 856
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;->this$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    invoke-static {p2}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$000(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;)Lcom/badlogic/gdx/backends/android/AndroidApplication;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iget-object p3, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;->val$targetFolder:Ljava/io/File;

    invoke-static {p2, p1, p3}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->access$200(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 858
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$7;->val$onResult:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda0 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->$r8$lambda$1W05kU_2wWN0vVo7TlIUDNjf_Bg(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda1 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

.field public final synthetic f$1:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/google/android/play/core/review/ReviewManager;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iput-object p2, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->$r8$lambda$K2-2rGTYapNZCvQpeQ1DTsnty5k(Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda2 (info.flowersoft.theotown.android.AndroidRuntimeFeatures$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidRuntimeFeatures;->$r8$lambda$eKy_LZLVm_TQ0C8pKQtALHgWOCU(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
