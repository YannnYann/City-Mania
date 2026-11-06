###### Class info.flowersoft.theotown.city.PipeList (info.flowersoft.theotown.city.PipeList)
.class public Linfo/flowersoft/theotown/city/PipeList;
.super Linfo/flowersoft/theotown/city/AbstractConnectionList;
.source "PipeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linfo/flowersoft/theotown/city/AbstractConnectionList<",
        "Linfo/flowersoft/theotown/city/objects/Pipe;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/AbstractConnectionList;-><init>()V

    return-void
.end method


# virtual methods
.method public hasConnection(Linfo/flowersoft/theotown/city/objects/Pipe;)Z
    .registers 2

    .line 13
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pipe;->hasConnection()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasConnection(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Pipe;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/PipeList;->hasConnection(Linfo/flowersoft/theotown/city/objects/Pipe;)Z

    move-result p1

    return p1
.end method
