###### Class io.bidmachine.rendering.view.PrivacySheetDialog (io.bidmachine.rendering.view.PrivacySheetDialog)
.class public final Lio/bidmachine/rendering/view/PrivacySheetDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;,
        Lio/bidmachine/rendering/view/PrivacySheetDialog$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;

.field public static c:Ljava/lang/ref/WeakReference;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/PrivacySheetParams;

.field public final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->Companion:Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 4

    .line 2
    sget v0, Lio/bidmachine/rendering/R$style;->Bm_BottomSheetDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a:Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 6
    new-instance p2, Lio/bidmachine/rendering/view/PrivacySheetDialog$b;

    invoke-direct {p2, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog$b;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->b:Lkotlin/Lazy;

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1c

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    :cond_1c
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/view/PrivacySheetDialog;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public static final synthetic access$getLastPrivacySheetDialogRef$cp()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getPrivacySheetParams$p(Lio/bidmachine/rendering/view/PrivacySheetDialog;)Lio/bidmachine/rendering/model/PrivacySheetParams;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a:Lio/bidmachine/rendering/model/PrivacySheetParams;

    return-object p0
.end method

.method public static final synthetic access$onActionClicked(Lio/bidmachine/rendering/view/PrivacySheetDialog;Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a(Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V

    return-void
.end method

.method public static final synthetic access$setLastPrivacySheetDialogRef$cp(Ljava/lang/ref/WeakReference;)V
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/view/privacy/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/view/privacy/b;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 25
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/util/UtilsKt;->getClipboardManager(Landroid/content/Context;)Landroid/content/ClipboardManager;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_1b

    .line 27
    :cond_12
    const-string v1, ""

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 28
    :goto_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-object p1

    :catchall_22
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/Window;)V
    .registers 4

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Z)V

    return-void

    .line 8
    :cond_b
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V
    .registers 4

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->getData()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->getType()Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    move-result-object p1

    sget-object v1, Lio/bidmachine/rendering/view/PrivacySheetDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    return-void

    .line 23
    :cond_17
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 24
    :cond_1b
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->b(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 5

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a()Lio/bidmachine/rendering/internal/view/privacy/b;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/view/privacy/b;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/view/privacy/b;->setSubtitle(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->getActions()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;

    invoke-direct {v2, p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;-><init>(Lio/bidmachine/rendering/view/PrivacySheetDialog;)V

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/rendering/internal/view/privacy/b;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->getFooterTitle()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->getFooterText()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/rendering/internal/view/privacy/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/bidmachine/util/IntentUtilsKt;->openUrl(Landroid/content/Context;Ljava/lang/String;)Lio/bidmachine/util/ProcessUrlResult;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-object p1

    :catchall_14
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a()Lio/bidmachine/rendering/internal/view/privacy/b;

    move-result-object p1

    .line 3
    new-instance v0, Lio/bidmachine/rendering/view/PrivacySheetDialog$a;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$a;-><init>(Lio/bidmachine/rendering/view/PrivacySheetDialog;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/view/privacy/b;->setOnCloseClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_24

    const/high16 v0, -0x80000000

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    .line 16
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a(Landroid/view/Window;)V

    .line 19
    :cond_24
    iget-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a:Lio/bidmachine/rendering/model/PrivacySheetParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

###### Class io.bidmachine.rendering.view.PrivacySheetDialog.Companion (io.bidmachine.rendering.view.PrivacySheetDialog$Companion)
.class public final Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/view/PrivacySheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final show(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacySheetParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->access$getLastPrivacySheetDialogRef$cp()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;

    if-eqz v0, :cond_2b

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 3
    invoke-static {v0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->access$getPrivacySheetParams$p(Lio/bidmachine/rendering/view/PrivacySheetDialog;)Lio/bidmachine/rendering/model/PrivacySheetParams;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    return-object v0

    .line 6
    :cond_28
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_2b
    new-instance v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->access$setLastPrivacySheetDialogRef$cp(Ljava/lang/ref/WeakReference;)V

    .line 12
    :try_start_39
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    return-object v0

    :catchall_3d
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Throwable;)V

    return-object v0
.end method

###### Class io.bidmachine.rendering.view.PrivacySheetDialog.WhenMappings (io.bidmachine.rendering.view.PrivacySheetDialog$WhenMappings)
.class public final synthetic Lio/bidmachine/rendering/view/PrivacySheetDialog$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/view/PrivacySheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->values()[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->REDIRECT:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->COPY_TO_CLIPBOARD:Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.rendering.view.PrivacySheetDialog.a (io.bidmachine.rendering.view.PrivacySheetDialog$a)
.class public final Lio/bidmachine/rendering/view/PrivacySheetDialog$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/view/PrivacySheetDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/view/PrivacySheetDialog;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/view/PrivacySheetDialog;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$a;->a:Lio/bidmachine/rendering/view/PrivacySheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$a;->a:Lio/bidmachine/rendering/view/PrivacySheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.view.PrivacySheetDialog.b (io.bidmachine.rendering.view.PrivacySheetDialog$b)
.class public final Lio/bidmachine/rendering/view/PrivacySheetDialog$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/view/PrivacySheetDialog;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$b;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/view/privacy/b;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/b;

    iget-object v1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/view/privacy/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$b;->a()Lio/bidmachine/rendering/internal/view/privacy/b;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.view.PrivacySheetDialog.c (io.bidmachine.rendering.view.PrivacySheetDialog$c)
.class public final Lio/bidmachine/rendering/view/PrivacySheetDialog$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/view/PrivacySheetDialog;->a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/view/PrivacySheetDialog;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/view/PrivacySheetDialog;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->a:Lio/bidmachine/rendering/view/PrivacySheetDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V
    .registers 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->a:Lio/bidmachine/rendering/view/PrivacySheetDialog;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->access$onActionClicked(Lio/bidmachine/rendering/view/PrivacySheetDialog;Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;->a(Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
