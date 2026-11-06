###### Class info.flowersoft.theotown.ui.MigrateAccountDialog (info.flowersoft.theotown.ui.MigrateAccountDialog)
.class public Linfo/flowersoft/theotown/ui/MigrateAccountDialog;
.super Ljava/lang/Object;
.source "MigrateAccountDialog.java"


# static fields
.field public static wasShown:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Z)Z
    .registers 1

    .line 13
    sput-boolean p0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog;->wasShown:Z

    return p0
.end method


# virtual methods
.method public shouldShow()Z
    .registers 4

    .line 18
    sget-boolean v0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog;->wasShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 20
    :cond_6
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 21
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isFBConnected()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    return v1
.end method

.method public show(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 9

    .line 25
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    .line 27
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    const/16 v3, 0x337

    .line 28
    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd1d

    .line 29
    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 32
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    const/16 v2, 0x135

    .line 34
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;

    invoke-direct {v2, p0, p3, p2}, Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;-><init>(Linfo/flowersoft/theotown/ui/MigrateAccountDialog;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 32
    invoke-virtual {v1, p1, v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MigrateAccountDialog.AnonymousClass1 (info.flowersoft.theotown.ui.MigrateAccountDialog$1)
.class Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;
.super Ljava/lang/Object;
.source "MigrateAccountDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MigrateAccountDialog;->show(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MigrateAccountDialog;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MigrateAccountDialog;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
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

    .line 35
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;->this$0:Linfo/flowersoft/theotown/ui/MigrateAccountDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x1

    .line 38
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/MigrateAccountDialog;->access$002(Z)Z

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method
