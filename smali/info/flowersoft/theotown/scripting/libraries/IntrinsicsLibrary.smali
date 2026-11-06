###### Class info.flowersoft.theotown.scripting.libraries.IntrinsicsLibrary (info.flowersoft.theotown.scripting.libraries.IntrinsicsLibrary)
.class public final Linfo/flowersoft/theotown/scripting/libraries/IntrinsicsLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "IntrinsicsLibrary.kt"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    const-string v0, "libs/Intrinsics.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    const-string v0, "lib"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateLib"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "globals"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string p2, "init"

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->method(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    sput-object p1, Linfo/flowersoft/theotown/resources/Resources;->INTRINSICS:Lvm2/LuaValue;

    return-void
.end method
