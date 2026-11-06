###### Class info.flowersoft.theotown.ui.ExternalStorageDialog (info.flowersoft.theotown.ui.ExternalStorageDialog)
.class public Linfo/flowersoft/theotown/ui/ExternalStorageDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "ExternalStorageDialog.java"


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 16

    .line 15
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SAVE:I

    const/16 v2, 0x24d

    .line 16
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc33

    .line 17
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-direct {p0, v1, v2, v3, p2}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 19
    new-instance v4, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$1;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v1, 0x3b8

    .line 20
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v11

    .line 22
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$1;-><init>(Linfo/flowersoft/theotown/ui/ExternalStorageDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 30
    new-instance v4, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$2;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v1, 0xd48

    .line 31
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v11

    .line 33
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$2;-><init>(Linfo/flowersoft/theotown/ui/ExternalStorageDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ExternalStorageDialog.AnonymousClass1 (info.flowersoft.theotown.ui.ExternalStorageDialog$1)
.class public Linfo/flowersoft/theotown/ui/ExternalStorageDialog$1;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "ExternalStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ExternalStorageDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ExternalStorageDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ExternalStorageDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ExternalStorageDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 25
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ExternalStorageDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ExternalStorageDialog.AnonymousClass2 (info.flowersoft.theotown.ui.ExternalStorageDialog$2)
.class public Linfo/flowersoft/theotown/ui/ExternalStorageDialog$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "ExternalStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ExternalStorageDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ExternalStorageDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ExternalStorageDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$2;->this$0:Linfo/flowersoft/theotown/ui/ExternalStorageDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 36
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showNoMemAccessDialog:Z

    .line 38
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ExternalStorageDialog$2;->this$0:Linfo/flowersoft/theotown/ui/ExternalStorageDialog;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method
