###### Class io.bidmachine.util.gradient.DefaultShaderHolder (io.bidmachine.util.gradient.DefaultShaderHolder)
.class public final Lio/bidmachine/util/gradient/DefaultShaderHolder;
.super Ljava/lang/Object;
.source "DefaultShaderHolder.kt"

# interfaces
.implements Lio/bidmachine/util/gradient/ShaderHolder;


# instance fields
.field public final shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;)V
    .registers 3

    const-string v0, "shader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/bidmachine/util/gradient/DefaultShaderHolder;->shader:Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public getShader(Z)Landroid/graphics/Shader;
    .registers 2

    .line 9
    iget-object p1, p0, Lio/bidmachine/util/gradient/DefaultShaderHolder;->shader:Landroid/graphics/Shader;

    return-object p1
.end method
