package info.flowersoft.theotown.ui.listitem;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GroupItem extends ListItem {
    public List<ListItem> items;
    public int lastWidth;
    public final int space;

    public interface Item {
        float getWidthRatio();
    }

    public GroupItem() {
        super("");
        this.items = new ArrayList();
        this.space = 1;
    }

    public void add(ListItem listItem) {
        this.items.add(listItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        float widthRatio = 0.0f;
        for (int i6 = 0; i6 < this.items.size(); i6++) {
            Object obj = (ListItem) this.items.get(i6);
            widthRatio = obj instanceof Item ? widthRatio + ((Item) obj).getWidthRatio() : widthRatio + 1.0f;
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.items.size(); i8++) {
            ListItem listItem = this.items.get(i8);
            float widthRatio2 = listItem instanceof Item ? ((Item) listItem).getWidthRatio() : 1.0f;
            int iRound = Math.round((i4 / widthRatio) * widthRatio2) - 1;
            if (i8 == this.items.size() - 1) {
                iRound = i4 - i7;
            }
            int i9 = iRound;
            if (widthRatio2 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                listItem.draw(z, i, i2 + i7, i3, i9, i5, skin);
            }
            i7 += i9 + 1;
        }
        this.lastWidth = i4;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        int iMax = 0;
        for (int i = 0; i < this.items.size(); i++) {
            iMax = Math.max(iMax, this.items.get(i).getHeight(z));
        }
        float widthRatio = 0.0f;
        for (int i2 = 0; i2 < this.items.size(); i2++) {
            Object obj = (ListItem) this.items.get(i2);
            widthRatio += obj instanceof Item ? ((Item) obj).getWidthRatio() : 1.0f;
        }
        if (widthRatio == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return 0;
        }
        return iMax;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        super.onClick(i, i2);
        float widthRatio = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (int i3 = 0; i3 < this.items.size(); i3++) {
            Object obj = (ListItem) this.items.get(i3);
            widthRatio = obj instanceof Item ? widthRatio + ((Item) obj).getWidthRatio() : widthRatio + 1.0f;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.items.size(); i5++) {
            ListItem listItem = this.items.get(i5);
            int iRound = Math.round((this.lastWidth / widthRatio) * (listItem instanceof Item ? ((Item) listItem).getWidthRatio() : 1.0f)) - 1;
            if (i5 == this.items.size() - 1) {
                iRound = this.lastWidth - i4;
            }
            if (i >= i4 && i < i4 + iRound) {
                listItem.onClick(i - i4, i2);
            }
            i4 += iRound + 1;
        }
    }

    public int countItems() {
        return this.items.size();
    }
}
