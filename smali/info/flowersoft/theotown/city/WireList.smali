###### Class info.flowersoft.theotown.city.WireList (info.flowersoft.theotown.city.WireList)
.class public Linfo/flowersoft/theotown/city/WireList;
.super Linfo/flowersoft/theotown/city/AbstractConnectionList;
.source "WireList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linfo/flowersoft/theotown/city/AbstractConnectionList<",
        "Linfo/flowersoft/theotown/city/objects/Wire;",
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
.method public hasConnection(Linfo/flowersoft/theotown/city/objects/Wire;)Z
    .registers 2

    .line 13
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->hasConnection()Z

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
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Wire;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/WireList;->hasConnection(Linfo/flowersoft/theotown/city/objects/Wire;)Z

    move-result p1

    return p1
.end method
