###### Class info.flowersoft.theotown.city.toolaction.ToolAction (info.flowersoft.theotown.city.toolaction.ToolAction)
.class public abstract Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.super Ljava/lang/Object;
.source "ToolAction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIcon()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public isHotkeyActive()Z
    .registers 2

    .line 26
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onClick()V
.end method
