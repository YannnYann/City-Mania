###### Class info.flowersoft.theotown.util.vfs.AbstractFile (info.flowersoft.theotown.util.vfs.AbstractFile)
.class public abstract Linfo/flowersoft/theotown/util/vfs/AbstractFile;
.super Ljava/lang/Object;
.source "AbstractFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;
    }
.end annotation


# instance fields
.field public childByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;"
        }
    .end annotation
.end field

.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;"
        }
    .end annotation
.end field

.field public modificationTime:J

.field public final name:Ljava/lang/String;

.field public parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLinfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 29
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->name:Ljava/lang/String;

    .line 30
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    if-eqz p3, :cond_3c

    const/4 v0, 0x0

    .line 33
    :goto_2f
    array-length v2, p1

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_3f

    .line 34
    aget-object v2, p1, v0

    invoke-virtual {p3, v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getOrCreateDirectoryChild(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 36
    :cond_3c
    array-length p1, p1

    if-gt p1, v1, :cond_55

    :cond_3f
    if-eqz p2, :cond_4f

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->childByName:Ljava/util/Map;

    :cond_4f
    if-eqz p3, :cond_54

    .line 45
    invoke-virtual {p3, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->addDirectChild(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    :cond_54
    return-void

    .line 37
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Path is meaningless without a parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid filename"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addDirectChild(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 4

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 65
    iget-object v0, p1, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getDirectFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    if-ne v0, p1, :cond_f

    return-void

    :cond_f
    if-eqz v0, :cond_14

    .line 69
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->removeDirectChild(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 72
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->childByName:Ljava/util/Map;

    iget-object v1, p1, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iput-object p0, p1, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void

    .line 63
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot append file to non directory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public countChildren()I
    .registers 2

    .line 116
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public abstract createDirectoryChild(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
.end method

.method public final getDirectFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4

    .line 124
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 125
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_31

    .line 126
    :cond_15
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p1, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz p1, :cond_31

    return-object p1

    .line 127
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->childByName:Ljava/util/Map;

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object p1

    :cond_31
    :goto_31
    return-object p0

    .line 124
    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Files have no children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 5

    .line 131
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, p0

    .line 133
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_16

    if-eqz v1, :cond_16

    .line 134
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getDirectFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-object v1
.end method

.method public getModificationTime()J
    .registers 3

    .line 88
    iget-wide v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->modificationTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrCreateDirectoryChild(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 3

    .line 140
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getDirectFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 142
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_d

    return-object v0

    .line 143
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Files cannot have children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_15
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->createDirectoryChild(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1

    return-object p1
.end method

.method public getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 2

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public getRoot()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 3

    move-object v0, p0

    .line 58
    :goto_1
    iget-object v1, v0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isFile()Z
    .registers 2

    .line 100
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRoot()Z
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public abstract length()I
.end method

.method public listFiles()[Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4

    .line 104
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    const/4 v1, 0x0

    .line 106
    :goto_f
    iget-object v2, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 107
    iget-object v2, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract newDirectory(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
.end method

.method public abstract newFile(Ljava/lang/String;ILinfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end method

.method public abstract newFile(Ljava/lang/String;Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end method

.method public newFile(Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->newFile(Ljava/lang/String;Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1

    return-object p1
.end method

.method public overallSize()I
    .registers 4

    .line 166
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 167
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->length()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 170
    :goto_d
    iget-object v2, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 171
    iget-object v2, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->overallSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_25
    return v1
.end method

.method public abstract read()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public removeDirectChild(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V
    .registers 4

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->childByName:Ljava/util/Map;

    iget-object v1, p1, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p1, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-void
.end method

.method public setModificationTime(J)V
    .registers 3

    .line 92
    iput-wide p1, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->modificationTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->parent:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-nez v0, :cond_7

    iget-object v0, p0, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->name:Ljava/lang/String;

    return-object v0

    .line 155
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    :cond_d
    :goto_d
    if-eqz v1, :cond_23

    .line 158
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    if-eqz v1, :cond_d

    const/16 v2, 0x2f

    .line 160
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 162
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.vfs.AbstractFile.DataSource (info.flowersoft.theotown.util.vfs.AbstractFile$DataSource)
.class public interface abstract Linfo/flowersoft/theotown/util/vfs/AbstractFile$DataSource;
.super Ljava/lang/Object;
.source "AbstractFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/vfs/AbstractFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataSource"
.end annotation


# virtual methods
.method public abstract get()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
