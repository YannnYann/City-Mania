###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput (com.badlogic.gdx.backends.android.DefaultAndroidInput)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.super Lcom/badlogic/gdx/AbstractInput;
.source "DefaultAndroidInput.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidInput;
.implements Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;,
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;,
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;,
        Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;
    }
.end annotation


# instance fields
.field public final R:[F

.field public accelerometerAvailable:Z

.field public accelerometerListener:Landroid/hardware/SensorEventListener;

.field public final accelerometerValues:[F

.field public final app:Lcom/badlogic/gdx/Application;

.field public azimuth:F

.field public button:[I

.field public compassAvailable:Z

.field public compassListener:Landroid/hardware/SensorEventListener;

.field public final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field public final context:Landroid/content/Context;

.field public currentEventTimeStamp:J

.field public deltaX:[I

.field public deltaY:[I

.field public final genericMotionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnGenericMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field public gyroscopeAvailable:Z

.field public gyroscopeListener:Landroid/hardware/SensorEventListener;

.field public final gyroscopeValues:[F

.field public final handle:Landroid/os/Handler;

.field public final haptics:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

.field public final hasMultitouch:Z

.field public final justPressedButtons:[Z

.field public justTouched:Z

.field public keyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public keyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field public keyboardAvailable:Z

.field public final magneticFieldValues:[F

.field public manager:Landroid/hardware/SensorManager;

.field public final mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

.field public final nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

.field public onscreenVisible:Z

.field public final orientation:[F

.field public pitch:F

.field public predictiveBackHandler:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;

.field public pressure:[F

.field public processor:Lcom/badlogic/gdx/InputProcessor;

.field public realId:[I

.field public relativeLayoutField:Landroid/widget/RelativeLayout;

.field public requestFocus:Z

.field public roll:F

.field public rotationVectorAvailable:Z

.field public rotationVectorListener:Landroid/hardware/SensorEventListener;

.field public final rotationVectorValues:[F

.field public touchEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

.field public touchX:[I

.field public touchY:[I

.field public touched:[Z

.field public usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$LFGJizRN8Wigrft2MucTt9XdzJI(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Lcom/badlogic/gdx/input/NativeInputConfiguration;Ljava/lang/String;IIZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 1012
    throw p0
.end method

.method public static synthetic $r8$lambda$pwSGLuInHk2MJ3hPAXre7so0NfU(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V
    .registers 13

    .line 1002
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isNativeInputOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1003
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1005
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getEditTextForNativeInput()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1007
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 1008
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .line 1011
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    move-object v3, p0

    move v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Lcom/badlogic/gdx/input/NativeInputConfiguration;Ljava/lang/String;IIZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 1027
    iget-object p0, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_41

    iget-object p0, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1028
    :cond_41
    iget-object p0, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Landroid/view/View;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .registers 10

    .line 179
    invoke-direct {p0}, Lcom/badlogic/gdx/AbstractInput;-><init>()V

    .line 118
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;

    const/16 v1, 0x10

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 124
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyListeners:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    const/16 v0, 0x14

    .line 135
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    .line 136
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    .line 137
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    .line 138
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    .line 139
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    .line 141
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    .line 142
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    .line 144
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    const/4 v1, 0x3

    .line 147
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    .line 148
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    .line 149
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    .line 155
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    .line 156
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 158
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->magneticFieldValues:[F

    .line 159
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    const/4 v2, 0x0

    .line 160
    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->azimuth:F

    .line 161
    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pitch:F

    .line 162
    iput v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->roll:F

    .line 163
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    const-wide/16 v2, 0x0

    .line 168
    iput-wide v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->currentEventTimeStamp:J

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->genericMotionListeners:Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 501
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->requestFocus:Z

    .line 615
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->onscreenVisible:Z

    const/4 v3, 0x0

    .line 642
    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    const/16 v4, 0x9

    .line 1089
    new-array v4, v4, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->R:[F

    .line 1090
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->orientation:[F

    .line 181
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->view:Landroid/view/View;

    .line 183
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 184
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 186
    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 187
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 188
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 190
    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 191
    new-instance p3, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-direct {p3}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;-><init>()V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    .line 193
    :goto_ad
    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    array-length p4, p3

    if-ge v0, p4, :cond_b8

    const/4 p4, -0x1

    .line 194
    aput p4, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    .line 195
    :cond_b8
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->handle:Landroid/os/Handler;

    .line 196
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    .line 197
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    .line 198
    new-instance p3, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-direct {p3}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;-><init>()V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    .line 199
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->supportsMultitouch(Landroid/content/Context;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->hasMultitouch:Z

    .line 201
    new-instance p3, Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    invoke-direct {p3, p2}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->haptics:Lcom/badlogic/gdx/backends/android/AndroidHaptics;

    .line 203
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x21

    if-lt p3, p4, :cond_e8

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_e8

    .line 204
    new-instance p2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;

    invoke-direct {p2, p0, v3}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;)V

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->predictiveBackHandler:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;

    .line 207
    :cond_e8
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getRotation()I

    move-result p2

    .line 208
    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object p1

    if-eqz p2, :cond_fa

    const/16 p3, 0xb4

    if-ne p2, p3, :cond_100

    .line 209
    :cond_fa
    iget p3, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget p4, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ge p3, p4, :cond_114

    :cond_100
    const/16 p3, 0x5a

    if-eq p2, p3, :cond_108

    const/16 p3, 0x10e

    if-ne p2, p3, :cond_10f

    :cond_108
    iget p2, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget p1, p1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-gt p2, p1, :cond_10f

    goto :goto_114

    .line 213
    :cond_10f
    sget-object p1, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    goto :goto_118

    .line 211
    :cond_114
    :goto_114
    sget-object p1, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    :goto_118
    const/16 p1, 0xff

    .line 218
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->setCatchKey(IZ)V

    return-void
.end method

.method public static synthetic access$100(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Landroid/widget/AutoCompleteTextView;
    .registers 1

    .line 87
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getEditTextForNativeInput()Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    return-object p0
.end method

.method public static getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Z)I
    .registers 5

    .line 312
    sget-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$8;->$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_28

    const/4 v2, 0x3

    if-eq p0, v0, :cond_27

    if-eq p0, v2, :cond_24

    const/4 v0, 0x4

    if-eq p0, v0, :cond_21

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1e

    if-eqz p1, :cond_1d

    const p0, 0x80091

    return p0

    :cond_1d
    return v1

    :cond_1e
    const/16 p0, 0x11

    return p0

    :cond_21
    const/16 p0, 0x81

    return p0

    :cond_24
    const/16 p0, 0x21

    return p0

    :cond_27
    return v2

    :cond_28
    return v0
.end method


# virtual methods
.method public closeTextInputField(ZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V
    .registers 5

    .line 1000
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isNativeInputOpen()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1001
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda0;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dispatchHeightAndVisibilityChangesToObserver(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public final getEditTextForNativeInput()Landroid/widget/AutoCompleteTextView;
    .registers 3

    .line 831
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method public getFreePointerIndex()I
    .registers 5

    .line 1243
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_11

    .line 1245
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1248
    :cond_11
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->pressure:[F

    .line 1249
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    .line 1250
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    .line 1251
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    .line 1252
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    .line 1253
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    .line 1254
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([Z)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    .line 1255
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->resize([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->button:[I

    return v0
.end method

.method public getRotation()I
    .registers 3

    .line 1296
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 1297
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_25

    .line 1299
    :cond_15
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_25
    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v0, 0x0

    return v0

    :cond_30
    const/16 v0, 0x10e

    return v0

    :cond_33
    const/16 v0, 0xb4

    return v0

    :cond_36
    const/16 v0, 0x5a

    return v0
.end method

.method public final getSoftButtonsBarHeight()I
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 647
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 648
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 649
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 650
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 651
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_25

    sub-int/2addr v0, v2

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 253
    sget-object v5, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .registers 14

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    move-object v2, p0

    move-object v7, p1

    move-object v3, p2

    move-object v6, p3

    move-object v5, p4

    move-object v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getX()I
    .registers 3

    .line 347
    monitor-enter p0

    .line 348
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    .line 349
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getX(I)I
    .registers 3

    .line 361
    monitor-enter p0

    .line 362
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchX:[I

    aget p1, v0, p1

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    .line 363
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public getY()I
    .registers 3

    .line 354
    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    .line 356
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getY(I)I
    .registers 3

    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchY:[I

    aget p1, v0, p1

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    .line 370
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final isNativeInputOpen()Z
    .registers 2

    .line 827
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isTouched()Z
    .registers 4

    .line 396
    monitor-enter p0

    .line 397
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->hasMultitouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_7
    const/16 v2, 0x14

    if-ge v0, v2, :cond_19

    .line 399
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    .line 400
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    goto :goto_1f

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 404
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aget-boolean v0, v0, v1

    monitor-exit p0

    return v0

    .line 405
    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_14

    throw v0
.end method

.method public isTouched(I)Z
    .registers 3

    .line 374
    monitor-enter p0

    .line 375
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touched:[Z

    aget-boolean p1, v0, p1

    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    .line 376
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public lookUpPointerIndex(I)I
    .registers 6

    .line 1279
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_11

    .line 1281
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_e

    return v2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1284
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_16
    if-ge v1, v0, :cond_2f

    .line 1286
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->realId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1288
    :cond_2f
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pointer ID lookup failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AndroidInput"

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1366
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-virtual {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1367
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_26

    .line 1368
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v4, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_23

    return v1

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    return v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 13

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1d

    .line 521
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnKeyListener;

    invoke-interface {v4, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 526
    :cond_1d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_2e

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/AbstractInput;->isCatchKey(I)Z

    move-result p1

    return p1

    .line 528
    :cond_2e
    monitor-enter p0

    .line 531
    :try_start_2f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_6c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_6c

    .line 532
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    move p2, v1

    .line 533
    :goto_41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_6a

    .line 534
    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    .line 535
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 536
    iput v1, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 537
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 538
    iput v0, p3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    .line 539
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    :catchall_67
    move-exception p1

    goto/16 :goto_13f

    .line 541
    :cond_6a
    monitor-exit p0

    return v1

    .line 544
    :cond_6c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    const/16 v2, 0x43

    if-ne p2, v2, :cond_77

    const/16 p1, 0x8

    .line 547
    :cond_77
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ltz v2, :cond_13d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0xff

    if-le v2, v4, :cond_87

    goto/16 :goto_13d

    .line 551
    :cond_87
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_f7

    if-eq v2, v3, :cond_92

    goto/16 :goto_12e

    .line 572
    :cond_92
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 573
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    .line 574
    iput-wide v6, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 575
    iput-char v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 576
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    iput v8, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 577
    iput v3, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    if-ne p2, v5, :cond_b5

    .line 579
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 581
    iput v4, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    move p2, v4

    .line 583
    :cond_b5
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    .line 586
    iput-wide v6, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 587
    iput-char p1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 588
    iput v1, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 589
    iput v0, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    .line 590
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne p2, v4, :cond_df

    .line 593
    iget-object p1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    aget-boolean p3, p1, v4

    if-eqz p3, :cond_12e

    .line 594
    iget p3, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    sub-int/2addr p3, v3

    iput p3, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    .line 595
    aput-boolean v1, p1, v4

    goto :goto_12e

    .line 598
    :cond_df
    iget-object p1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_12e

    .line 599
    iget p1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    .line 600
    iget-object p1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    aput-boolean v1, p1, p3

    goto :goto_12e

    .line 553
    :cond_f7
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    .line 554
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    .line 555
    iput-char v1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 556
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 557
    iput v1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    if-ne p2, v5, :cond_11a

    .line 560
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p3

    if-eqz p3, :cond_11a

    .line 562
    iput v4, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    move p2, v4

    .line 565
    :cond_11a
    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object p3, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    iget p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    aget-boolean v0, p3, p1

    if-nez v0, :cond_12e

    .line 567
    iget v0, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    .line 568
    aput-boolean v3, p3, p1

    .line 604
    :cond_12e
    :goto_12e
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 605
    monitor-exit p0
    :try_end_138
    .catchall {:try_start_2f .. :try_end_138} :catchall_67

    .line 607
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/AbstractInput;->isCatchKey(I)Z

    move-result p1

    return p1

    .line 548
    :cond_13d
    :goto_13d
    :try_start_13d
    monitor-exit p0

    return v1

    .line 605
    :goto_13f
    monitor-exit p0
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_67

    throw p1
.end method

.method public onKeyboardHeightChanged(ZIIII)V
    .registers 7

    .line 689
    iget-object p5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->app:Lcom/badlogic/gdx/Application;

    check-cast p5, Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {p5}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getKeyboardHeightProvider()Lcom/badlogic/gdx/backends/android/keyboardheight/KeyboardHeightProvider;

    move-result-object p5

    .line 690
    instance-of p5, p5, Lcom/badlogic/gdx/backends/android/keyboardheight/StandardKeyboardHeightProvider;

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useImmersiveMode:Z

    if-eqz v0, :cond_17

    if-eqz p5, :cond_17

    .line 692
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getSoftButtonsBarHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 695
    :cond_17
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->isNativeInputOpen()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 696
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->dispatchHeightAndVisibilityChangesToObserver(ZI)V

    .line 698
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_38

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    return-void

    :cond_2a
    if-nez p2, :cond_39

    if-eqz p5, :cond_39

    .line 702
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getEditTextForNativeInput()Landroid/widget/AutoCompleteTextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p5

    if-eqz p5, :cond_39

    :cond_38
    return-void

    :cond_39
    const/4 p5, 0x0

    if-nez p1, :cond_49

    .line 708
    invoke-interface {p0, p5}, Lcom/badlogic/gdx/Input;->closeTextInputField(Z)V

    .line 709
    invoke-virtual {p0, p5, p2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->dispatchHeightAndVisibilityChangesToObserver(ZI)V

    .line 710
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    return-void

    .line 714
    :cond_49
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getEditTextForNativeInput()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->dispatchHeightAndVisibilityChangesToObserver(ZI)V

    .line 717
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p1, p1, 0xf0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_6b

    move p2, p5

    .line 723
    :cond_6b
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 724
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 725
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 726
    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->relativeLayoutField:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-int p2, p2

    int-to-float p2, p2

    .line 729
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x64

    .line 730
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;

    invoke-direct {p2, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    .line 731
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 1379
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->unregisterSensorListeners()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 1384
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->registerSensorListeners()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 506
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->requestFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 507
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 508
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 p1, 0x0

    .line 509
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->requestFocus:Z

    .line 513
    :cond_10
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-virtual {p1, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    return v1
.end method

.method public processEvents()V
    .registers 12

    .line 416
    monitor-enter p0

    .line 417
    :try_start_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 418
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_11

    :catchall_e
    move-exception v0

    goto/16 :goto_132

    .line 421
    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/badlogic/gdx/AbstractInput;->keyJustPressed:Z

    if-eqz v0, :cond_1c

    .line 422
    iput-boolean v1, p0, Lcom/badlogic/gdx/AbstractInput;->keyJustPressed:Z

    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->justPressedKeys:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 426
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    const/4 v2, 0x1

    if-eqz v0, :cond_d7

    .line 429
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_28
    const/4 v5, 0x2

    if-ge v4, v3, :cond_61

    .line 431
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    .line 432
    iget-wide v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    iput-wide v7, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->currentEventTimeStamp:J

    .line 433
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    if-eqz v7, :cond_4c

    if-eq v7, v2, :cond_46

    if-eq v7, v5, :cond_40

    goto :goto_59

    .line 443
    :cond_40
    iget-char v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto :goto_59

    .line 440
    :cond_46
    iget v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    goto :goto_59

    .line 435
    :cond_4c
    iget v5, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 436
    iput-boolean v2, p0, Lcom/badlogic/gdx/AbstractInput;->keyJustPressed:Z

    .line 437
    iget-object v5, p0, Lcom/badlogic/gdx/AbstractInput;->justPressedKeys:[Z

    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    aput-boolean v2, v5, v7

    .line 445
    :goto_59
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 448
    :cond_61
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_68
    if-ge v4, v3, :cond_10f

    .line 450
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 451
    iget-wide v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->timeStamp:J

    iput-wide v7, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->currentEventTimeStamp:J

    .line 452
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    if-eqz v7, :cond_bc

    if-eq v7, v2, :cond_b0

    if-eq v7, v5, :cond_a6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_9c

    const/4 v8, 0x4

    if-eq v7, v8, :cond_94

    const/4 v8, 0x5

    if-eq v7, v8, :cond_88

    goto :goto_cf

    .line 465
    :cond_88
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v8, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iget v9, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    iget v10, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/badlogic/gdx/InputProcessor;->touchCancelled(IIII)Z

    goto :goto_cf

    .line 468
    :cond_94
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v8, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    invoke-interface {v0, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    goto :goto_cf

    .line 471
    :cond_9c
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountX:I

    int-to-float v7, v7

    iget v8, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->scrollAmountY:I

    int-to-float v8, v8

    invoke-interface {v0, v7, v8}, Lcom/badlogic/gdx/InputProcessor;->scrolled(FF)Z

    goto :goto_cf

    .line 462
    :cond_a6
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v8, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iget v9, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    invoke-interface {v0, v7, v8, v9}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_cf

    .line 459
    :cond_b0
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v8, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iget v9, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    iget v10, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_cf

    .line 454
    :cond_bc
    iget v7, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->x:I

    iget v8, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->y:I

    iget v9, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->pointer:I

    iget v10, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 455
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    .line 456
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justPressedButtons:[Z

    iget v8, v6, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->button:I

    aput-boolean v2, v7, v8

    .line 473
    :goto_cf
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 476
    :cond_d7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_de
    if-ge v3, v0, :cond_f6

    .line 478
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    .line 479
    iget v5, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;->type:I

    if-nez v5, :cond_ee

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->justTouched:Z

    .line 480
    :cond_ee
    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_de

    .line 483
    :cond_f6
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_fd
    if-ge v2, v0, :cond_10f

    .line 485
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_fd

    .line 489
    :cond_10f
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_126

    move v0, v1

    .line 490
    :goto_118
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaX:[I

    array-length v3, v2

    if-ge v0, v3, :cond_126

    .line 491
    aput v1, v2, v1

    .line 492
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->deltaY:[I

    aput v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    .line 496
    :cond_126
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 498
    monitor-exit p0

    return-void

    :goto_132
    monitor-exit p0
    :try_end_133
    .catchall {:try_start_1 .. :try_end_133} :catchall_e

    throw v0
.end method

.method public registerSensorListeners()V
    .registers 8

    .line 1141
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    const-string v1, "sensor"

    const/4 v2, 0x0

    if-eqz v0, :cond_41

    .line 1142
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    .line 1143
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1144
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    goto :goto_43

    .line 1146
    :cond_21
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1147
    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 1148
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    goto :goto_43

    .line 1151
    :cond_41
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    .line 1153
    :goto_43
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGyroscope:Z

    if-eqz v0, :cond_81

    .line 1154
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    .line 1155
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1156
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    goto :goto_83

    .line 1158
    :cond_61
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1159
    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 1160
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    goto :goto_83

    .line 1163
    :cond_81
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeAvailable:Z

    .line 1165
    :goto_83
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 1166
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useRotationVectorSensor:Z

    if-eqz v0, :cond_f7

    .line 1167
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 1168
    :cond_99
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 1170
    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    .line 1171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 1172
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Google Inc."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b2

    .line 1173
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 1177
    :cond_df
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-nez v3, :cond_f7

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    .line 1178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    .line 1177
    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    .line 1182
    :cond_f7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    if-eqz v0, :cond_135

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorAvailable:Z

    if-nez v0, :cond_135

    .line 1183
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_10f

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 1184
    :cond_10f
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_132

    .line 1186
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerAvailable:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    if-eqz v1, :cond_137

    .line 1188
    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 1189
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->sensorDelay:I

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    goto :goto_137

    .line 1192
    :cond_132
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    goto :goto_137

    .line 1195
    :cond_135
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassAvailable:Z

    .line 1196
    :cond_137
    :goto_137
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener setup"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final resize([F)[F
    .registers 5

    .line 1273
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1274
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final resize([I)[I
    .registers 5

    .line 1261
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1262
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final resize([Z)[Z
    .registers 5

    .line 1267
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 1268
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public setCatchKey(IZ)V
    .registers 4

    .line 1399
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/AbstractInput;->setCatchKey(IZ)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_13

    .line 1400
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->predictiveBackHandler:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;

    if-eqz p1, :cond_13

    if-eqz p2, :cond_10

    .line 1402
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->access$600(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;)V

    return-void

    .line 1404
    :cond_10
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->access$700(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;)V

    :cond_13
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .registers 2

    .line 409
    monitor-enter p0

    .line 410
    :try_start_1
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 411
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setKeyboardAvailable(Z)V
    .registers 2

    .line 391
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyboardAvailable:Z

    return-void
.end method

.method public unregisterSensorListeners()V
    .registers 4

    .line 1200
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_31

    .line 1201
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 1202
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1203
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 1205
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_19

    .line 1206
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1207
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 1209
    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_24

    .line 1210
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1211
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorListener:Landroid/hardware/SensorEventListener;

    .line 1213
    :cond_24
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2f

    .line 1214
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1215
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 1217
    :cond_2f
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 1219
    :cond_31
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener tear down"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass1 (com.badlogic.gdx.backends.android.DefaultAndroidInput$1)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "DefaultAndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V
    .registers 4

    .line 118
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method public newObject()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    .registers 2

    .line 120
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;->newObject()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass2 (com.badlogic.gdx.backends.android.DefaultAndroidInput$2)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;
.super Lcom/badlogic/gdx/utils/Pool;
.source "DefaultAndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V
    .registers 4

    .line 124
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method public newObject()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
    .registers 2

    .line 126
    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$2;->newObject()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass3 (com.badlogic.gdx.backends.android.DefaultAndroidInput$3)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

.field public final synthetic val$hint:Ljava/lang/String;

.field public final synthetic val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

.field public final synthetic val$text:Ljava/lang/String;

.field public final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$hint:Ljava/lang/String;

    iput-object p5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$text:Ljava/lang/String;

    iput-object p6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 263
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 264
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-eq v2, v3, :cond_25

    const/4 v3, 0x0

    .line 265
    invoke-static {v2, v3}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->getAndroidInputType(Lcom/badlogic/gdx/Input$OnscreenKeyboardType;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 267
    :cond_25
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$hint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 270
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$keyboardType:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    if-ne v2, v3, :cond_40

    .line 271
    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 273
    :cond_40
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 274
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;

    invoke-direct {v3, p0, v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;

    invoke-direct {v2, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass3.AnonymousClass1 (com.badlogic.gdx.backends.android.DefaultAndroidInput$3$1)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

.field public final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 276
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;

    invoke-direct {p2, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass3.AnonymousClass1.RunnableC00041 (com.badlogic.gdx.backends.android.DefaultAndroidInput$3$1$1)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;->this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1$1;->this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input$TextInputListener;->input(Ljava/lang/String;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass3.AnonymousClass2 (com.badlogic.gdx.backends.android.DefaultAndroidInput$3$2)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 286
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance p2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2$1;

    invoke-direct {p2, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;)V

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass3.AnonymousClass2.AnonymousClass1 (com.badlogic.gdx.backends.android.DefaultAndroidInput$3$2$1)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2$1;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2$1;->this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2$1;->this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$2;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input$TextInputListener;->canceled()V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass3.DialogInterfaceOnCancelListenerC00053 (com.badlogic.gdx.backends.android.DefaultAndroidInput$3$3)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 297
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass3.DialogInterfaceOnCancelListenerC00053.AnonymousClass1 (com.badlogic.gdx.backends.android.DefaultAndroidInput$3$3$1)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3$1;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3$1;->this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3$1;->this$2:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3$3;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input$TextInputListener;->canceled()V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass5 (com.badlogic.gdx.backends.android.DefaultAndroidInput$5)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->onKeyboardHeightChanged(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 743
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->access$100(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 745
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$5;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->access$100(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    :cond_15
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.AnonymousClass8 (com.badlogic.gdx.backends.android.DefaultAndroidInput$8)
.class public synthetic Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$8;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 312
    invoke-static {}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->values()[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$8;->$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I

    :try_start_9
    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->NumberPad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$8;->$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I

    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->PhonePad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$8;->$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I

    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Email:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$8;->$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I

    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$8;->$SwitchMap$com$badlogic$gdx$Input$OnscreenKeyboardType:[I

    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->URI:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.KeyEvent (com.badlogic.gdx.backends.android.DefaultAndroidInput$KeyEvent)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyEvent"
.end annotation


# instance fields
.field public keyChar:C

.field public keyCode:I

.field public timeStamp:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.PredictiveBackHandler (com.badlogic.gdx.backends.android.DefaultAndroidInput$PredictiveBackHandler)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PredictiveBackHandler"
.end annotation


# instance fields
.field public final callback:Landroid/window/OnBackInvokedCallback;

.field public final dispatcher:Landroid/window/OnBackInvokedDispatcher;

.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .registers 2

    .line 1413
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1415
    iget-object p1, p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 1416
    new-instance p1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler$1;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;)V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->callback:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;)V
    .registers 3

    .line 1413
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;-><init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;)V
    .registers 1

    .line 1413
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->register()V

    return-void
.end method

.method public static synthetic access$700(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;)V
    .registers 1

    .line 1413
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->unregister()V

    return-void
.end method


# virtual methods
.method public final register()V
    .registers 4

    .line 1431
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->callback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final unregister()V
    .registers 3

    .line 1435
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->callback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api33Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.PredictiveBackHandler.AnonymousClass1 (com.badlogic.gdx.backends.android.DefaultAndroidInput$PredictiveBackHandler$1)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler$1;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;)V
    .registers 2

    .line 1416
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler$1;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .registers 5

    .line 1419
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler$1;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    monitor-enter v0

    .line 1420
    :try_start_5
    new-instance v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    invoke-direct {v1}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;-><init>()V

    .line 1421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->timeStamp:J

    const/4 v2, 0x0

    .line 1422
    iput v2, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->type:I

    const/4 v3, 0x4

    .line 1423
    iput v3, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyCode:I

    .line 1424
    iput-char v2, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;->keyChar:C

    .line 1425
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler$1;->this$1:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$PredictiveBackHandler;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.SensorListener (com.badlogic.gdx.backends.android.DefaultAndroidInput$SensorListener)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .registers 2

    .line 1445
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    .line 1456
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2d

    .line 1457
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v5, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v4, v5, :cond_1c

    .line 1458
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    array-length v5, v0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 1460
    :cond_1c
    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v3

    aput v5, v0, v2

    .line 1461
    aget v5, v4, v2

    neg-float v5, v5

    aput v5, v0, v3

    .line 1462
    aget v4, v4, v1

    aput v4, v0, v1

    .line 1465
    :cond_2d
    :goto_2d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3f

    .line 1466
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->magneticFieldValues:[F

    array-length v5, v4

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1468
    :cond_3f
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6a

    .line 1469
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v5, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v4, v5, :cond_59

    .line 1470
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    array-length v5, v0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6a

    .line 1472
    :cond_59
    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v3

    aput v5, v0, v2

    .line 1473
    aget v5, v4, v2

    neg-float v5, v5

    aput v5, v0, v3

    .line 1474
    aget v4, v4, v1

    aput v4, v0, v1

    .line 1477
    :cond_6a
    :goto_6a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_96

    .line 1478
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v5, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v4, v5, :cond_85

    .line 1479
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 1481
    :cond_85
    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v3

    aput v4, v0, v2

    .line 1482
    aget v2, p1, v2

    neg-float v2, v2

    aput v2, v0, v3

    .line 1483
    aget p1, p1, v1

    aput p1, v0, v1

    :cond_96
    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput.TouchEvent (com.badlogic.gdx.backends.android.DefaultAndroidInput$TouchEvent)
.class public Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$TouchEvent;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchEvent"
.end annotation


# instance fields
.field public button:I

.field public pointer:I

.field public scrollAmountX:I

.field public scrollAmountY:I

.field public timeStamp:J

.field public type:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput$$ExternalSyntheticLambda0 (com.badlogic.gdx.backends.android.DefaultAndroidInput$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda0;->f$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda0;->f$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda0;->f$1:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->$r8$lambda$pwSGLuInHk2MJ3hPAXre7so0NfU(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;ZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V

    return-void
.end method

###### Class com.badlogic.gdx.backends.android.DefaultAndroidInput$$ExternalSyntheticLambda1 (com.badlogic.gdx.backends.android.DefaultAndroidInput$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Lcom/badlogic/gdx/input/NativeInputConfiguration;Ljava/lang/String;IIZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$4:I

    iput-boolean p6, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$4:I

    iget-boolean v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$$ExternalSyntheticLambda1;->f$5:Z

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->$r8$lambda$LFGJizRN8Wigrft2MucTt9XdzJI(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;Lcom/badlogic/gdx/input/NativeInputConfiguration;Ljava/lang/String;IIZLcom/badlogic/gdx/input/NativeInputConfiguration$NativeInputCloseCallback;)V

    return-void
.end method
