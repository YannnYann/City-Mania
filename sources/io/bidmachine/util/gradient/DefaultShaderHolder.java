package io.bidmachine.util.gradient;

import android.graphics.Shader;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultShaderHolder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DefaultShaderHolder implements ShaderHolder {
    public final Shader shader;

    public DefaultShaderHolder(Shader shader) {
        Intrinsics.checkNotNullParameter(shader, "shader");
        this.shader = shader;
    }

    @Override // io.bidmachine.util.gradient.ShaderHolder
    public Shader getShader(boolean z) {
        return this.shader;
    }
}
