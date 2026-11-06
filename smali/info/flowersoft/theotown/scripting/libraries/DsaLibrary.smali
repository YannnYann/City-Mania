###### Class info.flowersoft.theotown.scripting.libraries.DsaLibrary (info.flowersoft.theotown.scripting.libraries.DsaLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/DsaLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "DsaLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    const-string v0, "libs/DSA.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 0
    return-void
.end method
