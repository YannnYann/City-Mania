###### Class info.flowersoft.theotown.crossplatform.SocialManager (info.flowersoft.theotown.crossplatform.SocialManager)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/SocialManager;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/crossplatform/SocialManager$State;,
        Linfo/flowersoft/theotown/crossplatform/SocialManager$StateListener;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getState()Linfo/flowersoft/theotown/crossplatform/SocialManager$State;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract registerStateListener(Linfo/flowersoft/theotown/crossplatform/SocialManager$StateListener;)V
.end method

.method public abstract setup()V
.end method

.method public abstract showConnectionDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end method

###### Class info.flowersoft.theotown.crossplatform.SocialManager.State (info.flowersoft.theotown.crossplatform.SocialManager$State)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/SocialManager$State;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/crossplatform/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "State"
.end annotation


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method

###### Class info.flowersoft.theotown.crossplatform.SocialManager.StateListener (info.flowersoft.theotown.crossplatform.SocialManager$StateListener)
.class public interface abstract Linfo/flowersoft/theotown/crossplatform/SocialManager$StateListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/crossplatform/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation
