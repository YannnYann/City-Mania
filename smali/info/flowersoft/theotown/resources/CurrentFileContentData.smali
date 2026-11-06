###### Class info.flowersoft.theotown.resources.CurrentFileContentData (info.flowersoft.theotown.resources.CurrentFileContentData)
.class public final Linfo/flowersoft/theotown/resources/CurrentFileContentData;
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/CurrentFileContentData;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method


# virtual methods
.method public final getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/CurrentFileContentData;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method
