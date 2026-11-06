###### Class androidx.browser.customtabs.CustomTabsCallback (androidx.browser.customtabs.CustomTabsCallback)
.class public Landroidx/browser/customtabs/CustomTabsCallback;
.super Ljava/lang/Object;
.source "CustomTabsCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityLayout(IIIIILandroid/os/Bundle;)V
    .registers 7

    .line 0
    return-void
.end method

.method public onActivityResized(IILandroid/os/Bundle;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMinimized(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 3

    const/4 p0, 0x0

    throw p0
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .registers 5

    .line 0
    return-void
.end method

.method public onUnminimized(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onWarmupCompleted(Landroid/os/Bundle;)V
    .registers 2

    .line 0
    return-void
.end method
