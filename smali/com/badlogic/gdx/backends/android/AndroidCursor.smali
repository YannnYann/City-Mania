###### Class com.badlogic.gdx.backends.android.AndroidCursor (com.badlogic.gdx.backends.android.AndroidCursor)
.class public Lcom/badlogic/gdx/backends/android/AndroidCursor;
.super Ljava/lang/Object;
.source "AndroidCursor.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/Cursor;


# direct methods
.method public static setSystemCursor(Landroid/view/View;Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V
    .registers 4

    .line 16
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 28
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown system cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_22
    const/4 p1, 0x0

    goto :goto_41

    :pswitch_24
    const/16 p1, 0x3f4

    goto :goto_41

    :pswitch_27
    const/16 p1, 0x3f5

    goto :goto_41

    :pswitch_2a
    const/16 p1, 0x3f8

    goto :goto_41

    :pswitch_2d
    const/16 p1, 0x3f9

    goto :goto_41

    :pswitch_30
    const/16 p1, 0x3f7

    goto :goto_41

    :pswitch_33
    const/16 p1, 0x3f6

    goto :goto_41

    :pswitch_36
    const/16 p1, 0x3ea

    goto :goto_41

    :pswitch_39
    const/16 p1, 0x3ef

    goto :goto_41

    :pswitch_3c
    const/16 p1, 0x3f0

    goto :goto_41

    :pswitch_3f
    const/16 p1, 0x3e8

    .line 30
    :goto_41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method

###### Class com.badlogic.gdx.backends.android.AndroidCursor.AnonymousClass1 (com.badlogic.gdx.backends.android.AndroidCursor$1)
.class public synthetic Lcom/badlogic/gdx/backends/android/AndroidCursor$1;
.super Ljava/lang/Object;
.source "AndroidCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    invoke-static {}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->values()[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    :try_start_9
    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Ibeam:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Crosshair:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Hand:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->HorizontalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->VerticalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NWSEResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NESWResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->AllResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NotAllowed:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->$SwitchMap$com$badlogic$gdx$graphics$Cursor$SystemCursor:[I

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->None:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    return-void
.end method
