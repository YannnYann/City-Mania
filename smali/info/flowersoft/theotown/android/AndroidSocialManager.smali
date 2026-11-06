###### Class info.flowersoft.theotown.android.AndroidSocialManager (info.flowersoft.theotown.android.AndroidSocialManager)
.class public Linfo/flowersoft/theotown/android/AndroidSocialManager;
.super Ljava/lang/Object;
.source "AndroidSocialManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/SocialManager;


# instance fields
.field public final stateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/crossplatform/SocialManager$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidSocialManager;->stateListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidSocialManager;->stateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getState()Linfo/flowersoft/theotown/crossplatform/SocialManager$State;
    .registers 2

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidSocialManager$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/android/AndroidSocialManager$1;-><init>(Linfo/flowersoft/theotown/android/AndroidSocialManager;)V

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public registerStateListener(Linfo/flowersoft/theotown/crossplatform/SocialManager$StateListener;)V
    .registers 3

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidSocialManager;->stateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setup()V
    .registers 1

    .line 0
    return-void
.end method

.method public showConnectionDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidSocialManager.AnonymousClass1 (info.flowersoft.theotown.android.AndroidSocialManager$1)
.class public Linfo/flowersoft/theotown/android/AndroidSocialManager$1;
.super Ljava/lang/Object;
.source "AndroidSocialManager.java"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/SocialManager$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidSocialManager;->getState()Linfo/flowersoft/theotown/crossplatform/SocialManager$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidSocialManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidSocialManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidSocialManager$1;->this$0:Linfo/flowersoft/theotown/android/AndroidSocialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .registers 2

    .line 68
    const-string v0, "fb"

    return-object v0
.end method
