###### Class info.flowersoft.theotown.scripting.libraries.BuildingLibrary (info.flowersoft.theotown.scripting.libraries.BuildingLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuildingLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "BuildingLibrary.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    const-string v0, "libs/Building.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method
