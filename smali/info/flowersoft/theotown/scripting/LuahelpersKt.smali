###### Class info.flowersoft.theotown.scripting.LuahelpersKt (info.flowersoft.theotown.scripting.LuahelpersKt)
.class public final Linfo/flowersoft/theotown/scripting/LuahelpersKt;
.super Ljava/lang/Object;
.source "luahelpers.kt"


# direct methods
.method public static final toLua(Z)Lvm2/LuaBoolean;
    .registers 1

    .line 12
    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final toLua(I)Lvm2/LuaInteger;
    .registers 1

    .line 14
    invoke-static {p0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final toLua(Ljava/lang/String;)Lvm2/LuaString;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
