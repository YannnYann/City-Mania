###### Class com.badlogic.gdx.backends.android.AndroidGL30 (com.badlogic.gdx.backends.android.AndroidGL30)
.class public Lcom/badlogic/gdx/backends/android/AndroidGL30;
.super Lcom/badlogic/gdx/backends/android/AndroidGL20;
.source "AndroidGL30.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL30;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    return-void
.end method


# virtual methods
.method public glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V
    .registers 21

    if-nez p10, :cond_14

    const/4 v9, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 51
    invoke-static/range {v0 .. v9}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIII)V

    return-void

    .line 53
    :cond_14
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    return-void
.end method
