###### Class com.badlogic.gdx.backends.android.AndroidInput (com.badlogic.gdx.backends.android.AndroidInput)
.class public interface abstract Lcom/badlogic/gdx/backends/android/AndroidInput;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Lcom/badlogic/gdx/Input;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnGenericMotionListener;


# virtual methods
.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract processEvents()V
.end method

.method public abstract setKeyboardAvailable(Z)V
.end method
