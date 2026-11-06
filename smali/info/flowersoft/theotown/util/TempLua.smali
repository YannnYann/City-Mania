###### Class info.flowersoft.theotown.util.TempLua (info.flowersoft.theotown.util.TempLua)
.class public final Linfo/flowersoft/theotown/util/TempLua;
.super Ljava/lang/Object;
.source "TempLua.kt"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Linfo/flowersoft/theotown/util/TempLua;

.field public static final globals$delegate:Linfo/flowersoft/theotown/util/TempLua$globals$2;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 0
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v1, "getGlobals()Lvm2/Globals;"

    const/4 v2, 0x0

    const-class v3, Linfo/flowersoft/theotown/util/TempLua;

    const-string v4, "globals"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Linfo/flowersoft/theotown/util/TempLua;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Linfo/flowersoft/theotown/util/TempLua;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/TempLua;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/TempLua;->INSTANCE:Linfo/flowersoft/theotown/util/TempLua;

    new-instance v0, Linfo/flowersoft/theotown/util/TempLua$globals$2;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/TempLua$globals$2;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/TempLua;->globals$delegate:Linfo/flowersoft/theotown/util/TempLua$globals$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGlobals()Lvm2/Globals;
    .registers 4

    .line 28
    sget-object v0, Linfo/flowersoft/theotown/util/TempLua;->globals$delegate:Linfo/flowersoft/theotown/util/TempLua$globals$2;

    sget-object v1, Linfo/flowersoft/theotown/util/TempLua;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, p0, v1}, Linfo/flowersoft/theotown/util/TempLua;->getValue(Ljava/lang/ThreadLocal;Linfo/flowersoft/theotown/util/TempLua;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm2/Globals;

    return-object v0
.end method

.method public final getValue(Ljava/lang/ThreadLocal;Linfo/flowersoft/theotown/util/TempLua;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ThreadLocal<",
            "TT;>;",
            "Linfo/flowersoft/theotown/util/TempLua;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.util.TempLua$globals$2 (info.flowersoft.theotown.util.TempLua$globals$2)
.class public final Linfo/flowersoft/theotown/util/TempLua$globals$2;
.super Ljava/lang/ThreadLocal;
.source "TempLua.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/TempLua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lvm2/Globals;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TempLua$globals$2;->initialValue()Lvm2/Globals;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Lvm2/Globals;
    .registers 3

    .line 29
    new-instance v0, Lvm2/Globals;

    invoke-direct {v0}, Lvm2/Globals;-><init>()V

    .line 30
    new-instance v1, Lvm2/lib/jse/JseBaseLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseBaseLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 31
    new-instance v1, Lvm2/lib/Bit32Lib;

    invoke-direct {v1}, Lvm2/lib/Bit32Lib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 32
    new-instance v1, Lvm2/lib/jse/JseStringLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseStringLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 33
    new-instance v1, Lvm2/lib/jse/JseMathLib;

    invoke-direct {v1}, Lvm2/lib/jse/JseMathLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 34
    new-instance v1, Lvm2/lib/TableLib;

    invoke-direct {v1}, Lvm2/lib/TableLib;-><init>()V

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->load(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 35
    invoke-static {v0}, Lvm2/LoadState;->install(Lvm2/Globals;)V

    .line 36
    invoke-static {v0}, Lvm2/compiler/LuaC;->install(Lvm2/Globals;)V

    return-object v0
.end method
