###### Class info.flowersoft.theotown.stages.SettingsStage (info.flowersoft.theotown.stages.SettingsStage)
.class public Linfo/flowersoft/theotown/stages/SettingsStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "SettingsStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;,
        Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;
    }
.end annotation


# instance fields
.field public listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

.field public openCats:[Z

.field public final resetActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public shiftY:F


# direct methods
.method public static synthetic $r8$lambda$1eqxJwz1DrBeVGndJQUaiB15D_A(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 3

    .line 646
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    .line 646
    new-instance v1, Linfo/flowersoft/theotown/stages/MusicManagerStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/MusicManagerStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1fiXisy7QLed6nTR6KgdIMCwrX0(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 4

    .line 329
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage;

    .line 329
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 329
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 330
    sget-object v1, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Shaders:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->configureCategory(Linfo/flowersoft/theotown/store/StoreCategory$Builtins;)V

    .line 331
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2RmDcFnIvFFAkQqeeaEgIDGKITE(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 4

    .line 938
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    .line 938
    new-instance v1, Linfo/flowersoft/theotown/stages/ScriptPolicyStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Linfo/flowersoft/theotown/stages/ScriptPolicyStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ZZ)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dde6EUJnQwD3c9nxPJtL6zWWAD4()V
    .registers 1

    .line 629
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V

    .line 630
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->update()V

    return-void
.end method

.method public static synthetic $r8$lambda$HDMEsX2JH3GjMDUVmJev4B-G7NM(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V
    .registers 2

    .line 1040
    iget-object p1, p1, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;->lua:Lvm2/LuaValue;

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$Lb5LSQqKuxp7umpMlJlCaGtNgWo(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 4

    .line 502
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage;

    .line 502
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 502
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 503
    sget-object v1, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->Themes:Linfo/flowersoft/theotown/store/StoreCategory$Builtins;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->configureCategory(Linfo/flowersoft/theotown/store/StoreCategory$Builtins;)V

    .line 504
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pqwv0mVU7WJLpHmwUD7I1cuNyaM(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V
    .registers 2

    .line 1009
    iget-boolean p1, p1, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;->bool:Z

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$Qhm4TnG1cJrXUVrJJwPuIlRxGiA()V
    .registers 1

    .line 1128
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    return-void
.end method

.method public static synthetic $r8$lambda$cZ54Cc89TErb_6-6ux9BNOzWmWU(Lvm2/LuaValue;)V
    .registers 1

    .line 1056
    invoke-virtual {p0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$ki1A-uU7SGYqHSbLMsJKDENvKPk(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V
    .registers 2

    .line 1020
    iget-object p1, p1, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;->text:Ljava/lang/String;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$qOvzE-UEaFguLQJpSCu3r-URGmU(Lvm2/LuaValue;)V
    .registers 1

    .line 1046
    invoke-virtual {p0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$yqa3a6MRFRxkMjMUrqEN4NgM_xg()V
    .registers 4

    .line 1265
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->useToolbarBuildtool:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    const-string v3, "new toolbar for buildtool"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmFqtctxUuh1VVm-2QCsrJYz0E4()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->resetActions:Ljava/util/List;

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->shiftY:F

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;F[Z)V
    .registers 4

    .line 118
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->resetActions:Ljava/util/List;

    .line 119
    iput p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->shiftY:F

    .line 120
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->openCats:[Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 1

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/SettingsStage;->reset()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/SettingsStage;Ljava/util/Locale;)V
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/SettingsStage;->changeLanguage(Ljava/util/Locale;)V

    return-void
.end method

.method public static getAvailableLocales()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ar"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Ljava/util/Locale;

    const-string v2, "bn"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ca"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Ljava/util/Locale;

    const-string v2, "cs"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Ljava/util/Locale;

    const-string v2, "de"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Ljava/util/Locale;

    const-string v2, "el"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Ljava/util/Locale;

    const-string v2, "fil"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Ljava/util/Locale;

    const-string v2, "fa"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Ljava/util/Locale;

    const-string v2, "fi"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Ljava/util/Locale;

    const-string v2, "fr"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ha"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Ljava/util/Locale;

    const-string v2, "hi"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Ljava/util/Locale;

    const-string v2, "hu"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Ljava/util/Locale;

    const-string v2, "id"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Ljava/util/Locale;

    const-string v2, "it"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ja"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Ljava/util/Locale;

    const-string v2, "jv"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ko"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Ljava/util/Locale;

    const-string v2, "lt"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ms"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Ljava/util/Locale;

    const-string v2, "nl"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Ljava/util/Locale;

    const-string v2, "pl"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    invoke-direct {v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ro"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ru"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sk"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sr"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sv"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sw"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Ljava/util/Locale;

    const-string v2, "th"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Ljava/util/Locale;

    const-string v2, "tr"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Ljava/util/Locale;

    const-string v2, "uk"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Ljava/util/Locale;

    const-string v2, "vi"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Ljava/util/Locale;

    const-string v2, "zh"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Ljava/util/Locale;

    const-string v3, "tw"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Ljava/util/Locale;

    const-string v3, "hk"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final changeLanguage(Ljava/util/Locale;)V
    .registers 6

    .line 1468
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    const-string v3, "Change language"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getEffectiveLocalizationPatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->setLanguage(Ljava/util/Locale;Ljava/util/List;)V

    .line 1470
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getEffectiveLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->applyFontLocale(Ljava/util/Locale;)V

    .line 1471
    sput-object p1, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    return-void
.end method

.method public drop()V
    .registers 1

    .line 1528
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    return-void
.end method

.method public enter()V
    .registers 55

    move-object/from16 v1, p0

    const/16 v0, 0xda

    .line 130
    const-string v2, "pr"

    const-string v3, "name"

    const-string v10, "value"

    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 132
    new-instance v12, Linfo/flowersoft/theotown/ui/Page;

    iget-object v13, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v14, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v15, 0xaaa

    .line 133
    invoke-interface {v14, v15}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v14

    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_SETTINGS:I

    const/16 v16, 0x32

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v12, v13, v14, v15, v5}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 134
    new-instance v5, Linfo/flowersoft/theotown/stages/SettingsStage$1;

    invoke-direct {v5, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$1;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    invoke-virtual {v12, v5}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 141
    new-instance v5, Linfo/flowersoft/theotown/ui/Dialog;

    sget v13, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    iget-object v14, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v15, 0x7bb

    .line 142
    invoke-interface {v14, v15}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v17, 0x19

    const/16 v6, 0x4f1

    .line 143
    invoke-interface {v15, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v5, v13, v14, v6, v15}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 144
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v13, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v14, 0x5c5

    invoke-interface {v13, v14}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v6, v13}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v6

    const/4 v13, 0x1

    .line 178
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 144
    invoke-virtual {v6, v13}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 145
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v18, 0x7

    const/16 v4, 0x16c

    invoke-interface {v15, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v15

    new-instance v4, Linfo/flowersoft/theotown/stages/SettingsStage$2;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$2;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/4 v7, 0x0

    .line 177
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 145
    invoke-virtual {v5, v6, v15, v7, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 151
    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 153
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->resetActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 155
    new-instance v20, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 156
    invoke-interface {v4}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v21

    .line 158
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v24

    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v25

    .line 159
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v26

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v26}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;-><init>(ZIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v4, v20

    iput-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 160
    iget v6, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->shiftY:F

    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    .line 161
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    new-instance v6, Linfo/flowersoft/theotown/stages/SettingsStage$3;

    invoke-direct {v6, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$3;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setRebuildFunction(Ljava/lang/Runnable;)V

    .line 172
    :try_start_b2
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v28, 0x2

    const/16 v11, 0xc4c

    invoke-interface {v15, v11}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 175
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v4}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsOrientation()Z

    move-result v4
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b2 .. :try_end_c9} :catch_110

    const/16 v6, 0x78

    const-class v11, Linfo/flowersoft/theotown/resources/Settings;

    if-eqz v4, :cond_117

    .line 179
    :try_start_cf
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v8, v14, v4}, [Ljava/lang/Integer;

    move-result-object v23

    .line 181
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v15, 0xa3e

    .line 182
    invoke-interface {v4, v15}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x31e

    .line 183
    invoke-interface {v15, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 184
    invoke-interface {v15, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v4, v9, v15}, [Ljava/lang/String;

    move-result-object v22

    .line 186
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v15, 0x6d6

    .line 187
    invoke-interface {v9, v15}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v21

    const-string v9, "screenOrientation"

    .line 190
    invoke-virtual {v11, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    new-instance v9, Linfo/flowersoft/theotown/stages/SettingsStage$4;

    invoke-direct {v9, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$4;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/16 v25, 0x1

    move-object/from16 v20, v4

    move-object/from16 v26, v9

    .line 186
    invoke-virtual/range {v20 .. v26}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    goto :goto_117

    :catch_110
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v43, v12

    goto/16 :goto_17e2

    .line 200
    :cond_117
    :goto_117
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v4}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsFullscreen()Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 201
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v15, 0xd30

    invoke-interface {v9, v15}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    const-string v15, "fullscreen"

    .line 202
    invoke-virtual {v11, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move/from16 v20, v6

    new-instance v6, Linfo/flowersoft/theotown/stages/SettingsStage$5;

    invoke-direct {v6, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$5;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    .line 201
    invoke-virtual {v4, v9, v15, v7, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    goto :goto_13c

    :cond_13a
    move/from16 v20, v6

    .line 209
    :goto_13c
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;
    :try_end_144
    .catch Ljava/lang/NoSuchFieldException; {:try_start_cf .. :try_end_144} :catch_110

    const-string v15, ""

    const/16 v30, 0x4b

    if-ne v4, v6, :cond_1ca

    .line 210
    :try_start_14a
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    move/from16 v31, v7

    const/16 v7, 0x4dd

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "vsync"

    .line 211
    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    new-instance v9, Linfo/flowersoft/theotown/stages/SettingsStage$6;

    invoke-direct {v9, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$6;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    .line 210
    invoke-virtual {v4, v6, v7, v13, v9}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    const/16 v4, 0x1e

    .line 217
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v4, 0xf0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v20, v8

    filled-new-array/range {v20 .. v25}, [Ljava/lang/Integer;

    move-result-object v36

    const/4 v4, 0x6

    .line 218
    new-array v6, v4, [Ljava/lang/String;

    move/from16 v7, v31

    :goto_189
    if-ge v7, v4, :cond_1b0

    .line 220
    aget-object v4, v36, v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_19c

    .line 221
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xaaf

    invoke-interface {v4, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1ab

    :cond_19c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1ab
    aput-object v4, v6, v7

    add-int/2addr v7, v13

    const/4 v4, 0x6

    goto :goto_189

    .line 223
    :cond_1b0
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x582

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v7, "targetFps"

    .line 224
    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v33, v4

    move-object/from16 v35, v6

    .line 223
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    goto :goto_1ce

    :cond_1ca
    move/from16 v31, v7

    move-object/from16 v20, v8

    .line 226
    :goto_1ce
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v4}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsFullscreen()Z

    move-result v4
    :try_end_1d4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14a .. :try_end_1d4} :catch_110

    const-string v6, "x"

    const/16 v7, 0xc4f

    if-eqz v4, :cond_27b

    .line 228
    :try_start_1da
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v4}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getFullscreenResolutions()[[I

    move-result-object v4

    .line 229
    array-length v9, v4

    add-int/2addr v9, v13

    new-array v9, v9, [Ljava/lang/String;
    :try_end_1e4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1da .. :try_end_1e4} :catch_272

    move/from16 v40, v13

    .line 230
    :try_start_1e6
    array-length v13, v4

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/Integer;

    .line 231
    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v8, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v31

    .line 232
    aput-object v20, v13, v31

    .line 233
    new-instance v8, Lio/blueflower/stapel2d/util/IntValueProperty;

    invoke-direct {v8}, Lio/blueflower/stapel2d/util/IntValueProperty;-><init>()V

    move-object/from16 v35, v9

    move/from16 v7, v31

    .line 234
    :goto_1fe
    array-length v9, v4

    if-ge v7, v9, :cond_244

    .line 235
    aget-object v9, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v21, v9

    .line 236
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_20c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1e6 .. :try_end_20c} :catch_240

    move-object/from16 v43, v12

    :try_start_20e
    aget v12, v21, v31

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v21, v40

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v35, v7

    .line 237
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v13, v7

    .line 238
    aget v9, v21, v31

    sget v12, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    if-ne v9, v12, :cond_23d

    aget v9, v21, v40

    sget v12, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    if-ne v9, v12, :cond_23d

    .line 239
    iput v7, v8, Lio/blueflower/stapel2d/util/IntValueProperty;->value:I

    goto :goto_23d

    :catch_236
    move-exception v0

    :goto_237
    move-object/from16 v23, v5

    :goto_239
    move/from16 v13, v40

    goto/16 :goto_17e2

    :cond_23d
    :goto_23d
    move-object/from16 v12, v43

    goto :goto_1fe

    :catch_240
    move-exception v0

    move-object/from16 v43, v12

    goto :goto_237

    :cond_244
    move-object/from16 v43, v12

    .line 243
    iget-object v7, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 244
    iget-object v7, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x40a

    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-class v9, Lio/blueflower/stapel2d/util/IntValueProperty;

    .line 247
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    sget-boolean v38, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    new-instance v9, Linfo/flowersoft/theotown/stages/SettingsStage$7;

    invoke-direct {v9, v1, v8, v4}, Linfo/flowersoft/theotown/stages/SettingsStage$7;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;Lio/blueflower/stapel2d/util/IntValueProperty;[[I)V

    move-object/from16 v33, v7

    move-object/from16 v39, v9

    move-object/from16 v36, v13

    .line 244
    invoke-virtual/range {v33 .. v39}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 265
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    goto :goto_27f

    :catch_272
    move-exception v0

    move-object/from16 v43, v12

    move/from16 v40, v13

    :goto_277
    move-object/from16 v23, v5

    goto/16 :goto_17e2

    :cond_27b
    move-object/from16 v43, v12

    move/from16 v40, v13

    .line 269
    :goto_27f
    new-instance v4, Linfo/flowersoft/theotown/resources/ResolutionManager;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 270
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v7

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v8

    invoke-direct {v4, v7, v8}, Linfo/flowersoft/theotown/resources/ResolutionManager;-><init>(II)V

    .line 271
    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getPerfectResolution()I

    move-result v7

    .line 272
    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/ResolutionManager;->countResolutions()I

    move-result v4

    add-int/lit8 v8, v7, -0x2

    move/from16 v9, v31

    .line 273
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v4, -0x1

    .line 274
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v9, 0x67d

    const/16 v12, 0x6a0

    const/16 v13, 0xc95

    move/from16 v21, v4

    const/16 v4, 0xaed

    move/from16 v22, v7

    const/16 v7, 0x25a

    .line 275
    filled-new-array {v12, v13, v4, v7, v9}, [I

    move-result-object v4

    sub-int v7, v21, v8

    add-int/lit8 v7, v7, 0x1

    .line 281
    new-array v9, v7, [Ljava/lang/Integer;

    .line 282
    new-array v12, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    :goto_2c3
    if-ge v13, v7, :cond_2f8

    add-int v21, v13, v8

    sub-int v21, v21, v22

    .line 285
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v9, v13

    move-object/from16 v23, v4

    .line 286
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    move/from16 v24, v7

    aget v7, v23, v21

    invoke-interface {v4, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v13

    .line 287
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f1

    const-string v4, "###"

    aput-object v4, v12, v13

    :cond_2f1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v23

    move/from16 v7, v24

    goto :goto_2c3

    .line 290
    :cond_2f8
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x32e

    .line 291
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v7, "displayResolution"

    .line 292
    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v33, v4

    move-object/from16 v36, v9

    move-object/from16 v35, v12

    .line 290
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 294
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v4

    .line 295
    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->countShaders()I

    move-result v7

    new-array v8, v7, [Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    .line 296
    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->countShaders()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_324
    if-ge v12, v7, :cond_330

    const/4 v13, 0x0

    .line 299
    invoke-virtual {v4, v12, v13}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v21

    aput-object v21, v8, v12
    :try_end_32d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20e .. :try_end_32d} :catch_236

    add-int/lit8 v12, v12, 0x1

    goto :goto_324

    :cond_330
    const/4 v12, 0x4

    if-lt v7, v12, :cond_354

    const/4 v12, 0x3

    const/4 v13, 0x0

    .line 302
    :try_start_335
    invoke-virtual {v4, v12, v13}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v21

    aput-object v21, v8, v40

    move/from16 v29, v12

    move/from16 v12, v40

    .line 303
    invoke-virtual {v4, v12, v13}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v21

    aput-object v21, v8, v28

    move/from16 v12, v28

    .line 304
    invoke-virtual {v4, v12, v13}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v21

    aput-object v21, v8, v29

    goto :goto_354

    :catch_34e
    move-exception v0

    move-object/from16 v23, v5

    :goto_351
    const/4 v13, 0x1

    goto/16 :goto_17e2

    :cond_354
    :goto_354
    const/4 v12, 0x0

    :goto_355
    if-ge v12, v7, :cond_364

    .line 308
    aget-object v13, v8, v12

    invoke-virtual {v13}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    const/16 v40, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_355

    .line 311
    :cond_364
    new-instance v7, Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;

    sget v12, Linfo/flowersoft/theotown/resources/Settings;->shader:I

    sget-object v13, Linfo/flowersoft/theotown/resources/Settings;->shaderId:Ljava/lang/String;

    .line 312
    invoke-virtual {v4, v12, v13}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v4

    invoke-direct {v7, v4}, Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;-><init>(Ljava/lang/Object;)V

    .line 314
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 315
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v12, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v13, 0x4d6

    .line 316
    invoke-interface {v12, v13}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-class v12, Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;

    const-string v13, "attribute"

    .line 317
    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    new-instance v12, Linfo/flowersoft/theotown/stages/SettingsStage$8;

    invoke-direct {v12, v1, v7}, Linfo/flowersoft/theotown/stages/SettingsStage$8;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;)V

    const/16 v38, 0x1

    move-object/from16 v33, v4

    move-object/from16 v36, v8

    move-object/from16 v35, v9

    move-object/from16 v39, v12

    .line 315
    invoke-virtual/range {v33 .. v39}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 327
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 328
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x6f8

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addLink(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 334
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderConfig;->cachedValues()[Linfo/flowersoft/theotown/resources/ShaderConfig;

    move-result-object v4

    array-length v4, v4

    new-array v7, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_3ba
    if-ge v8, v4, :cond_3d3

    .line 336
    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderConfig;->cachedValues()[Linfo/flowersoft/theotown/resources/ShaderConfig;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v12}, Linfo/flowersoft/theotown/resources/ShaderConfig;->getNameId()I

    move-result v12

    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v40, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3ba

    .line 338
    :cond_3d3
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x5e1

    .line 339
    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    .line 340
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderConfig;->cachedValues()[Linfo/flowersoft/theotown/resources/ShaderConfig;

    move-result-object v36

    const-string v8, "shaderConfig"

    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    new-instance v8, Linfo/flowersoft/theotown/stages/SettingsStage$9;

    invoke-direct {v8, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$9;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/16 v38, 0x1

    move-object/from16 v33, v4

    move-object/from16 v35, v7

    move-object/from16 v39, v8

    .line 338
    invoke-virtual/range {v33 .. v39}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 350
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x843

    .line 351
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v22

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x7f4

    .line 353
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v33

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x143

    .line 354
    invoke-interface {v7, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const v12, 0x40066666    # 2.1f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7, v12}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 355
    invoke-interface {v7, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const v12, 0x400ccccd    # 2.2f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7, v12}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 356
    invoke-interface {v7, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const v12, 0x4019999a    # 2.4f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7, v12}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 357
    invoke-interface {v7, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const v9, 0x402ccccd    # 2.7f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0xc90

    .line 358
    invoke-interface {v7, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v38

    filled-new-array/range {v33 .. v38}, [Ljava/lang/String;

    move-result-object v23

    const/4 v7, 0x0

    .line 361
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    const v9, 0x3dcccccd    # 0.1f

    .line 362
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v34

    const v9, 0x3e4ccccd    # 0.2f

    .line 363
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    const v9, 0x3ecccccd    # 0.4f

    .line 364
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    const v9, 0x3f333333    # 0.7f

    .line 365
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v37

    const/high16 v9, 0x3f800000    # 1.0f

    .line 366
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v38

    filled-new-array/range {v33 .. v38}, [Ljava/lang/Float;

    move-result-object v24

    const-string v9, "depthFactor"

    .line 368
    invoke-virtual {v11, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v21, v4

    .line 350
    invoke-virtual/range {v21 .. v26}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 371
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x5f3

    .line 372
    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x960

    .line 374
    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v45

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x962

    .line 375
    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v46

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x95b

    .line 376
    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v47

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 377
    invoke-interface {v9, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v48

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x3ff

    .line 378
    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v49

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x408

    .line 379
    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v50

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x407

    .line 380
    invoke-interface {v9, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v51

    filled-new-array/range {v45 .. v51}, [Ljava/lang/String;

    move-result-object v35

    const/16 v9, -0xa

    .line 383
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, -0x5

    .line 384
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/4 v12, -0x2

    .line 385
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v28, 0x2

    .line 387
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/4 v12, 0x5

    .line 388
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v13, 0xa

    .line 389
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v23, v20

    move-object/from16 v20, v9

    filled-new-array/range {v20 .. v26}, [Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v9, v23

    move/from16 v20, v7

    const-string v7, "stretchFactor"

    .line 391
    invoke-virtual {v11, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v33, v4

    .line 371
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 394
    sget v4, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    const/4 v7, 0x1

    if-eq v4, v7, :cond_534

    const/4 v7, 0x2

    if-eq v4, v7, :cond_534

    sget v4, Linfo/flowersoft/theotown/resources/Settings;->depthFactor:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_537

    sget v4, Linfo/flowersoft/theotown/resources/Settings;->stretchFactor:I

    if-eqz v4, :cond_534

    goto :goto_537

    :cond_534
    move/from16 v20, v13

    goto :goto_562

    .line 398
    :cond_537
    :goto_537
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    move/from16 v20, v13

    const/16 v13, 0xb67

    .line 400
    invoke-interface {v7, v13}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    iget-object v13, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x357

    .line 401
    invoke-interface {v13, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v13

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x25c

    .line 402
    invoke-interface {v8, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v13, v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 399
    invoke-static {v7, v8}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v8, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    .line 398
    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addSettingsInfoItem(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 408
    :goto_562
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x75c

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "useBlur"

    .line 409
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_572
    .catch Ljava/lang/NoSuchFieldException; {:try_start_335 .. :try_end_572} :catch_34e

    const/4 v12, 0x1

    .line 408
    :try_start_573
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_576
    .catch Ljava/lang/NoSuchFieldException; {:try_start_573 .. :try_end_576} :catch_17de

    .line 411
    :try_start_576
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x37d

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "weather"

    .line 412
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_586
    .catch Ljava/lang/NoSuchFieldException; {:try_start_576 .. :try_end_586} :catch_34e

    const/4 v12, 0x1

    .line 411
    :try_start_587
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_58a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_587 .. :try_end_58a} :catch_17de

    .line 413
    :try_start_58a
    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    if-eqz v4, :cond_5a2

    .line 414
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x723

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "weatherLightning"

    .line 415
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v12, 0x0

    .line 414
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 418
    :cond_5a2
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xd1b

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hideLabels"

    .line 419
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v12, 0x0

    .line 418
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 421
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x659

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawPedestrians"

    .line 422
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v12, 0x0

    .line 421
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 424
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xb44

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "groundBlending"

    .line 425
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8
    :try_end_5da
    .catch Ljava/lang/NoSuchFieldException; {:try_start_58a .. :try_end_5da} :catch_34e

    const/4 v12, 0x1

    .line 424
    :try_start_5db
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_5de
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5db .. :try_end_5de} :catch_17de

    .line 427
    :try_start_5de
    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->groundBlending:Z

    if-eqz v4, :cond_5f6

    .line 428
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x72b

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "adaptiveGroundBlending"

    .line 429
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v12, 0x0

    .line 428
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 432
    :cond_5f6
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xc71

    .line 433
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "terrainShading"

    .line 434
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v12, 0x0

    .line 432
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 436
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xab1

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawNeighbors"

    .line 437
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v12, 0x0

    .line 436
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 439
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v4

    sget-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v4, v7, :cond_63c

    .line 440
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x240

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "highlightHoveredBuilding"

    .line 441
    invoke-virtual {v11, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v12, 0x0

    .line 440
    invoke-virtual {v4, v7, v8, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 453
    :cond_63c
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_DECORATION:I

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x2f3

    invoke-interface {v8, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 455
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 456
    new-instance v7, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v7, v8, v15}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 457
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->THEMES:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_65d
    :goto_65d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_679

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/draft/ThemeDraft;

    .line 458
    iget-boolean v13, v12, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v13, :cond_65d

    iget-boolean v13, v12, Linfo/flowersoft/theotown/draft/Draft;->loaded:Z

    if-eqz v13, :cond_65d

    iget-boolean v13, v12, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v13, :cond_65d

    .line 459
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65d

    .line 462
    :cond_679
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/16 v29, 0x3

    add-int/lit8 v8, v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    .line 463
    iget-object v12, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v13, 0x287

    invoke-interface {v12, v13}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v12

    const/16 v31, 0x0

    aput-object v12, v8, v31

    .line 464
    iget-object v12, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v13, 0xb28

    invoke-interface {v12, v13}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v12
    :try_end_697
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5de .. :try_end_697} :catch_34e

    const/4 v13, 0x1

    :try_start_698
    aput-object v12, v8, v13

    .line 465
    iget-object v12, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;
    :try_end_69c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_698 .. :try_end_69c} :catch_17db

    const/16 v13, 0x8e9

    :try_start_69e
    invoke-interface {v12, v13}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v8, v13
    :try_end_6a5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_69e .. :try_end_6a5} :catch_34e

    move-object/from16 v24, v2

    move-object/from16 v23, v5

    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 467
    :try_start_6ab
    filled-new-array {v13, v5, v12}, [I

    move-result-object v2
    :try_end_6af
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6ab .. :try_end_6af} :catch_17d8

    const/4 v5, 0x0

    .line 469
    :goto_6b0
    :try_start_6b0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_6d2

    .line 470
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/draft/ThemeDraft;

    const/16 v29, 0x3

    add-int/lit8 v13, v5, 0x3

    move/from16 v25, v5

    .line 471
    iget-object v5, v12, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v7, v12, v5}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v13

    const/16 v40, 0x1

    add-int/lit8 v5, v25, 0x1

    goto :goto_6b0

    :catch_6cf
    move-exception v0

    goto/16 :goto_351

    .line 474
    :cond_6d2
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x5a6

    .line 475
    invoke-interface {v7, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Linfo/flowersoft/theotown/stages/SettingsStage$10;

    invoke-direct {v12, v1, v2, v4}, Linfo/flowersoft/theotown/stages/SettingsStage$10;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;[ILjava/util/List;)V
    :try_end_6e1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6b0 .. :try_end_6e1} :catch_6cf

    const/4 v13, 0x1

    .line 474
    :try_start_6e2
    invoke-virtual {v5, v7, v8, v13, v12}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;ZLinfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V
    :try_end_6e5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6e2 .. :try_end_6e5} :catch_17c9

    .line 501
    :try_start_6e5
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x20b

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addLink(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 509
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xc37

    .line 510
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " - "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    const/16 v12, 0x64

    add-int/2addr v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, " + "

    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    new-instance v7, Linfo/flowersoft/theotown/stages/SettingsStage$11;

    invoke-direct {v7, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$11;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    :try_end_724
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6e5 .. :try_end_724} :catch_6cf

    const/4 v13, 0x1

    .line 509
    :try_start_725
    invoke-virtual {v2, v4, v5, v13, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;ZLinfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V
    :try_end_728
    .catch Ljava/lang/NoSuchFieldException; {:try_start_725 .. :try_end_728} :catch_17c9

    .line 543
    :try_start_728
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x55d

    .line 544
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x5d5

    .line 545
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xb91

    .line 546
    invoke-interface {v5, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x2cb

    .line 547
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/String;

    move-result-object v35

    const/4 v4, -0x1

    .line 548
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v9, v14}, [Ljava/lang/Integer;

    move-result-object v36

    const-string v4, "fontScaling"

    .line 549
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    new-instance v4, Linfo/flowersoft/theotown/stages/SettingsStage$12;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$12;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/16 v38, 0x0

    move-object/from16 v33, v2

    move-object/from16 v39, v4

    .line 543
    invoke-virtual/range {v33 .. v39}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 557
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x610

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "leftMinimap"

    .line 558
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_77b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_728 .. :try_end_77b} :catch_6cf

    const/4 v13, 0x1

    .line 557
    :try_start_77c
    invoke-virtual {v2, v4, v5, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_77f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_77c .. :try_end_77f} :catch_17c9

    .line 560
    :try_start_77f
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb2b

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shortMoney"

    .line 561
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_78f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_77f .. :try_end_78f} :catch_6cf

    const/4 v13, 0x1

    .line 560
    :try_start_790
    invoke-virtual {v2, v4, v5, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_793
    .catch Ljava/lang/NoSuchFieldException; {:try_start_790 .. :try_end_793} :catch_17c9

    .line 563
    :try_start_793
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xaee

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "edgeGradients"

    .line 564
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 563
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 566
    sget-object v2, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/CursorManager;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_893

    .line 567
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa56

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "modifyCursor"

    .line 568
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v13, 0x1

    .line 567
    invoke-virtual {v2, v4, v5, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 570
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->modifyCursor:Z

    if-eqz v2, :cond_893

    .line 571
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa92

    .line 572
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb1d

    .line 574
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v45

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x1cb

    .line 575
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v46

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x4a

    .line 576
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v47

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x759

    .line 577
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v48

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x678

    .line 578
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v49

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb70

    .line 579
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v50

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x869

    .line 580
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v51

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x63b

    .line 581
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v52

    filled-new-array/range {v45 .. v52}, [Ljava/lang/String;

    move-result-object v35

    const-string v45, ""

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->Dark:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 585
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v46

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->Blue:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 586
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v47

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->Gold:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 587
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v48

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->CityLights:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 588
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v49

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->Aurora:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 589
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v50

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->Steampunk:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 590
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v51

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->Cyberpunk:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 591
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v52

    filled-new-array/range {v45 .. v52}, [Ljava/lang/String;

    move-result-object v36

    const-string v4, "cursorStyle"

    .line 593
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v33, v2

    .line 571
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    const/4 v2, 0x4

    .line 598
    new-array v4, v2, [Ljava/lang/String;

    .line 599
    new-array v5, v2, [Ljava/lang/Integer;

    const/4 v7, 0x0

    :goto_858
    if-ge v7, v2, :cond_878

    const/16 v40, 0x1

    add-int v2, v40, v7

    .line 602
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 603
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    move v7, v2

    const/4 v2, 0x4

    goto :goto_858

    .line 605
    :cond_878
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xdca

    .line 606
    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v6, "cursorScaling"

    .line 609
    invoke-virtual {v11, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    .line 605
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 619
    :cond_893
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_MUSIC:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xb0c

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 621
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v9, v2, v4, v5, v6}, [Ljava/lang/Integer;

    move-result-object v36

    const/4 v2, 0x5

    .line 622
    new-array v4, v2, [Ljava/lang/String;

    .line 623
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x7f4

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/16 v31, 0x0

    aput-object v5, v4, v31

    const/4 v5, 0x1

    :goto_8c6
    if-ge v5, v2, :cond_8dc

    .line 624
    const-string v2, "%d%%"

    aget-object v6, v36, v5

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/16 v40, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x5

    goto :goto_8c6

    .line 626
    :cond_8dc
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xbf0

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v5, "generalSoundLevel"

    .line 628
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    new-instance v39, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda5;

    invoke-direct/range {v39 .. v39}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda5;-><init>()V

    const/16 v38, 0x1

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    .line 626
    invoke-virtual/range {v33 .. v39}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 633
    sget v2, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    if-lez v2, :cond_983

    .line 644
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x4fc

    .line 645
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    .line 644
    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addLink(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 648
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa2f

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v4, "soundUILevel"

    .line 650
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v33, v2

    .line 648
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 651
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x9ee

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v4, "soundGameLevel"

    .line 653
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v33, v2

    .line 651
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 654
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa7b

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v4, "soundWeatherLevel"

    .line 656
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v33, v2

    .line 654
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 657
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd97

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v4, "soundAmbientLevel"

    .line 659
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v33, v2

    .line 657
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 660
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xcc8

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    const-string v4, "soundPluginLevel"

    .line 662
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v33, v2

    .line 660
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 674
    :cond_983
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x357

    invoke-interface {v5, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 676
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x25c

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xab

    .line 678
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x8d6

    .line 679
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xa08

    .line 680
    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xce1

    .line 681
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v35

    const/16 v28, 0x2

    .line 686
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v29, 0x3

    .line 687
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v9, v14, v4, v5}, [Ljava/lang/Integer;

    move-result-object v36

    const-string v4, "smoothZoom"

    .line 689
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v33, v2

    .line 676
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 691
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_9f9

    .line 692
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x8cf

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scrollEdges"

    .line 693
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 692
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 696
    :cond_9f9
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x338

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "supportDrawInTwoModeTools"

    .line 697
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_a09
    .catch Ljava/lang/NoSuchFieldException; {:try_start_793 .. :try_end_a09} :catch_6cf

    const/4 v13, 0x1

    .line 696
    :try_start_a0a
    invoke-virtual {v2, v4, v5, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_a0d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a0a .. :try_end_a0d} :catch_17c9

    .line 699
    :try_start_a0d
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd7e

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "smoothScrolling"

    .line 700
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 699
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 702
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x8a8

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "touchRotate"

    .line 703
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 702
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 710
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v2, v4, :cond_a4b

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 711
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->isMouse()Z

    move-result v2

    if-eqz v2, :cond_a75

    .line 712
    :cond_a4b
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_RED_BUTTON:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x881

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 713
    invoke-static {}, Linfo/flowersoft/theotown/input/KeyAction;->cachedValues()[Linfo/flowersoft/theotown/input/KeyAction;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_a60
    if-ge v5, v4, :cond_a75

    aget-object v6, v2, v5

    .line 714
    iget-object v7, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    new-instance v8, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda7;

    invoke-direct {v8}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda7;-><init>()V

    iget-object v13, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v7, v6, v8, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addHotkeyItem(Linfo/flowersoft/theotown/input/KeyAction;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/16 v40, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_a60

    .line 734
    :cond_a75
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xa1c

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 736
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb95

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb27    # 4.001E-42f

    .line 738
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x6c1

    .line 739
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xbbb

    .line 740
    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x9c1

    .line 741
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v35

    const/16 v28, 0x2

    .line 742
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v9, v14, v4, v5}, [Ljava/lang/Integer;

    move-result-object v36

    const-string v4, "nightMode"

    .line 743
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    const/16 v38, 0x1

    move-object/from16 v33, v2

    .line 736
    invoke-virtual/range {v33 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 745
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd6c

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rushHour"

    .line 746
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 745
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 748
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x5b1

    .line 749
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v34

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xc4f

    .line 751
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x7d0

    .line 752
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x7f4

    .line 753
    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v35

    const/16 v28, 0x2

    .line 758
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v9, v14, v4}, [Ljava/lang/Integer;

    move-result-object v36

    const-string v4, "winter"

    .line 760
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v37

    new-instance v4, Linfo/flowersoft/theotown/stages/SettingsStage$13;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$13;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/16 v38, 0x1

    move-object/from16 v33, v2

    move-object/from16 v39, v4

    .line 748
    invoke-virtual/range {v33 .. v39}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 776
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x15c

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 778
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x9bb

    .line 779
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyLowPower"

    .line 780
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 778
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 781
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb4a

    .line 782
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyLowWater"

    .line 783
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 781
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 784
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x75e

    .line 785
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNoPower"

    .line 786
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 784
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 787
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa01

    .line 788
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNoWater"

    .line 789
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 787
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 790
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb11

    .line 791
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNoRoad"

    .line 792
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 790
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 793
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x819

    .line 794
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNoPark"

    .line 795
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 793
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 796
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x964

    .line 797
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNoSport"

    .line 798
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 796
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 799
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xc40

    .line 800
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyPollution"

    .line 801
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 799
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 802
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xac9

    .line 803
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNoise"

    .line 804
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 802
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 805
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb94

    .line 806
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyWaterWaste"

    .line 807
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 805
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 808
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x183

    .line 809
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyUnhappy"

    .line 810
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 808
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 811
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x21d

    .line 812
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyUnlocked"

    .line 813
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 811
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 814
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x96f

    .line 815
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyLowBudget"

    .line 816
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 814
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 817
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xadc

    .line 818
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyZoneNeeded"

    .line 819
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 817
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 820
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x830

    .line 821
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyPollutedPump"

    .line 822
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 820
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 823
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x7b0

    .line 824
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifySchoolOverloaded"

    .line 825
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 823
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 826
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x59f

    .line 827
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyMedicOverloaded"

    .line 828
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 826
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 829
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x5ee

    .line 830
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyDestroyedTile"

    .line 831
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 829
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 832
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x78f

    .line 833
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNeedLowEducation"

    .line 834
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 832
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 835
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa07

    .line 836
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyNeedHighEducation"

    .line 837
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 835
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 838
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x12b

    .line 839
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyBadTraffic"

    .line 840
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 838
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 841
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xc72

    .line 842
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyWaste"

    .line 843
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 841
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 844
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x933

    .line 845
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyBodyDisposal"

    .line 846
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 844
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 847
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x840

    .line 848
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notifyBadAttribute"

    .line 849
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 847
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 858
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_NUKE:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x21a

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 863
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->catastrophes:Z

    if-eqz v2, :cond_da1

    .line 866
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x3a8

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "disasterMeteorite"

    .line 867
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 866
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 868
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x382

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "disasterEarthquake"

    .line 869
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 868
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 872
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x72a

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "disasterFlooding"

    .line 873
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 872
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 876
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xbdf

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "disasterNuke"

    .line 877
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 876
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 878
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x475

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "disasterTornado"

    .line 879
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 878
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 880
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x403

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "disasterUfo"

    .line 881
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x0

    .line 880
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 898
    :cond_da1
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x555

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 900
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb48

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "showTrafficMarkerInRoadTool"

    .line 901
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_dc0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a0d .. :try_end_dc0} :catch_6cf

    const/4 v13, 0x1

    .line 900
    :try_start_dc1
    invoke-virtual {v2, v4, v5, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_dc4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_dc1 .. :try_end_dc4} :catch_17c9

    .line 903
    :try_start_dc4
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x2b7

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "autoRoadForZones"

    .line 904
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_dd4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_dc4 .. :try_end_dd4} :catch_6cf

    const/4 v13, 0x1

    .line 903
    :try_start_dd5
    invoke-virtual {v2, v4, v5, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_dd8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_dd5 .. :try_end_dd8} :catch_17c9

    .line 906
    :try_start_dd8
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    if-eqz v2, :cond_e4c

    const/16 v28, 0x2

    .line 907
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v44, 0x4

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const/16 v22, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    const/16 v32, 0x6

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    filled-new-array/range {v33 .. v39}, [Ljava/lang/Integer;

    move-result-object v48

    move/from16 v2, v18

    .line 908
    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_e0d
    if-ge v5, v2, :cond_e1c

    .line 910
    aget-object v6, v48, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v40, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e0d

    .line 912
    :cond_e1c
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x768

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v46

    const-string v5, "roadZoneWidth"

    .line 914
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v45, v2

    move-object/from16 v47, v4

    .line 912
    invoke-virtual/range {v45 .. v50}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 915
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x7be

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v46

    const-string v4, "roadZoneHeight"

    .line 917
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v45, v2

    .line 915
    invoke-virtual/range {v45 .. v50}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 927
    :cond_e4c
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x8f4

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 929
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xcf3

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "translatePlugins"

    .line 930
    invoke-virtual {v11, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/stages/SettingsStage$14;

    invoke-direct {v6, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$14;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    :try_end_e70
    .catch Ljava/lang/NoSuchFieldException; {:try_start_dd8 .. :try_end_e70} :catch_6cf

    const/4 v13, 0x1

    .line 929
    :try_start_e71
    invoke-virtual {v2, v4, v5, v13, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V
    :try_end_e74
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e71 .. :try_end_e74} :catch_17c9

    .line 936
    :try_start_e74
    sget-object v2, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->INSTANCE:Linfo/flowersoft/theotown/resources/PluginScriptPolicy;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->getPolicies()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_e92

    .line 937
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x739

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda8;

    invoke-direct {v5, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addLink(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 942
    :cond_e92
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    const-string v4, "settings"

    .line 943
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v2

    if-eqz v2, :cond_ea3

    .line 945
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->collectInvoke()Ljava/util/List;

    move-result-object v2

    goto :goto_ea4

    :cond_ea3
    const/4 v2, 0x0

    :goto_ea4
    if-eqz v2, :cond_1107

    .line 947
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1107

    .line 949
    new-instance v4, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v4, v5, v15}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 951
    :goto_eb5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1107

    .line 952
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/blueflower/stapel2d/util/Tuple;

    .line 953
    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/scripting/Script;

    .line 954
    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvm2/LuaValue;

    .line 956
    invoke-virtual {v7}, Lvm2/LuaValue;->istable()Z

    move-result v13

    if-eqz v13, :cond_10f2

    .line 957
    invoke-virtual {v7, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v13

    invoke-virtual {v13}, Lvm2/LuaValue;->isstring()Z

    move-result v13

    if-eqz v13, :cond_ee5

    .line 958
    filled-new-array {v7}, [Lvm2/LuaValue;

    move-result-object v7

    invoke-static {v7}, Lvm2/LuaValue;->tableOf([Lvm2/LuaValue;)Lvm2/LuaTable;

    move-result-object v7

    .line 961
    :cond_ee5
    invoke-virtual {v7}, Lvm2/LuaValue;->length()I

    move-result v13

    if-lez v13, :cond_10f2

    .line 962
    invoke-virtual {v8}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v13

    if-nez v13, :cond_efa

    .line 966
    invoke-virtual {v8}, Linfo/flowersoft/theotown/scripting/Script;->getParent()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/scripting/Script;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_f22

    .line 968
    :cond_efa
    iget v8, v13, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez v8, :cond_f13

    .line 969
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v8

    iget v14, v13, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    .line 970
    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v8

    if-eqz v8, :cond_f13

    .line 972
    invoke-virtual {v8}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTranslatedTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_f14

    :cond_f13
    const/4 v8, 0x0

    :goto_f14
    if-nez v8, :cond_f1e

    .line 976
    iget-object v14, v13, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v14, :cond_f1e

    .line 977
    invoke-virtual {v14}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_f1e
    if-nez v8, :cond_f22

    .line 981
    iget-object v8, v13, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    :cond_f22
    :goto_f22
    if-eqz v6, :cond_f2a

    .line 985
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f43

    .line 986
    :cond_f2a
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (plugin)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    move-object v6, v8

    :cond_f43
    const/4 v8, 0x1

    .line 990
    :goto_f44
    invoke-virtual {v7, v8}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v13

    invoke-virtual {v13}, Lvm2/LuaValue;->isnil()Z

    move-result v13

    if-nez v13, :cond_10e3

    .line 991
    invoke-virtual {v7, v8}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v13

    .line 992
    invoke-virtual {v13, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v14

    const-string v15, "No name specified"

    invoke-virtual {v14, v15}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 993
    const-string v15, "desc"

    invoke-virtual {v13, v15}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v15

    move/from16 v18, v12

    .line 994
    invoke-virtual {v13, v10}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v12

    move-object/from16 v19, v2

    .line 995
    const-string v2, "values"

    invoke-virtual {v13, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    move-object/from16 v21, v3

    .line 996
    const-string v3, "valueNames"

    invoke-virtual {v13, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    move-object/from16 v25, v4

    .line 997
    const-string v4, "onReset"

    invoke-virtual {v13, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    move/from16 v26, v5

    .line 999
    new-instance v5, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    invoke-direct {v5}, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;-><init>()V

    move-object/from16 v27, v6

    .line 1000
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 1002
    invoke-virtual {v12}, Lvm2/LuaValue;->isboolean()Z

    move-result v6
    :try_end_f92
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e74 .. :try_end_f92} :catch_6cf

    move/from16 v32, v6

    const-class v6, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    move-object/from16 v39, v7

    const-string v7, "onChange"

    if-eqz v32, :cond_fcb

    :try_start_f9c
    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v32

    if-eqz v32, :cond_fcb

    invoke-virtual {v3}, Lvm2/LuaValue;->isnil()Z

    move-result v32

    if-eqz v32, :cond_fcb

    .line 1004
    invoke-virtual {v13, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v2

    .line 1005
    invoke-virtual {v12}, Lvm2/LuaValue;->checkboolean()Z

    move-result v3

    iput-boolean v3, v5, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;->bool:Z

    .line 1006
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    const-string v7, "bool"

    .line 1007
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    new-instance v7, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda9;

    invoke-direct {v7, v2, v5}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda9;-><init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V

    const/4 v13, 0x1

    .line 1006
    invoke-virtual {v3, v14, v6, v13, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    :goto_fc7
    move/from16 v42, v8

    goto/16 :goto_10b9

    .line 1011
    :cond_fcb
    invoke-virtual {v12}, Lvm2/LuaValue;->isstring()Z

    move-result v32

    if-eqz v32, :cond_1008

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v32

    if-eqz v32, :cond_1008

    .line 1013
    invoke-virtual {v13, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v2

    .line 1014
    invoke-virtual {v12}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;->text:Ljava/lang/String;

    .line 1015
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    const-string v7, "Enter a new text"

    .line 1016
    invoke-virtual {v15, v7}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v7, "text"

    .line 1017
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v35

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v7, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda10;

    invoke-direct {v7, v2, v5}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda10;-><init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V

    const/16 v36, 0x1

    move-object/from16 v32, v3

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v33, v14

    .line 1015
    invoke-virtual/range {v32 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V

    goto :goto_fc7

    :cond_1008
    move-object/from16 v33, v14

    .line 1022
    invoke-virtual {v2}, Lvm2/LuaValue;->istable()Z

    move-result v14

    if-eqz v14, :cond_108f

    invoke-virtual {v2}, Lvm2/LuaValue;->length()I

    move-result v14

    if-lez v14, :cond_108f

    .line 1024
    invoke-virtual {v13, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v7

    invoke-virtual {v7}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v7

    .line 1025
    iput-object v12, v5, Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;->lua:Lvm2/LuaValue;

    .line 1026
    invoke-virtual {v2}, Lvm2/LuaValue;->length()I

    move-result v12

    new-array v13, v12, [Lvm2/LuaValue;

    .line 1027
    new-array v14, v12, [Ljava/lang/String;

    const/4 v15, 0x1

    :goto_1029
    if-gt v15, v12, :cond_1072

    const/16 v40, 0x1

    add-int/lit8 v32, v15, -0x1

    .line 1029
    invoke-virtual {v2, v15}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v34

    aput-object v34, v13, v32

    .line 1030
    invoke-virtual {v3}, Lvm2/LuaValue;->isnil()Z

    move-result v34

    if-nez v34, :cond_1045

    invoke-virtual {v3, v15}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lvm2/LuaValue;->isnil()Z

    move-result v34

    if-eqz v34, :cond_104a

    :cond_1045
    move-object/from16 v35, v3

    move/from16 v42, v8

    goto :goto_105f

    :cond_104a
    move/from16 v42, v8

    .line 1032
    invoke-virtual {v3, v15}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v2, v15}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v34

    move-object/from16 v35, v3

    invoke-virtual/range {v34 .. v34}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1067

    .line 1031
    :goto_105f
    invoke-virtual {v2, v15}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v3

    .line 1032
    :goto_1067
    aput-object v3, v14, v32

    const/16 v40, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v35

    move/from16 v8, v42

    goto :goto_1029

    :cond_1072
    move/from16 v42, v8

    .line 1035
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    const-string v3, "lua"

    .line 1038
    invoke-virtual {v6, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v36

    new-instance v3, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda11;

    invoke-direct {v3, v7, v5}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda11;-><init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V

    const/16 v37, 0x1

    move-object/from16 v32, v2

    move-object/from16 v38, v3

    move-object/from16 v35, v13

    move-object/from16 v34, v14

    .line 1035
    invoke-virtual/range {v32 .. v38}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    goto :goto_10b9

    :cond_108f
    move/from16 v42, v8

    move-object/from16 v3, v33

    .line 1042
    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_10b9

    invoke-virtual {v12}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_10b9

    .line 1043
    invoke-virtual {v13, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    .line 1044
    invoke-virtual {v2}, Lvm2/LuaValue;->isfunction()Z

    move-result v5

    if-eqz v5, :cond_10b4

    .line 1046
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    new-instance v6, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda12;

    invoke-direct {v6, v2}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda12;-><init>(Lvm2/LuaValue;)V

    invoke-virtual {v5, v3, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addLink(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_10b9

    .line 1049
    :cond_10b4
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addSettingsInfoItem(Ljava/lang/String;)V

    .line 1053
    :cond_10b9
    :goto_10b9
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 1055
    invoke-virtual {v4}, Lvm2/LuaValue;->isfunction()Z

    move-result v2

    if-eqz v2, :cond_10cf

    .line 1056
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->resetActions:Ljava/util/List;

    new-instance v3, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda1;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda1;-><init>(Lvm2/LuaValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10cf
    const/16 v40, 0x1

    add-int/lit8 v8, v42, 0x1

    move/from16 v12, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v6, v27

    move-object/from16 v7, v39

    goto/16 :goto_f44

    :cond_10e3
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v27, v6

    :goto_10ed
    move/from16 v18, v12

    const/16 v40, 0x1

    goto :goto_10fb

    :cond_10f2
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v25, v4

    move/from16 v26, v5

    goto :goto_10ed

    :goto_10fb
    add-int/lit8 v5, v26, 0x1

    move/from16 v12, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v25

    goto/16 :goto_eb5

    :cond_1107
    move/from16 v18, v12

    .line 1071
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1072
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    invoke-interface {v3}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getEffectiveLocale()Ljava/util/Locale;

    move-result-object v3

    .line 1073
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112a

    move-object v3, v2

    .line 1074
    :cond_112a
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v4

    invoke-interface {v4}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getSelectedLocale()Ljava/util/Locale;

    move-result-object v4

    .line 1076
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP:I

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v10, 0x3ea

    invoke-interface {v8, v10}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 1077
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xea

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addSettingsInfoItem(Ljava/lang/String;)V

    .line 1078
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x81

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 1079
    invoke-virtual {v2, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1078
    invoke-static {v7, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Linfo/flowersoft/theotown/stages/SettingsStage$15;

    invoke-direct {v7, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$15;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    :try_end_116b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f9c .. :try_end_116b} :catch_6cf

    const/4 v13, 0x1

    :try_start_116c
    invoke-virtual {v6, v2, v7, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addChoiceSettingsItem(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;Z)V
    :try_end_116f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_116c .. :try_end_116f} :catch_17c9

    .line 1089
    :try_start_116f
    invoke-static {}, Linfo/flowersoft/theotown/stages/SettingsStage;->getAvailableLocales()Ljava/util/List;

    move-result-object v2

    .line 1090
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1177
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    .line 1091
    invoke-virtual {v6, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1199

    .line 1093
    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xd1f

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 1095
    :cond_1199
    iget-object v8, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    new-instance v10, Linfo/flowersoft/theotown/stages/SettingsStage$16;

    invoke-direct {v10, v1, v6, v4}, Linfo/flowersoft/theotown/stages/SettingsStage$16;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;Ljava/util/Locale;Ljava/util/Locale;)V

    const/4 v13, 0x1

    invoke-virtual {v8, v7, v10, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addChoiceSettingsItem(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;Z)V

    goto :goto_1177

    .line 1114
    :cond_11a5
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_OTHER:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x2d2

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 1117
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x59c

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "energySaving"

    .line 1118
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_11c4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_116f .. :try_end_11c4} :catch_6cf

    const/4 v13, 0x1

    .line 1117
    :try_start_11c5
    invoke-virtual {v2, v3, v4, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_11c8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11c5 .. :try_end_11c8} :catch_17c9

    .line 1120
    :try_start_11c8
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->energySaving:Z

    if-eqz v2, :cond_11e0

    .line 1121
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xb85

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "energySavingPlus"

    .line 1122
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x0

    .line 1121
    invoke-virtual {v2, v3, v4, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1125
    :cond_11e0
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {v2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1203

    .line 1126
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6f3

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Linfo/flowersoft/theotown/mechanics/GameHandler;

    const-string v5, "useServices"

    .line 1127
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda2;-><init>()V

    const/4 v7, 0x0

    .line 1126
    invoke-virtual {v2, v3, v4, v7, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    :cond_1203
    const/16 v22, 0x5

    .line 1132
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v9, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v35

    const/4 v2, 0x4

    .line 1133
    new-array v3, v2, [Ljava/lang/String;

    .line 1134
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x54a

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/16 v31, 0x0

    aput-object v4, v3, v31

    const/4 v4, 0x1

    :goto_1227
    if-ge v4, v2, :cond_1242

    .line 1136
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x414

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v35, v4

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v40, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1227

    .line 1138
    :cond_1242
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb64

    .line 1139
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v33

    const-string v4, "autoSaveMinutes"

    .line 1142
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v36

    const/16 v37, 0x0

    move-object/from16 v32, v2

    move-object/from16 v34, v3

    .line 1138
    invoke-virtual/range {v32 .. v37}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 1145
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x820

    .line 1146
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "autoLoading"

    .line 1147
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x0

    .line 1145
    invoke-virtual {v2, v3, v4, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1148
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xace

    .line 1149
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "autoSave"

    .line 1150
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x0

    .line 1148
    invoke-virtual {v2, v3, v4, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    const/4 v12, 0x3

    .line 1152
    new-array v2, v12, [Ljava/lang/String;

    const/16 v41, 0x0

    aput-object v41, v2, v7

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x89b

    .line 1154
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1292
    .catch Ljava/lang/NoSuchFieldException; {:try_start_11c8 .. :try_end_1292} :catch_6cf

    const/16 v40, 0x1

    :try_start_1294
    aput-object v3, v2, v40
    :try_end_1296
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1294 .. :try_end_1296} :catch_17d5

    :try_start_1296
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x37a

    .line 1155
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v28, 0x2

    aput-object v3, v2, v28

    .line 1157
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x167

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 1158
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->getEffectiveUnits()Linfo/flowersoft/theotown/util/UnitsSetting;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/util/UnitsSetting;->Metric:Linfo/flowersoft/theotown/util/UnitsSetting;

    if-ne v4, v5, :cond_12b7

    const/16 v40, 0x1

    aget-object v4, v2, v40

    goto :goto_12bb

    :cond_12b7
    const/16 v28, 0x2

    aget-object v4, v2, v28

    :goto_12bb
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1157
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v31, 0x0

    aput-object v3, v2, v31

    .line 1160
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x892

    invoke-interface {v4, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v33

    sget-object v4, Linfo/flowersoft/theotown/util/UnitsSetting;->Imperial:Linfo/flowersoft/theotown/util/UnitsSetting;

    const/4 v13, 0x0

    filled-new-array {v13, v5, v4}, [Ljava/lang/Object;

    move-result-object v35

    const-string v4, "units"

    .line 1162
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v36

    const/16 v37, 0x0

    move-object/from16 v34, v2

    move-object/from16 v32, v3

    .line 1160
    invoke-virtual/range {v32 .. v37}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 1166
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x711

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "debugMode"

    .line 1167
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_12f7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1296 .. :try_end_12f7} :catch_6cf

    const/4 v13, 0x1

    .line 1166
    :try_start_12f8
    invoke-virtual {v2, v3, v4, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_12fb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12f8 .. :try_end_12fb} :catch_17c9

    .line 1169
    :try_start_12fb
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-nez v2, :cond_1303

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v2, :cond_1315

    .line 1170
    :cond_1303
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v3, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "experimentalFeatures"

    .line 1171
    invoke-virtual {v11, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_1311
    .catch Ljava/lang/NoSuchFieldException; {:try_start_12fb .. :try_end_1311} :catch_6cf

    const/4 v13, 0x1

    .line 1170
    :try_start_1312
    invoke-virtual {v2, v3, v4, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_1315
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1312 .. :try_end_1315} :catch_17c9

    .line 1186
    :cond_1315
    :try_start_1315
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v2, :cond_17d3

    .line 1187
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DEBUGINFO:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v4, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addCategory(ILjava/lang/String;)V

    .line 1190
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x743

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "transparencyInBuildMode"

    .line 1191
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1190
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1193
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x591

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gridInBuildMode"

    .line 1194
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1193
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1199
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x675

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "smoothCarMovement"

    .line 1200
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1199
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1202
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x4b3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawWaterSparkle"

    .line 1203
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1202
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1205
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa0f

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawSmoke"

    .line 1206
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1205
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1208
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xaf

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawMapEdges"

    .line 1209
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1208
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1211
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x7d5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "highResolutionCityPreview"

    .line 1212
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1211
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1213
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x49

    .line 1214
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ringBuildIndicator"

    .line 1215
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1213
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1217
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x688

    .line 1218
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showRoadLength"

    .line 1219
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1217
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1221
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xbb

    .line 1222
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "renderPollution"

    .line 1223
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1221
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1225
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x8ec

    .line 1226
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cloudShadows"

    .line 1227
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1225
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1229
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5cc

    .line 1230
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawZones"

    .line 1231
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1229
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1233
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x98c

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "roadSnowOverlay"

    .line 1234
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1233
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1236
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x694

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "groundSnowOverlay"

    .line 1237
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1236
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1241
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xadd

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "verticalToolButtons"

    .line 1242
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_144e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1315 .. :try_end_144e} :catch_6cf

    const/4 v13, 0x1

    .line 1241
    :try_start_144f
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_1452
    .catch Ljava/lang/NoSuchFieldException; {:try_start_144f .. :try_end_1452} :catch_17c9

    .line 1244
    :try_start_1452
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useToolbarBuildtool:Z

    if-eqz v0, :cond_146a

    .line 1245
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa4c

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handInToolbar"

    .line 1246
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1245
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1249
    :cond_146a
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x764

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showTouchPoints"

    .line 1250
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_147a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1452 .. :try_end_147a} :catch_6cf

    const/4 v13, 0x1

    .line 1249
    :try_start_147b
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_147e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_147b .. :try_end_147e} :catch_17c9

    .line 1252
    :try_start_147e
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useToolbarBuildtool:Z

    if-eqz v0, :cond_1496

    .line 1253
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x779

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "newIndicator"

    .line 1254
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1253
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1257
    :cond_1496
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x8d2

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rightSidebar"

    .line 1258
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_14a6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_147e .. :try_end_14a6} :catch_6cf

    const/4 v13, 0x1

    .line 1257
    :try_start_14a7
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_14aa
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14a7 .. :try_end_14aa} :catch_17c9

    .line 1260
    :try_start_14aa
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x1c0

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uiAnimations"

    .line 1261
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1260
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1263
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x2dd

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "useToolbarBuildtool"

    .line 1264
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda3;-><init>()V
    :try_end_14d3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14aa .. :try_end_14d3} :catch_6cf

    const/4 v13, 0x1

    .line 1263
    :try_start_14d4
    invoke-virtual {v0, v2, v3, v13, v4}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V
    :try_end_14d7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14d4 .. :try_end_14d7} :catch_17c9

    .line 1266
    :try_start_14d7
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useToolbarBuildtool:Z

    if-eqz v0, :cond_152b

    .line 1267
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x7af

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "verticalToolbar"

    .line 1268
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v13, 0x1

    .line 1267
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1269
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x7b9

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "darkToolbar"

    .line 1270
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v13, 0x1

    .line 1269
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1271
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x766

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toolbarNames"

    .line 1272
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v13, 0x1

    .line 1271
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1273
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x758

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toolbarPrices"

    .line 1274
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v13, 0x1

    .line 1273
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1279
    :cond_152b
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa48

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "legacyBusSystem"

    .line 1280
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1279
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1282
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x319

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v25

    const-string v44, "25%"

    const-string v45, "50%"

    const-string v46, "75%"

    const-string v47, "1x"

    const-string v48, "2x"

    const-string v49, "4x"

    const-string v50, "8x"

    const-string v51, "16x"

    const-string v52, "32x"

    const-string v53, "64x"

    filled-new-array/range {v44 .. v53}, [Ljava/lang/String;

    move-result-object v26

    .line 1284
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    const/16 v2, 0xc80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    const/16 v2, 0x1900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    filled-new-array/range {v44 .. v53}, [Ljava/lang/Integer;

    move-result-object v27

    const-string v2, "carRatio"

    .line 1285
    invoke-virtual {v11, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v24, v0

    .line 1282
    invoke-virtual/range {v24 .. v29}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 1289
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa5a

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debugHotkeys"

    .line 1290
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1289
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1294
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa2a

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "roadAutoJoin"

    .line 1295
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1294
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1297
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xf5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toolHistory"

    .line 1298
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_15de
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14d7 .. :try_end_15de} :catch_6cf

    const/4 v13, 0x1

    .line 1297
    :try_start_15df
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_15e2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15df .. :try_end_15e2} :catch_17c9

    .line 1300
    :try_start_15e2
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xcbe

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "diagonalRoadTool"

    .line 1301
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1300
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1303
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x1b7

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "darkBuildTool"

    .line 1304
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1303
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1306
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xb2

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reversedBuildTool"

    .line 1307
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1306
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1309
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc3f

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buildingToolOld"

    .line 1310
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_162e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15e2 .. :try_end_162e} :catch_6cf

    const/4 v13, 0x1

    .line 1309
    :try_start_162f
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_1632
    .catch Ljava/lang/NoSuchFieldException; {:try_start_162f .. :try_end_1632} :catch_17c9

    .line 1312
    :try_start_1632
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x27d

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "useZoneRadius"

    .line 1313
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1312
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1318
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x312

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pluginTextureCache"

    .line 1319
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1318
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1323
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x4f5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "maxZoomOut"

    .line 1324
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1323
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1326
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x8e7

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pushNotifications"

    .line 1327
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/SettingsStage$17;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$17;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    :try_end_1683
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1632 .. :try_end_1683} :catch_6cf

    const/4 v13, 0x1

    .line 1326
    :try_start_1684
    invoke-virtual {v0, v2, v3, v13, v4}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V
    :try_end_1687
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1684 .. :try_end_1687} :catch_17c9

    .line 1334
    :try_start_1687
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->pushNotifications:Z

    if-eqz v0, :cond_16a4

    .line 1335
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x6ba

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pushNotificationsOnline"

    .line 1336
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/SettingsStage$18;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$18;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/4 v7, 0x0

    .line 1335
    invoke-virtual {v0, v2, v3, v7, v4}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 1346
    :cond_16a4
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x35d

    .line 1347
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "saveForScreenshot"

    .line 1348
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1346
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1350
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x147

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadStaticFiles"

    .line 1351
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1350
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1353
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x1a

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "regionOriginBackup"

    .line 1354
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1353
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1356
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x8b7

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "autoUntouchable"

    .line 1357
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1356
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1359
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x3f7

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lowResMapScreenshot"

    .line 1360
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1359
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1362
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc4d

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mapRenderingNoBackground"

    .line 1363
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1362
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1365
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x827

    .line 1366
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hideRankFeature"

    .line 1367
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1365
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1369
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x22c

    .line 1370
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "saveMinimap"

    .line 1371
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1369
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1373
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_1767

    .line 1374
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xdb1

    .line 1375
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "useLowColorDepth"

    .line 1376
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/SettingsStage$19;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$19;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/4 v13, 0x1

    .line 1374
    invoke-virtual {v0, v2, v3, v13, v4}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    .line 1389
    :cond_1767
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc0b

    .line 1390
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "realMinimapResolution"

    .line 1391
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1777
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1687 .. :try_end_1777} :catch_6cf

    const/4 v13, 0x1

    .line 1389
    :try_start_1778
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_177b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1778 .. :try_end_177b} :catch_17c9

    .line 1393
    :try_start_177b
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xb18

    .line 1394
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "biggerMinimap"

    .line 1395
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_178b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_177b .. :try_end_178b} :catch_6cf

    const/4 v13, 0x1

    .line 1393
    :try_start_178c
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_178f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_178c .. :try_end_178f} :catch_17c9

    .line 1397
    :try_start_178f
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x243

    .line 1398
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showCloseButton"

    .line 1399
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_179f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_178f .. :try_end_179f} :catch_6cf

    const/4 v13, 0x1

    .line 1397
    :try_start_17a0
    invoke-virtual {v0, v2, v3, v13}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1401
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x855

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "multiRoadDecorationSupport"

    .line 1402
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v7, 0x0

    .line 1401
    invoke-virtual {v0, v2, v3, v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 1404
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Resources;->HUGE_TEXTURE_MODE:Z

    if-eqz v0, :cond_17cb

    .line 1405
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x4cd

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addSettingsInfoItem(Ljava/lang/String;)V

    goto :goto_17cb

    :catch_17c9
    move-exception v0

    goto :goto_17e2

    .line 1408
    :cond_17cb
    :goto_17cb
    invoke-static {}, Linfo/flowersoft/theotown/util/ScreenRecorder;->getInstance()Linfo/flowersoft/theotown/util/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->isSuitable()Z
    :try_end_17d2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17a0 .. :try_end_17d2} :catch_17c9

    goto :goto_17e5

    :cond_17d3
    const/4 v13, 0x1

    goto :goto_17e5

    :catch_17d5
    move-exception v0

    goto/16 :goto_239

    :catch_17d8
    move-exception v0

    :goto_17d9
    move v13, v12

    goto :goto_17e2

    :catch_17db
    move-exception v0

    goto/16 :goto_277

    :catch_17de
    move-exception v0

    move-object/from16 v23, v5

    goto :goto_17d9

    .line 1437
    :goto_17e2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1441
    :goto_17e5
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->mergeItems()V

    .line 1443
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->openCats:[Z

    if-nez v0, :cond_17f6

    .line 1444
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->closeCategories()V

    :goto_17f3
    move/from16 v40, v13

    goto :goto_17fc

    .line 1446
    :cond_17f6
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->restoreCategories([Z)V

    goto :goto_17f3

    .line 1449
    :goto_17fc
    sget v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x16c

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Linfo/flowersoft/theotown/stages/SettingsStage$20;

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/stages/SettingsStage$20;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;Linfo/flowersoft/theotown/ui/Dialog;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v7, v40

    move-object/from16 v12, v43

    invoke-virtual/range {v12 .. v17}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 1456
    sget v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x970

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Linfo/flowersoft/theotown/stages/SettingsStage$21;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/SettingsStage$21;-><init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 1462
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-void
.end method

.method public leave()V
    .registers 2

    .line 1519
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->shiftY:F

    .line 1520
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 1522
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 1523
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->save()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 1514
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 125
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    return-void
.end method

.method public rebuild()V
    .registers 5

    .line 1539
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 1541
    new-instance v0, Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->storeCategories()[Z

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/SettingsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;F[Z)V

    .line 1542
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1543
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 1545
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V

    return-void
.end method

.method public final reset()V
    .registers 3

    .line 1496
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    const/4 v0, 0x0

    .line 1497
    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 1498
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->reset()V

    .line 1499
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->screenOrientation:I

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->applyOrientation(I)V

    .line 1500
    invoke-static {}, Linfo/flowersoft/theotown/input/KeyAction;->resetAll()V

    .line 1501
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/input/KeyActionManager;->save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 1503
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 1504
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 1505
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V

    .line 1507
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->changeLanguage(Ljava/util/Locale;)V

    const/4 v0, 0x0

    .line 1509
    :goto_33
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->resetActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage;->resetActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1533
    const-string v0, "SettingsStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass1 (info.flowersoft.theotown.stages.SettingsStage$1)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$1;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$1;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$1;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass10 (info.flowersoft.theotown.stages.SettingsStage$10)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$10;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

.field public final synthetic val$themeValues:[I

.field public final synthetic val$themes:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;[ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 478
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$10;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$10;->val$themeValues:[I

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/SettingsStage$10;->val$themes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(I)Z
    .registers 4

    const/4 v0, 0x3

    if-ge p1, v0, :cond_17

    .line 482
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ThemeManager;->getAppliedThemeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    sget v0, Linfo/flowersoft/theotown/resources/Settings;->theme:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$10;->val$themeValues:[I

    aget p1, v1, p1

    if-ne v0, p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1

    .line 485
    :cond_17
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$10;->val$themes:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ThemeDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ThemeManager;->getAppliedThemeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public select(I)V
    .registers 4

    const/4 v0, 0x3

    if-ge p1, v0, :cond_d

    .line 491
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$10;->val$themeValues:[I

    aget p1, v0, p1

    sput p1, Linfo/flowersoft/theotown/resources/Settings;->theme:I

    const/4 p1, 0x0

    .line 492
    sput-object p1, Linfo/flowersoft/theotown/resources/Settings;->themeId:Ljava/lang/String;

    goto :goto_1a

    .line 494
    :cond_d
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$10;->val$themes:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ThemeDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    sput-object p1, Linfo/flowersoft/theotown/resources/Settings;->themeId:Ljava/lang/String;

    .line 496
    :goto_1a
    sget-object p1, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/ThemeManager;->update()V

    .line 497
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass11 (info.flowersoft.theotown.stages.SettingsStage$11)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$11;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 513
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$11;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    .line 517
    sget p1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    const/16 v2, -0x32

    if-le p1, v2, :cond_b

    return v0

    :cond_b
    return v1

    :cond_c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_16

    .line 519
    sget p1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    const/16 v2, 0x64

    if-ge p1, v2, :cond_16

    return v0

    :cond_16
    return v1
.end method

.method public select(I)V
    .registers 5

    const/16 v0, 0x64

    const/16 v1, -0x32

    if-nez p1, :cond_11

    .line 529
    sget p1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    add-int/lit8 p1, p1, -0x5

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    sput p1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    return-void

    :cond_11
    const/4 v2, 0x1

    if-ne p1, v2, :cond_18

    const/4 p1, 0x0

    .line 533
    sput p1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    return-void

    :cond_18
    const/4 v2, 0x2

    if-ne p1, v2, :cond_25

    .line 536
    sget p1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    add-int/lit8 p1, p1, 0x5

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    sput p1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    :cond_25
    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass12 (info.flowersoft.theotown.stages.SettingsStage$12)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$12;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 550
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$12;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 553
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->fontScaling:I

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->applyFontScaling(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass13 (info.flowersoft.theotown.stages.SettingsStage$13)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$13;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 760
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$13;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 763
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 764
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$13;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_1f

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    .line 765
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Linfo/flowersoft/theotown/city/CityInfo;->winter:Z

    :cond_1f
    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass14 (info.flowersoft.theotown.stages.SettingsStage$14)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$14;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 930
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$14;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 933
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$14;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    sget-object v1, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/SettingsStage;->access$100(Linfo/flowersoft/theotown/stages/SettingsStage;Ljava/util/Locale;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass15 (info.flowersoft.theotown.stages.SettingsStage$15)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$15;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1079
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$15;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 1082
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$15;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getSelectedLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1079
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/SettingsStage$15;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 3

    .line 1086
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$15;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->access$100(Linfo/flowersoft/theotown/stages/SettingsStage;Ljava/util/Locale;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1079
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/SettingsStage$15;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass16 (info.flowersoft.theotown.stages.SettingsStage$16)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$16;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

.field public final synthetic val$locale:Ljava/util/Locale;

.field public final synthetic val$selectedLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;Ljava/util/Locale;Ljava/util/Locale;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1095
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$16;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$16;->val$locale:Ljava/util/Locale;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/SettingsStage$16;->val$selectedLocale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .line 1098
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$16;->val$locale:Ljava/util/Locale;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$16;->val$selectedLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1095
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/SettingsStage$16;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 3

    .line 1102
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$16;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$16;->val$locale:Ljava/util/Locale;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->access$100(Linfo/flowersoft/theotown/stages/SettingsStage;Ljava/util/Locale;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1095
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/SettingsStage$16;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass17 (info.flowersoft.theotown.stages.SettingsStage$17)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$17;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1327
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$17;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1330
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->pushNotifications:Z

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->pushNotificationsOnline:Z

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Notifications;->setSubscription(ZZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass18 (info.flowersoft.theotown.stages.SettingsStage$18)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$18;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1336
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$18;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1339
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->pushNotifications:Z

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->pushNotificationsOnline:Z

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Notifications;->setSubscription(ZZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass19 (info.flowersoft.theotown.stages.SettingsStage$19)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$19;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1376
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$19;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1379
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$19;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass2 (info.flowersoft.theotown.stages.SettingsStage$2)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$2;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$2;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$2;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->access$000(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass20 (info.flowersoft.theotown.stages.SettingsStage$20)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$20;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

.field public final synthetic val$resetDialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1449
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$20;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$20;->val$resetDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1452
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$20;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$20;->val$resetDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass21 (info.flowersoft.theotown.stages.SettingsStage$21)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$21;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1457
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$21;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1460
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$21;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass3 (info.flowersoft.theotown.stages.SettingsStage$3)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$3;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$3;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$3;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->rebuild()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass4 (info.flowersoft.theotown.stages.SettingsStage$4)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$4;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$4;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 195
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->screenOrientation:I

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->applyOrientation(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass5 (info.flowersoft.theotown.stages.SettingsStage$5)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$5;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$5;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 206
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    sget v2, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    sget v3, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->setFullscreen(ZII)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass6 (info.flowersoft.theotown.stages.SettingsStage$6)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$6;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$6;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 214
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->vsync:Z

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setVSync(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass7 (info.flowersoft.theotown.stages.SettingsStage$7)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$7;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

.field public final synthetic val$intProp:Lio/blueflower/stapel2d/util/IntValueProperty;

.field public final synthetic val$resolutions:[[I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;Lio/blueflower/stapel2d/util/IntValueProperty;[[I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$7;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$7;->val$intProp:Lio/blueflower/stapel2d/util/IntValueProperty;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/SettingsStage$7;->val$resolutions:[[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$7;->val$intProp:Lio/blueflower/stapel2d/util/IntValueProperty;

    iget v0, v0, Lio/blueflower/stapel2d/util/IntValueProperty;->value:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_d

    .line 253
    sput v2, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    .line 254
    sput v2, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    goto :goto_1e

    .line 256
    :cond_d
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/SettingsStage$7;->val$resolutions:[[I

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v3, v4

    aget v4, v4, v2

    sput v4, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    sub-int/2addr v0, v1

    .line 257
    aget-object v0, v3, v0

    aget v0, v0, v1

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    .line 259
    :goto_1e
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    if-eqz v0, :cond_34

    .line 260
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget v3, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    sget v4, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    invoke-interface {v0, v2, v3, v4}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->setFullscreen(ZII)V

    .line 261
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget v2, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    sget v3, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->setFullscreen(ZII)V

    :cond_34
    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass8 (info.flowersoft.theotown.stages.SettingsStage$8)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$8;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

.field public final synthetic val$selectedShader:Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$8;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$8;->val$selectedShader:Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 320
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$8;->val$selectedShader:Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;->attribute:Ljava/lang/Object;

    check-cast v0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->getIndex()I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->shader:I

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$8;->val$selectedShader:Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;->attribute:Ljava/lang/Object;

    check-cast v0, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderId:Ljava/lang/String;

    .line 322
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    if-eqz v0, :cond_26

    .line 323
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$8;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    const/4 v0, 0x0

    .line 324
    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    :cond_26
    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.AnonymousClass9 (info.flowersoft.theotown.stages.SettingsStage$9)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$9;
.super Ljava/lang/Object;
.source "SettingsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$9;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 343
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$9;->this$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 344
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_FONT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.LuaSetting (info.flowersoft.theotown.stages.SettingsStage$LuaSetting)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;
.super Ljava/lang/Object;
.source "SettingsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuaSetting"
.end annotation


# instance fields
.field public bool:Z

.field public lua:Lvm2/LuaValue;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage.Wrapper (info.flowersoft.theotown.stages.SettingsStage$Wrapper)
.class public Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;
.super Ljava/lang/Object;
.source "SettingsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/SettingsStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public attribute:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1560
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$Wrapper;->attribute:Ljava/lang/Object;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$1fiXisy7QLed6nTR6KgdIMCwrX0(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaValue;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaValue;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda1;->f$0:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda1;->f$0:Lvm2/LuaValue;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$cZ54Cc89TErb_6-6ux9BNOzWmWU(Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;

.field public final synthetic f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda10;->f$0:Lvm2/LuaFunction;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda10;->f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda10;->f$0:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda10;->f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$ki1A-uU7SGYqHSbLMsJKDENvKPk(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;

.field public final synthetic f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda11;->f$0:Lvm2/LuaFunction;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda11;->f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda11;->f$0:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda11;->f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$HDMEsX2JH3GjMDUVmJev4B-G7NM(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaValue;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaValue;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda12;->f$0:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda12;->f$0:Lvm2/LuaValue;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$qOvzE-UEaFguLQJpSCu3r-URGmU(Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$Qhm4TnG1cJrXUVrJJwPuIlRxGiA()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$yqa3a6MRFRxkMjMUrqEN4NgM_xg()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$Lb5LSQqKuxp7umpMlJlCaGtNgWo(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$Dde6EUJnQwD3c9nxPJtL6zWWAD4()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$1eqxJwz1DrBeVGndJQUaiB15D_A(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$zmFqtctxUuh1VVm-2QCsrJYz0E4()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/SettingsStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/SettingsStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$2RmDcFnIvFFAkQqeeaEgIDGKITE(Linfo/flowersoft/theotown/stages/SettingsStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.SettingsStage$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;

.field public final synthetic f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda9;->f$0:Lvm2/LuaFunction;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda9;->f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda9;->f$0:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/SettingsStage$$ExternalSyntheticLambda9;->f$1:Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/SettingsStage;->$r8$lambda$Pqwv0mVU7WJLpHmwUD7I1cuNyaM(Lvm2/LuaFunction;Linfo/flowersoft/theotown/stages/SettingsStage$LuaSetting;)V

    return-void
.end method
