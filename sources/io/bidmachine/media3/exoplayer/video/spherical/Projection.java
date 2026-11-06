package io.bidmachine.media3.exoplayer.video.spherical;

import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.media3.common.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public final class Projection {
    public final Mesh leftMesh;
    public final Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    public static Projection createEquirectangular(int i) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i);
    }

    public static Projection createEquirectangular(float f, int i, int i2, float f2, float f3, int i3) {
        int i4 = i;
        Assertions.checkArgument(f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Assertions.checkArgument(i4 >= 1);
        Assertions.checkArgument(i2 >= 1);
        Assertions.checkArgument(f2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && f2 <= 180.0f);
        Assertions.checkArgument(f3 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && f3 <= 360.0f);
        float radians = (float) Math.toRadians(f2);
        float radians2 = (float) Math.toRadians(f3);
        float f4 = radians / i4;
        float f5 = radians2 / i2;
        int i5 = i2 + 1;
        int i6 = ((i5 * 2) + 2) * i4;
        float[] fArr = new float[i6 * 3];
        float[] fArr2 = new float[i6 * 2];
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < i4) {
            float f6 = radians / 2.0f;
            float f7 = (i7 * f4) - f6;
            int i10 = i7 + 1;
            float f8 = (i10 * f4) - f6;
            int i11 = 0;
            while (i11 < i5) {
                float f9 = radians;
                float f10 = radians2;
                int i12 = 2;
                int i13 = 0;
                while (i13 < i12) {
                    float f11 = i13 == 0 ? f7 : f8;
                    float f12 = f4;
                    float f13 = i11 * f5;
                    float f14 = f5;
                    float f15 = f7;
                    double d = f;
                    double d2 = (f13 + 3.1415927f) - (f10 / 2.0f);
                    double dSin = Math.sin(d2) * d;
                    double d3 = f11;
                    fArr[i8] = -((float) (dSin * Math.cos(d3)));
                    fArr[i8 + 1] = (float) (d * Math.sin(d3));
                    int i14 = i8 + 3;
                    fArr[i8 + 2] = (float) (Math.cos(d2) * d * Math.cos(d3));
                    fArr2[i9] = f13 / f10;
                    int i15 = i9 + 2;
                    fArr2[i9 + 1] = ((i7 + i13) * f12) / f9;
                    if ((i11 == 0 && i13 == 0) || (i11 == i2 && i13 == 1)) {
                        System.arraycopy(fArr, i8, fArr, i14, 3);
                        i8 += 6;
                        i12 = 2;
                        System.arraycopy(fArr2, i9, fArr2, i15, 2);
                        i9 += 4;
                    } else {
                        i12 = 2;
                        i8 = i14;
                        i9 = i15;
                    }
                    i13++;
                    f4 = f12;
                    f5 = f14;
                    f7 = f15;
                }
                i11++;
                radians2 = f10;
                radians = f9;
            }
            i4 = i;
            i7 = i10;
        }
        return new Projection(new Mesh(new SubMesh(0, fArr, fArr2, 1)), i3);
    }

    public Projection(Mesh mesh, int i) {
        this(mesh, mesh, i);
    }

    public Projection(Mesh mesh, Mesh mesh2, int i) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i;
        this.singleMesh = mesh == mesh2;
    }

    public static final class SubMesh {
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i, float[] fArr, float[] fArr2, int i2) {
            this.textureId = i;
            Assertions.checkArgument(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i2;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    public static final class Mesh {
        public final SubMesh[] subMeshes;

        public Mesh(SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }

        public SubMesh getSubMesh(int i) {
            return this.subMeshes[i];
        }
    }
}
