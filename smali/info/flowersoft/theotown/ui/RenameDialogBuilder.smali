###### Class info.flowersoft.theotown.ui.RenameDialogBuilder (info.flowersoft.theotown.ui.RenameDialogBuilder)
.class public Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
.super Ljava/lang/Object;
.source "RenameDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;
    }
.end annotation


# instance fields
.field public filter:Lio/blueflower/stapel2d/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gui:Lio/blueflower/stapel2d/gui/Master;

.field public height:I

.field public iconCancel:I

.field public iconOk:I

.field public keyMapper:Lio/blueflower/stapel2d/key/KeyMapper;

.field public onBuild:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public onCancel:Ljava/lang/Runnable;

.field public onOk:Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public password:Z

.field public textCancel:Ljava/lang/String;

.field public textOk:Ljava/lang/String;

.field public username:Z

.field public width:I


# direct methods
.method public static synthetic $r8$lambda$g7QOud8IBVsEOefA7vrRIqcEdGU(Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;[Linfo/flowersoft/theotown/ui/TextField;)V
    .registers 3

    .line 133
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    if-eqz p1, :cond_f

    const/4 p0, 0x0

    .line 135
    aget-object p0, p2, p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;->accept(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$xn95zVk2ek9ZpKd2M8zK8jCVDL0(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V
    .registers 2

    .line 126
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    if-eqz p1, :cond_8

    .line 128
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 22
    iput v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->width:I

    const/16 v0, 0xa0

    .line 23
    iput v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->height:I

    .line 47
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 48
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iput p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->iconOk:I

    .line 49
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iput p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->iconCancel:I

    const/16 p1, 0x2e6

    .line 50
    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->textOk:Ljava/lang/String;

    const/16 p1, 0x91b

    .line 51
    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->textCancel:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->keyMapper:Lio/blueflower/stapel2d/key/KeyMapper;

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Button;Lio/blueflower/stapel2d/util/Predicate;)V
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onTextChange(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Button;Lio/blueflower/stapel2d/util/Predicate;)V

    return-void
.end method

.method public static onTextChange(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Button;Lio/blueflower/stapel2d/util/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/gui/Button;",
            "Lio/blueflower/stapel2d/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_11

    .line 173
    invoke-interface {p2, p0}, Lio/blueflower/stapel2d/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    .line 174
    invoke-virtual {p1, p0}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    return-void

    :cond_d
    const/4 p0, 0x0

    .line 176
    invoke-virtual {p1, p0}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    :cond_11
    return-void
.end method


# virtual methods
.method public build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 19

    move-object/from16 v9, p4

    const/4 v10, 0x1

    .line 111
    new-array v8, v10, [Linfo/flowersoft/theotown/ui/TextField;

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$1;

    iget v5, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->width:I

    iget v6, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->height:I

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$1;-><init>(Linfo/flowersoft/theotown/ui/RenameDialogBuilder;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;[Linfo/flowersoft/theotown/ui/TextField;)V

    move-object v12, v0

    move-object v11, v8

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onOk:Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;

    .line 122
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onCancel:Ljava/lang/Runnable;

    .line 123
    iget-object v8, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->filter:Lio/blueflower/stapel2d/util/Predicate;

    .line 125
    iget v3, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->iconCancel:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->textCancel:Ljava/lang/String;

    new-instance v5, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v12, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v3, v4, v10, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 132
    iget v2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->iconOk:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->textOk:Ljava/lang/String;

    new-instance v4, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v4, v12, v0, v11}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;[Linfo/flowersoft/theotown/ui/TextField;)V

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v3, v13, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v7

    .line 138
    invoke-virtual {v7, v10}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v0, 0x42

    .line 139
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 142
    invoke-static {v9, v7, v8}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onTextChange(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Button;Lio/blueflower/stapel2d/util/Predicate;)V

    .line 144
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    .line 145
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextFrame()Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->dontFillParent()V

    .line 147
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextFrame()Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v2

    invoke-virtual {v2, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    move-object v2, v0

    .line 148
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextHeight()I

    move-result v2

    add-int/lit8 v3, v2, 0x5

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0x1e

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;-><init>(Linfo/flowersoft/theotown/ui/RenameDialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/GoldButton;Lio/blueflower/stapel2d/util/Predicate;)V

    .line 155
    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 156
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/TextField;->setTitle(Ljava/lang/String;)V

    .line 157
    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->username:Z

    if-nez v2, :cond_7c

    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->password:Z

    if-eqz v2, :cond_81

    .line 158
    :cond_7c
    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->password:Z

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/TextField;->setPassword(Z)V

    .line 160
    :cond_81
    aput-object v0, v11, v13

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onBuild:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v0, :cond_8a

    .line 163
    invoke-interface {v0, v12}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 166
    :cond_8a
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 167
    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-object v12
.end method

.method public getHeight()I
    .registers 2

    .line 64
    iget v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 56
    iget v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->width:I

    return v0
.end method

.method public setCancelText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
    .registers 2

    .line 87
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->textCancel:Ljava/lang/String;

    return-object p0
.end method

.method public setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Linfo/flowersoft/theotown/ui/RenameDialogBuilder;"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->filter:Lio/blueflower/stapel2d/util/Predicate;

    return-object p0
.end method

.method public setHeight(I)V
    .registers 2

    .line 68
    iput p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->height:I

    return-void
.end method

.method public setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
    .registers 2

    .line 77
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->textOk:Ljava/lang/String;

    return-object p0
.end method

.method public setOnBuild(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onBuild:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method

.method public setOnCancel(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
    .registers 2

    .line 82
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onCancel:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Linfo/flowersoft/theotown/ui/RenameDialogBuilder;"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->onOk:Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;

    return-object p0
.end method

.method public setPassword(Z)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
    .registers 2

    .line 102
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->password:Z

    return-object p0
.end method

.method public setUsername(Z)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
    .registers 2

    .line 97
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->username:Z

    return-object p0
.end method

.method public setWidth(I)V
    .registers 2

    .line 60
    iput p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->width:I

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RenameDialogBuilder.AnonymousClass1 (info.flowersoft.theotown.ui.RenameDialogBuilder$1)
.class Linfo/flowersoft/theotown/ui/RenameDialogBuilder$1;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "RenameDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

.field public final synthetic val$myTextField:[Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RenameDialogBuilder;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;[Linfo/flowersoft/theotown/ui/TextField;)V
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
            0x1010
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

    .line 113
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$1;->val$myTextField:[Linfo/flowersoft/theotown/ui/TextField;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    return-void
.end method


# virtual methods
.method public setVisible(Z)V
    .registers 3

    .line 116
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    if-eqz p1, :cond_d

    .line 117
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$1;->val$myTextField:[Linfo/flowersoft/theotown/ui/TextField;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    :cond_d
    return-void
.end method

###### Class info.flowersoft.theotown.ui.RenameDialogBuilder.AnonymousClass2 (info.flowersoft.theotown.ui.RenameDialogBuilder$2)
.class Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;
.super Linfo/flowersoft/theotown/ui/TextField;
.source "RenameDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

.field public final synthetic val$cmdOk:Linfo/flowersoft/theotown/ui/GoldButton;

.field public final synthetic val$myFilter:Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RenameDialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/GoldButton;Lio/blueflower/stapel2d/util/Predicate;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
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

    .line 149
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;->this$0:Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;->val$cmdOk:Linfo/flowersoft/theotown/ui/GoldButton;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;->val$myFilter:Lio/blueflower/stapel2d/util/Predicate;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .registers 4

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;->val$cmdOk:Linfo/flowersoft/theotown/ui/GoldButton;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$2;->val$myFilter:Lio/blueflower/stapel2d/util/Predicate;

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->access$000(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Button;Lio/blueflower/stapel2d/util/Predicate;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer (info.flowersoft.theotown.ui.RenameDialogBuilder$Consumer)
.class public interface abstract Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;
.super Ljava/lang/Object;
.source "RenameDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/RenameDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Consumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.ui.RenameDialogBuilder$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RenameDialogBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->$r8$lambda$xn95zVk2ek9ZpKd2M8zK8jCVDL0(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RenameDialogBuilder$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.RenameDialogBuilder$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;

.field public final synthetic f$2:[Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;[Linfo/flowersoft/theotown/ui/TextField;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;->f$2:[Linfo/flowersoft/theotown/ui/TextField;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder$$ExternalSyntheticLambda1;->f$2:[Linfo/flowersoft/theotown/ui/TextField;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->$r8$lambda$g7QOud8IBVsEOefA7vrRIqcEdGU(Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;[Linfo/flowersoft/theotown/ui/TextField;)V

    return-void
.end method
