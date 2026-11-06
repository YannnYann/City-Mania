###### Class androidx.core.view.accessibility.AccessibilityViewCommand (androidx.core.view.accessibility.AccessibilityViewCommand)
.class public interface abstract Landroidx/core/view/accessibility/AccessibilityViewCommand;
.super Ljava/lang/Object;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;,
        Landroidx/core/view/accessibility/AccessibilityViewCommand$SetProgressArguments;,
        Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;,
        Landroidx/core/view/accessibility/AccessibilityViewCommand$SetTextArguments;,
        Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;,
        Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments;,
        Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;,
        Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
    }
.end annotation


# virtual methods
.method public abstract perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.CommandArguments (androidx.core.view.accessibility.AccessibilityViewCommand$CommandArguments)
.class public abstract Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.super Ljava/lang/Object;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommandArguments"
.end annotation


# instance fields
.field public mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBundle(Landroid/os/Bundle;)V
    .registers 2

    .line 54
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;->mBundle:Landroid/os/Bundle;

    return-void
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.MoveAtGranularityArguments (androidx.core.view.accessibility.AccessibilityViewCommand$MoveAtGranularityArguments)
.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveAtGranularityArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.MoveHtmlArguments (androidx.core.view.accessibility.AccessibilityViewCommand$MoveHtmlArguments)
.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveHtmlArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.MoveWindowArguments (androidx.core.view.accessibility.AccessibilityViewCommand$MoveWindowArguments)
.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveWindowArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.ScrollToPositionArguments (androidx.core.view.accessibility.AccessibilityViewCommand$ScrollToPositionArguments)
.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollToPositionArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.SetProgressArguments (androidx.core.view.accessibility.AccessibilityViewCommand$SetProgressArguments)
.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$SetProgressArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetProgressArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.SetSelectionArguments (androidx.core.view.accessibility.AccessibilityViewCommand$SetSelectionArguments)
.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetSelectionArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method

###### Class androidx.core.view.accessibility.AccessibilityViewCommand.SetTextArguments (androidx.core.view.accessibility.AccessibilityViewCommand$SetTextArguments)
.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$SetTextArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetTextArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method
