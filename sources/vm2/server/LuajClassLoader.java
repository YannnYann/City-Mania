package vm2.server;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class LuajClassLoader extends ClassLoader {
    static final String launcherInterfaceRoot = Launcher.class.getName();
    static final String luajPackageRoot = "org.luaj.vm2.";
    Map<String, Class<?>> classes = new HashMap();

    public static Launcher NewLauncher() throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return NewLauncher(DefaultLauncher.class);
    }

    public static Launcher NewLauncher(Class<? extends Launcher> cls) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return (Launcher) new LuajClassLoader().loadAsUserClass(cls.getName()).newInstance();
    }

    public static boolean isUserClass(String str) {
        return str.startsWith(luajPackageRoot) && !str.startsWith(launcherInterfaceRoot);
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str) throws ClassNotFoundException {
        if (this.classes.containsKey(str)) {
            return this.classes.get(str);
        }
        if (!isUserClass(str)) {
            return super.findSystemClass(str);
        }
        return loadAsUserClass(str);
    }

    private Class<?> loadAsUserClass(String str) throws ClassNotFoundException {
        InputStream resourceAsStream = getResourceAsStream(str.replace('.', '/').concat(".class"));
        if (resourceAsStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = resourceAsStream.read(bArr);
                    if (i >= 0) {
                        byteArrayOutputStream.write(bArr, 0, i);
                    } else {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        Class<?> clsDefineClass = super.defineClass(str, byteArray, 0, byteArray.length);
                        this.classes.put(str, clsDefineClass);
                        return clsDefineClass;
                    }
                }
            } catch (IOException e) {
                throw new ClassNotFoundException("Read failed: " + str + ": " + e);
            }
        } else {
            throw new ClassNotFoundException("Not found: " + str);
        }
    }
}
