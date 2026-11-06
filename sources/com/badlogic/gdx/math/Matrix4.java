package com.badlogic.gdx.math;

import com.ironsource.C3522b4;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Matrix4 implements Serializable {
    public final float[] val;
    public static final Quaternion quat = new Quaternion();
    public static final Quaternion quat2 = new Quaternion();
    public static final Vector3 l_vez = new Vector3();
    public static final Vector3 l_vex = new Vector3();
    public static final Vector3 l_vey = new Vector3();
    public static final Vector3 tmpVec = new Vector3();
    public static final Matrix4 tmpMat = new Matrix4();
    public static final Vector3 right = new Vector3();
    public static final Vector3 tmpForward = new Vector3();
    public static final Vector3 tmpUp = new Vector3();

    public Matrix4() {
        float[] fArr = new float[16];
        this.val = fArr;
        fArr[0] = 1.0f;
        fArr[5] = 1.0f;
        fArr[10] = 1.0f;
        fArr[15] = 1.0f;
    }

    public String toString() {
        return C3522b4.j.d + this.val[0] + "|" + this.val[4] + "|" + this.val[8] + "|" + this.val[12] + "]\n[" + this.val[1] + "|" + this.val[5] + "|" + this.val[9] + "|" + this.val[13] + "]\n[" + this.val[2] + "|" + this.val[6] + "|" + this.val[10] + "|" + this.val[14] + "]\n[" + this.val[3] + "|" + this.val[7] + "|" + this.val[11] + "|" + this.val[15] + "]\n";
    }
}
