###### Class info.flowersoft.theotown.ui.TaskCompletionDialogShower (info.flowersoft.theotown.ui.TaskCompletionDialogShower)
.class public Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower;
.super Ljava/lang/Object;
.source "TaskCompletionDialogShower.java"


# direct methods
.method public static synthetic $r8$lambda$T3hb2uJuVhuyMNXI4PXhgQYE9oY(Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 41
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    :cond_5
    if-eqz p1, :cond_a

    .line 42
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 8

    if-eqz p4, :cond_a

    .line 31
    invoke-virtual {p4}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    if-eqz p5, :cond_f

    .line 35
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 37
    :cond_f
    new-instance p5, Linfo/flowersoft/theotown/ui/Dialog;

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MANAGER:I

    invoke-direct {p5, v0, p0, p1, p3}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 39
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p1, 0x76b

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4, p6}, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;)V

    const/4 p3, 0x0

    invoke-virtual {p5, p0, p1, p3, p2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 p2, 0x42

    .line 45
    invoke-virtual {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 47
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-object p5
.end method

.method public static showDialog(IILio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 19
    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower;->showDialog(IILio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showDialog(IILio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7

    .line 25
    invoke-interface {p2, p0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static/range {p0 .. p6}, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower;->showDialog(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TaskCompletionDialogShower$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.TaskCompletionDialogShower$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/TaskManager$Task;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower;->$r8$lambda$T3hb2uJuVhuyMNXI4PXhgQYE9oY(Linfo/flowersoft/theotown/resources/TaskManager$Task;Ljava/lang/Runnable;)V

    return-void
.end method
