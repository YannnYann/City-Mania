package ads_mobile_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import com.google.common.base.Preconditions;
import java.io.File;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class vu2 {
    public final File a;
    public final File b;
    public final SharedPreferences c;
    public final ks1 d;
    public final ts3 e;

    public final iv2 a(int i) {
        String string;
        iv2 iv2VarA;
        if (i == 1) {
            string = this.c.getString("LATMTD" + ((yn) this.d.get()).a, null);
        } else if (i == 2) {
            string = this.c.getString("FBAMTD" + ((yn) this.d.get()).a, null);
        } else {
            string = null;
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            iv2VarA = iv2.a(du.a(Hex.stringToBytes(string)));
        } catch (np1 unused) {
            this.e.b(lq0.EVENT_ID_DG_STORAGE_PROGRAM_CACHE_PARSE_METADATA_EXCEPTION);
        }
        if (a(iv2VarA.y().y())) {
            return iv2VarA;
        }
        return null;
    }

    public vu2(Context context, SharedPreferences sharedPreferences, ks1 ks1Var, ts3 ts3Var) {
        this.c = sharedPreferences;
        this.a = dv2.a(context.getDir("pccache2", 0), false);
        this.b = dv2.a(context.getDir("tmppccache2", 0), true);
        this.d = ks1Var;
        this.e = ts3Var;
    }

    public final boolean a(String str) {
        File file = (File) Preconditions.checkNotNull(dv2.a(a(), str, "pcam.jar"));
        if (!file.exists()) {
            file = (File) Preconditions.checkNotNull(dv2.a(a(), str, "pcam"));
        }
        return file.exists() && ((File) Preconditions.checkNotNull(dv2.a(a(), str, "pcbc"))).exists();
    }

    public final void a(iv2 iv2Var, byte[] bArr, byte[] bArr2) {
        String strY = iv2Var.y().y();
        if (!TextUtils.isEmpty(strY) && bArr2.length != 0) {
            dv2.a(this.b);
            this.b.mkdirs();
            ((File) Preconditions.checkNotNull(TextUtils.isEmpty(strY) ? null : dv2.a(new File(this.b, strY), false))).mkdirs();
            File file = (File) Preconditions.checkNotNull(dv2.a(this.b, strY, "pcam.jar"));
            if ((bArr == null || bArr.length <= 0 || dv2.a(file, bArr)) && dv2.a((File) Preconditions.checkNotNull(dv2.a(this.b, strY, "pcbc")), bArr2)) {
                String strY2 = iv2Var.y().y();
                if (!TextUtils.isEmpty(strY2)) {
                    File file2 = (File) Preconditions.checkNotNull(dv2.a(this.b, strY2, "pcam.jar"));
                    File file3 = (File) Preconditions.checkNotNull(dv2.a(this.b, strY2, "pcbc"));
                    File file4 = (File) Preconditions.checkNotNull(dv2.a(a(), strY2, "pcam.jar"));
                    File file5 = (File) Preconditions.checkNotNull(dv2.a(a(), strY2, "pcbc"));
                    if (file2.exists() && !file2.renameTo(file4)) {
                        this.e.b(lq0.EVENT_ID_DG_STORAGE_PROGRAM_CACHE_VM_RENAME_FAILED);
                    } else if (file3.exists() && file3.renameTo(file5)) {
                        iv2 iv2VarA = a(1);
                        SharedPreferences.Editor editorEdit = this.c.edit();
                        if (iv2VarA != null && !iv2Var.y().y().equals(iv2VarA.y().y())) {
                            editorEdit.putString("FBAMTD" + ((yn) this.d.get()).a, Hex.bytesToStringLowercase(iv2VarA.c()));
                        }
                        editorEdit.putString("LATMTD" + ((yn) this.d.get()).a, Hex.bytesToStringLowercase(iv2Var.c()));
                        if (!editorEdit.commit()) {
                            this.e.b(lq0.EVENT_ID_DG_STORAGE_PROGRAM_CACHE_PUSH_METADATA_FAILURE);
                        }
                    } else {
                        this.e.b(lq0.EVENT_ID_DG_STORAGE_PROGRAM_CACHE_PROGRAM_BYTECODE_RENAME_FAILED);
                    }
                }
                HashSet hashSet = new HashSet();
                iv2 iv2VarA2 = a(1);
                if (iv2VarA2 != null) {
                    hashSet.add(iv2VarA2.y().y());
                }
                iv2 iv2VarA3 = a(2);
                if (iv2VarA3 != null) {
                    hashSet.add(iv2VarA3.y().y());
                }
                File[] fileArrListFiles = a().listFiles();
                if (fileArrListFiles == null) {
                    return;
                }
                for (File file6 : fileArrListFiles) {
                    String name = file6.getName();
                    if (!hashSet.contains(name)) {
                        dv2.a((File) Preconditions.checkNotNull(TextUtils.isEmpty(name) ? null : dv2.a(new File(a(), name), false)));
                    }
                }
                return;
            }
        }
        this.e.b(lq0.EVENT_ID_DG_STORAGE_PROGRAM_CACHE_SAVE_TEMP_PROGRAM_FAILURE);
    }

    public final File a() {
        File file = new File(this.a, Integer.toString(((yn) this.d.get()).a));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }
}
