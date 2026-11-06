package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.drawing.FrameType;
import io.blueflower.stapel2d.drawing.Shader;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Tuple;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes4.dex */
public class ShaderRepository {
    public static final List<Tuple<String, String>> constants = new ArrayList();
    public static ShaderRepository instance;
    public final List<ShaderCode> shaders = new ArrayList();
    public final Map<String, ShaderCode> shaderById = new HashMap();

    static {
        for (Field field : FrameType.class.getDeclaredFields()) {
            try {
                List<Tuple<String, String>> list = constants;
                String str = "TYPE_" + field.getName();
                StringBuilder sb = new StringBuilder();
                sb.append("");
                sb.append(((Integer) field.get(null)).intValue());
                list.add(new Tuple<>(str, sb.toString()));
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }

    public void dispose() {
        this.shaders.clear();
        this.shaderById.clear();
    }

    public static ShaderRepository getInstance() {
        if (instance == null) {
            instance = new ShaderRepository();
        }
        return instance;
    }

    public void registerShader(String str, Getter<String> getter, String str2, String str3) {
        ShaderCode shaderCode = new ShaderCode(this.shaders.size(), str, getter, injectConstants(str2), injectConstants(str3));
        this.shaders.add(shaderCode);
        if (str != null) {
            this.shaderById.put(str, shaderCode);
        }
    }

    public final String injectConstants(String str) {
        for (Tuple<String, String> tuple : constants) {
            String first = tuple.getFirst();
            String second = tuple.getSecond();
            str = str.replaceAll("(\\W|^)" + Matcher.quoteReplacement(first) + "(\\W|$)", "$1" + Matcher.quoteReplacement(second) + "$2");
        }
        return str;
    }

    public int countShaders() {
        return this.shaders.size();
    }

    public ShaderCode getShader(int i, String str) {
        ShaderCode shaderCode;
        if (str != null && !str.isEmpty()) {
            shaderCode = this.shaderById.get(str);
        } else {
            shaderCode = (i < 0 || i >= this.shaders.size()) ? null : this.shaders.get(i);
        }
        return shaderCode != null ? shaderCode : this.shaders.get(0);
    }

    public static class ShaderCode {
        public final String fragmentCode;
        public final String id;
        public final int index;
        public final Getter<String> nameGetter;
        public final String vertexCode;

        public ShaderCode(int i, String str, Getter<String> getter, String str2, String str3) {
            this.index = i;
            this.id = str;
            this.nameGetter = getter;
            this.vertexCode = str2;
            this.fragmentCode = str3;
        }

        public int getIndex() {
            return this.index;
        }

        public String getId() {
            return this.id;
        }

        public String getName() {
            return this.nameGetter.get();
        }

        public Shader build() {
            return new Shader(this.vertexCode, this.fragmentCode);
        }
    }
}
