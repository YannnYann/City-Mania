###### Class info.flowersoft.theotown.tools.RemoveUndergroundWireTool (info.flowersoft.theotown.tools.RemoveUndergroundWireTool)
.class public Linfo/flowersoft/theotown/tools/RemoveUndergroundWireTool;
.super Linfo/flowersoft/theotown/tools/RemoveTool;
.source "RemoveUndergroundWireTool.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 17
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RemoveTool;->enterRemoveUndergroundWiresMode()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "RemoveUndergroundWire"

    return-object v0
.end method
