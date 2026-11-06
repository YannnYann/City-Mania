###### Class info.flowersoft.theotown.resources.RootPluginFile (info.flowersoft.theotown.resources.RootPluginFile)
.class public final Linfo/flowersoft/theotown/resources/RootPluginFile;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# instance fields
.field public externalPluginData:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

.field public final file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/RootPluginFile;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method


# virtual methods
.method public final getExternalPluginData()Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;
    .registers 2

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/RootPluginFile;->externalPluginData:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    return-object v0
.end method

.method public final getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/RootPluginFile;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public final setExternalPluginData(Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;)V
    .registers 2

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/RootPluginFile;->externalPluginData:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    return-void
.end method
