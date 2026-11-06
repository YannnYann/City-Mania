package info.flowersoft.theotown.draftloader;

/* JADX INFO: loaded from: classes4.dex */
public interface ImageHandleResolver {
    public static final ImageHandleResolver DEFAULT = new ImageHandleResolver() { // from class: info.flowersoft.theotown.draftloader.ImageHandleResolver.1
        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleX(int i, int i2, int i3) {
            return 0;
        }

        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleY(int i, int i2, int i3) {
            return i2 - (((i / 32) * 16) / 2);
        }
    };
    public static final ImageHandleResolver TOP_LEFT = new ImageHandleResolver() { // from class: info.flowersoft.theotown.draftloader.ImageHandleResolver.2
        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleX(int i, int i2, int i3) {
            return 0;
        }

        @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
        public int getHandleY(int i, int i2, int i3) {
            return 0;
        }
    };

    int getHandleX(int i, int i2, int i3);

    int getHandleY(int i, int i2, int i3);

    static ImageHandleResolver forBuilding(final int i, final int i2) {
        if (i == i2) {
            return DEFAULT;
        }
        return new ImageHandleResolver() { // from class: info.flowersoft.theotown.draftloader.ImageHandleResolver.3
            @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
            public int getHandleX(int i3, int i4, int i5) {
                return 0;
            }

            @Override // info.flowersoft.theotown.draftloader.ImageHandleResolver
            public int getHandleY(int i3, int i4, int i5) {
                int i6;
                if ((i5 & 1) == 0) {
                    i6 = (i * 16) / 2;
                } else {
                    i6 = (i2 * 16) / 2;
                }
                return i4 - i6;
            }
        };
    }
}
