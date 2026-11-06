package info.flowersoft.theotown.city;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Disposable;
import info.flowersoft.theotown.resources.Settings;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.util.ScreenRect;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransformedCityDrawer.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TransformedCityDrawer implements Disposable {
    public final Engine engine;
    public final String fsShader;
    public Shader shader;
    public final String vsShader;

    public TransformedCityDrawer(Engine engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.engine = engine;
        this.vsShader = "attribute vec2 vVertex;\nattribute vec4 vColor;\nattribute vec2 vTexCoord;\nattribute vec2 vQuadCoord;\n\nuniform vec2 viewport;\nuniform vec2 offset;\n\nvarying vec4 color;\nvarying vec2 texCoord;\nvarying vec2 quadCoord;\n\nvoid main() {\n    color = vec4(vColor.rgb * vColor.a, vColor.a);\n    texCoord = vTexCoord;\n    quadCoord = vQuadCoord;\n    \n    gl_Position = vec4((vVertex + offset) * viewport + vec2(-1.0, 1.0), 0.0, 1.0);\n}";
        this.fsShader = "uniform sampler2D texture;\nuniform highp vec4 u_uvs;\nuniform highp float u_depthFactor;\nuniform highp vec2 u_stretch;\n\nvarying lowp vec4 color;\nvarying highp vec2 texCoord;\nvarying highp vec2 quadCoord;\n\nvoid main() {\n    highp vec2 samplePos = quadCoord.xy;\n    \n    // Depth must be <= 1.0 to stay within texture\n    highp float depth = 1.0 / (1.0 + u_depthFactor * samplePos.y);\n    samplePos = (samplePos - vec2(0.5)) * depth * u_stretch + vec2(0.5);\n    \n    highp vec2 coords = mix(u_uvs.xy, u_uvs.zw, samplePos);\n    gl_FragColor = color * texture2D(texture, coords);\n}";
    }

    public final float getDepthFactor() {
        return Settings.depthFactor;
    }

    public final float getStretchX() {
        int i = Settings.stretchFactor;
        if (i > 0) {
            return (i / 10.0f) + 1.0f;
        }
        return 1.0f;
    }

    public final float getStretchY() {
        if (Settings.stretchFactor < 0) {
            return ((-r0) / 10.0f) + 1.0f;
        }
        return 1.0f;
    }

    public final void draw(Engine engine, Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(texture, "texture");
        if (this.shader == null) {
            this.shader = new Shader(this.vsShader, this.fsShader);
        }
        engine.setShader(this.shader);
        Shader shader = this.shader;
        Intrinsics.checkNotNull(shader);
        shader.setUniform("u_uvs", f5, f6, f7, f8);
        Shader shader2 = this.shader;
        Intrinsics.checkNotNull(shader2);
        shader2.setUniform("u_depthFactor", getDepthFactor());
        Shader shader3 = this.shader;
        Intrinsics.checkNotNull(shader3);
        shader3.setUniform("u_stretch", 1.0f / getStretchX(), 1.0f / getStretchY());
        engine.drawTextureRect(texture, f, f2, f + f3, f2 + f4, f5, f6, f7, f8, 0);
    }

    public final Vector2 transformToScreen(ScreenRect rect, Vector2 pos) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(pos, "pos");
        float x = (pos.x - rect.getX()) / rect.getWidth();
        float y = (pos.y - rect.getY()) / rect.getHeight();
        Vector2 vector2Scl = pos.set(x, y).sub(0.5f, 0.5f).scl(1.0f / (1.0f / ((getDepthFactor() * y) + 1.0f))).scl(getStretchX(), getStretchY()).add(0.5f, 0.5f).scl(rect.getWidth(), rect.getHeight());
        Intrinsics.checkNotNullExpressionValue(vector2Scl, "scl(...)");
        return vector2Scl;
    }

    public final Vector2 transformFromScreen(ScreenRect rect, Vector2 pos) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(pos, "pos");
        float x = (pos.x - rect.getX()) / rect.getWidth();
        float y = (pos.y - rect.getY()) / rect.getHeight();
        Vector2 vector2Scl = pos.set(x, y).sub(0.5f, 0.5f).scl(1.0f / ((getDepthFactor() * y) + 1.0f)).scl(1.0f / getStretchX(), 1.0f / getStretchY()).add(0.5f, 0.5f).scl(rect.getWidth(), rect.getHeight());
        Intrinsics.checkNotNullExpressionValue(vector2Scl, "scl(...)");
        return vector2Scl;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Shader shader = this.shader;
        if (shader != null) {
            this.engine.releaseShader(shader);
            this.shader = null;
        }
    }
}
