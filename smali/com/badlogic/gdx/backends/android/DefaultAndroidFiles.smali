###### Class com.badlogic.gdx.backends.android.DefaultAndroidFiles (com.badlogic.gdx.backends.android.DefaultAndroidFiles)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;
.super Ljava/lang/Object;
.source "DefaultAndroidFiles.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidFiles;


# instance fields
.field public final assets:Landroid/content/res/AssetManager;

.field public final externalFilesPath:Ljava/lang/String;

.field public final localpath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/content/ContextWrapper;Z)V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->assets:Landroid/content/res/AssetManager;

    .line 44
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 45
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_25

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_25
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->localpath:Ljava/lang/String;

    if-eqz p3, :cond_30

    .line 47
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->initExternalFilesPath(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->externalFilesPath:Ljava/lang/String;

    return-void

    :cond_30
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->externalFilesPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5

    .line 103
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    const/4 v1, 0x0

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->externalFilesPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalStoragePath()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->localpath:Ljava/lang/String;

    return-object v0
.end method

.method public initExternalFilesPath(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 57
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object p1

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    return-object v0
.end method

.method public internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5

    .line 91
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidFiles;->assets:Landroid/content/res/AssetManager;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1, v2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method
