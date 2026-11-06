###### Class info.flowersoft.theotown.scripting.libraries.AnalyticsLibrary (info.flowersoft.theotown.scripting.libraries.AnalyticsLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "AnalyticsLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    const-string v0, "libs/Analytics.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 18
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;)V

    const-string p3, "log"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.AnalyticsLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.AnalyticsLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary$1;
.super Lvm2/lib/ThreeArgFunction;
.source "AnalyticsLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 21
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p2

    .line 23
    const-string v0, ""

    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 24
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0, p1, p2, p3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method
