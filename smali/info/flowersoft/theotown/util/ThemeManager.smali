###### Class info.flowersoft.theotown.util.ThemeManager (info.flowersoft.theotown.util.ThemeManager)
.class public final Linfo/flowersoft/theotown/util/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeManager.kt\ninfo/flowersoft/theotown/util/ThemeManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

.field public static appliedThemeId:Ljava/lang/String;

.field public static init:Z

.field public static isDarkMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/ThemeManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppliedThemeId()Ljava/lang/String;
    .registers 2

    .line 20
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->appliedThemeId:Ljava/lang/String;

    return-object v0
.end method

.method public final isDarkMode()Z
    .registers 2

    .line 23
    sget-boolean v0, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode:Z

    return v0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 58
    sput-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->appliedThemeId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode:Z

    .line 60
    sput-boolean v0, Linfo/flowersoft/theotown/util/ThemeManager;->init:Z

    return-void
.end method

.method public final transformColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-boolean v0, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode:Z

    if-nez v0, :cond_a

    return-object p1

    .line 76
    :cond_a
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColorInplace(Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v0, "also(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final transformColorInplace(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 5

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-boolean v0, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode:Z

    if-nez v0, :cond_a

    goto :goto_14

    .line 65
    :cond_a
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 66
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_14
    return-void

    .line 67
    :cond_15
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 68
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    return-void

    :cond_23
    const/high16 v0, 0x3f000000    # 0.5f

    .line 71
    invoke-virtual {p1, v1, v0}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public final update()V
    .registers 7

    .line 28
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->themeId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 29
    const-class v2, Linfo/flowersoft/theotown/draft/ThemeDraft;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ThemeDraft;

    if-eqz v0, :cond_18

    .line 30
    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/Draft;->loaded:Z

    if-eqz v2, :cond_18

    goto :goto_19

    :cond_18
    move-object v0, v1

    .line 31
    :goto_19
    sget v2, Linfo/flowersoft/theotown/resources/Settings;->theme:I

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    if-eq v2, v3, :cond_27

    .line 34
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->prefersDarkMode()Z

    move-result v2

    goto :goto_2a

    :cond_27
    move v2, v3

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    if-eqz v0, :cond_30

    .line 36
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/ThemeDraft;->isDark()Z

    move-result v2

    :cond_30
    if-eqz v0, :cond_34

    .line 37
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 40
    :cond_34
    sget-boolean v4, Linfo/flowersoft/theotown/util/ThemeManager;->init:Z

    if-eqz v4, :cond_49

    sget-object v4, Linfo/flowersoft/theotown/util/ThemeManager;->appliedThemeId:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    sget-boolean v4, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode:Z

    if-ne v4, v2, :cond_49

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz v4, :cond_49

    return-void

    .line 45
    :cond_49
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz v4, :cond_6c

    .line 46
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skinLight:Lio/blueflower/stapel2d/gui/Skin;

    .line 47
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->skinDark:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz v0, :cond_5f

    .line 48
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/ThemeDraft;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Skin;->copyAll()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    if-nez v0, :cond_66

    :cond_5f
    if-eqz v2, :cond_62

    move-object v4, v5

    :cond_62
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Skin;->copyAll()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    :cond_66
    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 49
    sput-object v1, Linfo/flowersoft/theotown/util/ThemeManager;->appliedThemeId:Ljava/lang/String;

    .line 50
    sput-boolean v3, Linfo/flowersoft/theotown/util/ThemeManager;->init:Z

    .line 53
    :cond_6c
    sput-boolean v2, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode:Z

    .line 54
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->applyDarkTheme(Z)V

    return-void
.end method
