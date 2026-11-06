package info.flowersoft.theotown.resources;

import io.blueflower.stapel2d.drawing.Shader;

/* JADX INFO: loaded from: classes4.dex */
public enum ShaderConfig {
    DEFAULT(1594) { // from class: info.flowersoft.theotown.resources.ShaderConfig.1
        @Override // info.flowersoft.theotown.resources.ShaderConfig
        public void apply(Shader shader) {
            set(shader, 1.15f);
        }
    },
    UNCHANGED(50) { // from class: info.flowersoft.theotown.resources.ShaderConfig.2
        @Override // info.flowersoft.theotown.resources.ShaderConfig
        public void apply(Shader shader) {
            set(shader, 1.0f);
        }
    },
    GRAY(3025) { // from class: info.flowersoft.theotown.resources.ShaderConfig.3
        @Override // info.flowersoft.theotown.resources.ShaderConfig
        public void apply(Shader shader) {
            set(shader, 0.5f);
        }
    },
    COLORFUL(1534) { // from class: info.flowersoft.theotown.resources.ShaderConfig.4
        @Override // info.flowersoft.theotown.resources.ShaderConfig
        public void apply(Shader shader) {
            set(shader, 1.3f);
        }
    },
    OLD(1240) { // from class: info.flowersoft.theotown.resources.ShaderConfig.5
        @Override // info.flowersoft.theotown.resources.ShaderConfig
        public void apply(Shader shader) {
            set(shader, 2.0f);
        }
    };

    public static ShaderConfig[] cachedValues;
    public int id;

    public abstract void apply(Shader shader);

    ShaderConfig(int i) {
        this.id = i;
    }

    public int getNameId() {
        return this.id;
    }

    public void set(Shader shader, float f) {
        shader.setUniform("saturation", f);
    }

    public static ShaderConfig[] cachedValues() {
        if (cachedValues == null) {
            cachedValues = values();
        }
        return cachedValues;
    }
}
