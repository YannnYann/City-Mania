###### Class com.badlogic.gdx.backends.android.keyboardheight.AndroidXKeyboardHeightProvider (com.badlogic.gdx.backends.android.keyboardheight.AndroidXKeyboardHeightProvider)
.class public Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;
.super Ljava/lang/Object;
.source "AndroidXKeyboardHeightProvider.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightProvider;


# static fields
.field public static cachedBottomInset:I

.field public static cachedInsetLeft:I

.field public static cachedInsetRight:I

.field public static cachedOrientation:I

.field public static cachedVisible:Z

.field public static keyboardLandscapeHeight:I

.field public static keyboardPortraitHeight:I


# instance fields
.field public final activity:Landroid/app/Activity;

.field public observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic access$000(Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;)Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;)Landroid/app/Activity;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$202(I)I
    .registers 1

    .line 13
    sput p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->keyboardPortraitHeight:I

    return p0
.end method

.method public static synthetic access$302(I)I
    .registers 1

    .line 13
    sput p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->keyboardLandscapeHeight:I

    return p0
.end method

.method public static synthetic access$400()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedVisible:Z

    return v0
.end method

.method public static synthetic access$402(Z)Z
    .registers 1

    .line 13
    sput-boolean p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedVisible:Z

    return p0
.end method

.method public static synthetic access$500()I
    .registers 1

    .line 13
    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedBottomInset:I

    return v0
.end method

.method public static synthetic access$502(I)I
    .registers 1

    .line 13
    sput p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedBottomInset:I

    return p0
.end method

.method public static synthetic access$600()I
    .registers 1

    .line 13
    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedInsetLeft:I

    return v0
.end method

.method public static synthetic access$602(I)I
    .registers 1

    .line 13
    sput p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedInsetLeft:I

    return p0
.end method

.method public static synthetic access$700()I
    .registers 1

    .line 13
    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedInsetRight:I

    return v0
.end method

.method public static synthetic access$702(I)I
    .registers 1

    .line 13
    sput p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedInsetRight:I

    return p0
.end method

.method public static synthetic access$800()I
    .registers 1

    .line 13
    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedOrientation:I

    return v0
.end method

.method public static synthetic access$802(I)I
    .registers 1

    .line 13
    sput p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedOrientation:I

    return p0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 92
    :cond_8
    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    return-void
.end method

.method public setKeyboardHeightObserver(Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    return-void
.end method

.method public start()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->view:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->cachedOrientation:I

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->view:Landroid/view/View;

    new-instance v1, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider$1;-><init>(Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.keyboardheight.AndroidXKeyboardHeightProvider.AnonymousClass1 (com.badlogic.gdx.backends.android.keyboardheight.AndroidXKeyboardHeightProvider$1)
.class public Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "AndroidXKeyboardHeightProvider.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider$1;->this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 9

    .line 50
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider$1;->this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$000(Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;)Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    move-result-object p1

    if-nez p1, :cond_9

    return-object p2

    .line 55
    :cond_9
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider$1;->this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$100(Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    .line 56
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 58
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    or-int/2addr p1, v0

    .line 59
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    move-result v0

    or-int/2addr p1, v0

    .line 61
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const/4 v0, 0x1

    if-ne v5, v0, :cond_43

    .line 63
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$202(I)I

    goto :goto_48

    .line 65
    :cond_43
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$302(I)I

    .line 68
    :goto_48
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 69
    iget v2, p1, Landroidx/core/graphics/Insets;->left:I

    .line 70
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    move v4, p1

    move v3, v2

    move v2, v0

    goto :goto_56

    :cond_52
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    .line 73
    :goto_56
    invoke-static {}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$400()Z

    move-result p1

    if-ne v1, p1, :cond_75

    invoke-static {}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$500()I

    move-result p1

    if-ne v2, p1, :cond_75

    invoke-static {}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$600()I

    move-result p1

    if-ne v3, p1, :cond_75

    .line 74
    invoke-static {}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$700()I

    move-result p1

    if-ne v4, p1, :cond_75

    invoke-static {}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$800()I

    move-result p1

    if-ne v5, p1, :cond_75

    return-object p2

    .line 76
    :cond_75
    invoke-static {v1}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$402(Z)Z

    .line 77
    invoke-static {v2}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$502(I)I

    .line 78
    invoke-static {v3}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$602(I)I

    .line 79
    invoke-static {v4}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$702(I)I

    .line 80
    invoke-static {v5}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$802(I)I

    .line 82
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider$1;->this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;->access$000(Lcom/badlogic/gdx/backends/android/keyboardheight/AndroidXKeyboardHeightProvider;)Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;->onKeyboardHeightChanged(ZIIII)V

    return-object p2
.end method
