###### Class io.bidmachine.rendering.internal.AdActivity (io.bidmachine.rendering.internal.AdActivity)
.class public Lio/bidmachine/rendering/internal/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$RGL3XGv6Bd-P4ieYglgwG-eaycI(Lio/bidmachine/rendering/internal/AdActivity;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/AdActivity;->a(Lio/bidmachine/rendering/internal/AdActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/AdActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/AdActivity;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 0
    return-void
.end method

.method public b()V
    .registers 2

    const/high16 v0, -0x1000000

    .line 1
    invoke-static {p0, v0}, Lio/bidmachine/util/UiUtilsKt;->setActivityBackgroundColor(Landroid/app/Activity;I)Lkotlin/Unit;

    .line 2
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->setNoActivityTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/AdActivity;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/AdActivity;->b()V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1d

    .line 9
    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lio/bidmachine/rendering/internal/AdActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/AdActivity$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/AdActivity;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.rendering.internal.AdActivity$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.AdActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/AdActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/AdActivity;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/AdActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/AdActivity$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/AdActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/AdActivity$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/AdActivity;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/AdActivity;->$r8$lambda$RGL3XGv6Bd-P4ieYglgwG-eaycI(Lio/bidmachine/rendering/internal/AdActivity;)V

    return-void
.end method
