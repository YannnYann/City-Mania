###### Class info.flowersoft.theotown.scripting.LuaLibrary (info.flowersoft.theotown.scripting.LuaLibrary)
.class public interface abstract Linfo/flowersoft/theotown/scripting/LuaLibrary;
.super Ljava/lang/Object;
.source "LuaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/scripting/LuaLibrary$CodeLoader;
    }
.end annotation


# virtual methods
.method public abstract load(Lvm2/Globals;Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/LuaLibrary$CodeLoader;)V
.end method

.method public abstract unload(Lvm2/Globals;)V
.end method

###### Class info.flowersoft.theotown.scripting.LuaLibrary.CodeLoader (info.flowersoft.theotown.scripting.LuaLibrary$CodeLoader)
.class public interface abstract Linfo/flowersoft/theotown/scripting/LuaLibrary$CodeLoader;
.super Ljava/lang/Object;
.source "LuaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/LuaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CodeLoader"
.end annotation


# virtual methods
.method public abstract loadBase64(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaFunction;
.end method
