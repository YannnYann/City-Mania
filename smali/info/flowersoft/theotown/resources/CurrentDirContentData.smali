###### Class info.flowersoft.theotown.resources.CurrentDirContentData (info.flowersoft.theotown.resources.CurrentDirContentData)
.class public final Linfo/flowersoft/theotown/resources/CurrentDirContentData;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# instance fields
.field public final file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/CurrentDirContentData;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method


# virtual methods
.method public final getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/CurrentDirContentData;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method
