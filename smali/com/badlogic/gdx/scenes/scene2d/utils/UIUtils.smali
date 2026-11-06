###### Class com.badlogic.gdx.scenes.scene2d.utils.UIUtils (com.badlogic.gdx.scenes.scene2d.utils.UIUtils)
.class public final Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static isAndroid:Z

.field public static isIos:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 14
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    .line 15
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->MacOsX:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    .line 16
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->Windows:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_20

    move v0, v3

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isWindows:Z

    .line 17
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->Linux:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_2b

    move v0, v3

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isLinux:Z

    .line 18
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->IOS:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_35

    move v2, v3

    :cond_35
    sput-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isIos:Z

    return-void
.end method

.method public static shift()Z
    .registers 2

    .line 45
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method
