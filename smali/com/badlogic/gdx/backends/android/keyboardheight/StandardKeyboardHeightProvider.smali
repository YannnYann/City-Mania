###### Class com.badlogic.gdx.backends.android.keyboardheight.StandardKeyboardHeightProvider (com.badlogic.gdx.backends.android.keyboardheight.StandardKeyboardHeightProvider)
.class public Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;
.super Landroid/widget/PopupWindow;
.source "StandardKeyboardHeightProvider.java"

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
.field public activity:Landroid/app/Activity;

.field public observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

.field public parentView:Landroid/view/View;

.field public popupView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->activity:Landroid/app/Activity;

    .line 77
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 78
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->popupView:Landroid/view/View;

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/16 p1, 0x15

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 89
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 91
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider$1;-><init>(Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;)Landroid/view/View;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->popupView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;)V
    .registers 1

    .line 36
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->handleOnGlobalLayout()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    .line 119
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public final getScreenOrientation()I
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public final handleOnGlobalLayout()V
    .registers 10

    .line 142
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 145
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->getScreenOrientation()I

    move-result v8

    .line 152
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v2, v3

    .line 153
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 154
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v0, 0x1

    if-lez v5, :cond_3b

    if-ne v8, v0, :cond_39

    .line 158
    sput v5, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->keyboardPortraitHeight:I

    goto :goto_3b

    .line 160
    :cond_39
    sput v5, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->keyboardLandscapeHeight:I

    :cond_3b
    :goto_3b
    if-gtz v5, :cond_47

    .line 164
    sget v1, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->keyboardLandscapeHeight:I

    if-nez v1, :cond_46

    sget v1, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->keyboardPortraitHeight:I

    if-nez v1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :cond_47
    :goto_47
    move v4, v0

    .line 166
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedVisible:Z

    if-ne v4, v0, :cond_5d

    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedBottomInset:I

    if-ne v5, v0, :cond_5d

    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedInsetLeft:I

    if-ne v6, v0, :cond_5d

    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedInsetRight:I

    if-ne v7, v0, :cond_5d

    sget v0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedOrientation:I

    if-ne v8, v0, :cond_5d

    goto :goto_6e

    .line 169
    :cond_5d
    sput-boolean v4, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedVisible:Z

    .line 170
    sput v5, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedBottomInset:I

    .line 171
    sput v6, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedInsetLeft:I

    .line 172
    sput v7, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedInsetRight:I

    .line 173
    sput v8, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedOrientation:I

    .line 175
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    if-eqz v3, :cond_6e

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;->onKeyboardHeightChanged(ZIIII)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public setKeyboardHeightObserver(Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->observer:Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;

    return-void
.end method

.method public start()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->parentView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->cachedOrientation:I

    .line 109
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 110
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_35
    return-void
.end method

###### Class com.badlogic.gdx.backends.android.keyboardheight.StandardKeyboardHeightProvider.AnonymousClass1 (com.badlogic.gdx.backends.android.keyboardheight.StandardKeyboardHeightProvider$1)
.class public Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider$1;
.super Ljava/lang/Object;
.source "StandardKeyboardHeightProvider.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider$1;->this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider$1;->this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->access$000(Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider$1;->this$0:Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;->access$100(Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;)V

    :cond_d
    return-void
.end method
