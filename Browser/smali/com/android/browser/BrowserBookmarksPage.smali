.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Activity;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mAddHeader:Lcom/android/browser/AddNewBookmark;

.field private mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

.field private mCanceled:Z

.field private mContextHeader:Lcom/android/browser/BookmarkItem;

.field private mCreateShortcut:Z

.field private mCurrentFolder:I

.field private mCurrentFolderView:Lcom/android/browser/FolderItem;

.field private mDisableNewWindow:Z

.field private mEmptyView:Landroid/view/View;

.field private mFolderContextHeader:Lcom/android/browser/FolderItem;

.field private mGridLayout:Landroid/widget/LinearLayout;

.field private mGridPage:Landroid/widget/GridView;

.field private final mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field private mListLayout:Landroid/widget/LinearLayout;

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMostVisited:Z

.field private mVerticalList:Landroid/widget/ListView;

.field private mViewMode:Lcom/android/browser/BookmarkViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 559
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 566
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    .line 604
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$3;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserBookmarksPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/browser/BrowserBookmarksPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserBookmarksPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserBookmarksPage;I)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserBookmarksPage;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserBookmarksPage;Lcom/android/browser/BrowserBookmarksAdapter;)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BookmarkViewMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/FolderItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 1189
    :try_start_0
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_0

    .line 1191
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    const-string v1, "browser"

    const-string v2, "Copy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createFolder()V
    .locals 2

    .prologue
    .line 943
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddFolderPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 946
    return-void
.end method

.method private createShortcutIntent(I)Landroid/content/Intent;
    .locals 37
    .parameter "position"

    .prologue
    .line 740
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v28

    .line 741
    .local v28, url:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v24

    .line 742
    .local v24, title:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 744
    .local v25, touchIcon:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 745
    .local v11, i:Landroid/content/Intent;
    new-instance v22, Landroid/content/Intent;

    const-string v33, "android.intent.action.VIEW"

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 747
    .local v22, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->hashCode()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v29, v0

    .line 748
    .local v29, urlHash:J
    const/16 v33, 0x20

    shl-long v33, v29, v33

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    or-long v26, v33, v35

    .line 749
    .local v26, uniqueId:J
    const-string v33, "com.android.browser.application_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v33, "android.intent.extra.shortcut.INTENT"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 752
    const-string v33, "android.intent.extra.shortcut.NAME"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    if-eqz v25, :cond_0

    .line 758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    move/from16 v34, v0

    sget-object v35, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v33 .. v35}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 760
    .local v5, bm:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 761
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 763
    .local v23, src:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object v0, v9

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 766
    .local v9, dest:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Paint;

    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 767
    .local v17, paint:Landroid/graphics/Paint;
    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 768
    move-object v0, v6

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object v3, v9

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 772
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 773
    .local v18, path:Landroid/graphics/Path;
    sget-object v33, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 774
    new-instance v20, Landroid/graphics/RectF;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 775
    .local v20, rect:Landroid/graphics/RectF;
    const/high16 v33, 0x3f80

    const/high16 v34, 0x3f80

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 776
    const/high16 v33, 0x4100

    const/high16 v34, 0x4100

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 779
    new-instance v33, Landroid/graphics/PorterDuffXfermode;

    sget-object v34, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v33 .. v34}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 780
    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 782
    const-string v33, "android.intent.extra.shortcut.ICON"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 834
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v9           #dest:Landroid/graphics/Rect;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #path:Landroid/graphics/Path;
    .end local v20           #rect:Landroid/graphics/RectF;
    .end local v23           #src:Landroid/graphics/Rect;
    :goto_0
    const-string v33, "duplicate"

    const/16 v34, 0x0

    move-object v0, v11

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    return-object v11

    .line 784
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 785
    .local v10, favicon:Landroid/graphics/Bitmap;
    if-nez v10, :cond_1

    .line 786
    const-string v33, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v34, 0x7f02002f

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v34

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 791
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f020030

    invoke-static/range {v33 .. v34}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 795
    .local v12, icon:Landroid/graphics/Bitmap;
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v34, 0x1

    move-object v0, v12

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 796
    .local v7, copy:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 800
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    const/16 v33, 0x3

    move-object v0, v15

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 802
    .local v15, p:Landroid/graphics/Paint;
    sget-object v33, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v15

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 803
    const/16 v33, -0x1

    move-object v0, v15

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v8, v0

    .line 808
    .local v8, density:F
    const/high16 v33, 0x4180

    mul-float v14, v33, v8

    .line 809
    .local v14, iconSize:F
    const/high16 v33, 0x4000

    mul-float v16, v33, v8

    .line 810
    .local v16, padding:F
    const/high16 v33, 0x4000

    mul-float v33, v33, v16

    add-float v21, v14, v33

    .line 812
    .local v21, rectSize:F
    new-instance v13, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object v0, v13

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 814
    .local v13, iconBounds:Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v33

    const/high16 v34, 0x4000

    div-float v34, v21, v34

    sub-float v31, v33, v34

    .line 818
    .local v31, x:F
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v33

    const/high16 v34, 0x4000

    div-float v34, v21, v34

    sub-float v33, v33, v34

    sub-float v32, v33, v16

    .line 820
    .local v32, y:F
    new-instance v19, Landroid/graphics/RectF;

    add-float v33, v31, v21

    add-float v34, v32, v21

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 823
    .local v19, r:Landroid/graphics/RectF;
    const/high16 v33, 0x4000

    const/high16 v34, 0x4000

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v33

    move/from16 v3, v34

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 828
    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 829
    const/16 v33, 0x0

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, v33

    move-object/from16 v3, v19

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 830
    const-string v33, "android.intent.extra.shortcut.ICON"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private createShortcutIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 29
    .parameter "url"
    .parameter "title"

    .prologue
    .line 660
    const/16 v19, 0x0

    .line 662
    .local v19, touchIcon:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v8, i:Landroid/content/Intent;
    new-instance v18, Landroid/content/Intent;

    const-string v25, "android.intent.action.VIEW"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 665
    .local v18, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 666
    .local v22, urlHash:J
    const/16 v25, 0x20

    shl-long v25, v22, v25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    or-long v20, v25, v27

    .line 667
    .local v20, uniqueId:J
    const-string v25, "com.android.browser.application_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v25, "android.intent.extra.shortcut.INTENT"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 670
    const-string v25, "android.intent.extra.shortcut.NAME"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    if-eqz v19, :cond_0

    .line 674
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    throw v0

    move-result-object v6

    .line 675
    .local v6, copy:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 679
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 680
    .local v14, path:Landroid/graphics/Path;
    sget-object v25, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object v0, v14

    move-object/from16 v1, v25

    throw v0

    .line 681
    new-instance v16, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/16 v26, 0x0

    throw v19

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    throw v19

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 683
    .local v16, rect:Landroid/graphics/RectF;
    const/high16 v25, 0x3f80

    const/high16 v26, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    throw v0

    .line 684
    const/high16 v25, 0x4100

    const/high16 v26, 0x4100

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    throw v0

    .line 688
    new-instance v13, Landroid/graphics/Paint;

    const/16 v25, 0x1

    move-object v0, v13

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 689
    .local v13, paint:Landroid/graphics/Paint;
    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v25 .. v26}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object v0, v13

    move-object/from16 v1, v25

    throw v0

    .line 690
    throw v5

    .line 692
    const-string v25, "android.intent.extra.shortcut.ICON"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object v2, v6

    throw v0

    .line 734
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #copy:Landroid/graphics/Bitmap;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #path:Landroid/graphics/Path;
    .end local v16           #rect:Landroid/graphics/RectF;
    :goto_0
    const-string v25, "duplicate"

    const/16 v26, 0x0

    move-object v0, v8

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    return-object v8

    .line 694
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getFavIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 695
    .local v7, favicon:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 696
    const-string v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v26, 0x7f02002f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f02002f

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 705
    .local v9, icon:Landroid/graphics/Bitmap;
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v26, 0x1

    move-object v0, v9

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 706
    .restart local v6       #copy:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 710
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    const/16 v25, 0x3

    move-object v0, v11

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 712
    .local v11, p:Landroid/graphics/Paint;
    sget-object v25, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 713
    const/16 v25, -0x1

    move-object v0, v11

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 716
    const/high16 v10, 0x4180

    .line 717
    .local v10, iconSize:F
    const/high16 v12, 0x4000

    .line 718
    .local v12, padding:F
    const/high16 v17, 0x41a0

    .line 719
    .local v17, rectSize:F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x41a0

    sub-float v24, v25, v26

    .line 720
    .local v24, y:F
    new-instance v15, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/high16 v26, 0x41a0

    const/high16 v27, 0x41a0

    add-float v27, v27, v24

    move-object v0, v15

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 723
    .local v15, r:Landroid/graphics/RectF;
    const/high16 v25, 0x4000

    const/high16 v26, 0x4000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v25

    move/from16 v3, v26

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 728
    const/high16 v25, 0x4000

    const/high16 v26, 0x4000

    move-object v0, v15

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 729
    const/16 v25, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v25

    move-object v3, v15

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 730
    const-string v25, "android.intent.extra.shortcut.ICON"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private displayRemoveBookmarkDialog(I)V
    .locals 4
    .parameter

    .prologue
    .line 1134
    .line 1135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$5;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserBookmarksPage$5;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1148
    return-void
.end method

.method private displayRemoveFolderDialog(I)V
    .locals 4
    .parameter

    .prologue
    .line 1114
    .line 1115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getFolderName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$4;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserBookmarksPage$4;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1128
    return-void
.end method

.method private editBookmark(I)V
    .locals 3
    .parameter

    .prologue
    .line 1039
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1041
    const-string v1, "bookmark"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getRow(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1042
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1043
    return-void
.end method

.method private editFolder(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 976
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddFolderPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 978
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "title like "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    invoke-static {v2, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/provider/Browser;->getAllFoldersWithFields(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 987
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 988
    const-string v3, "title"

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 993
    const-string v3, "folder"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 994
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 995
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 996
    return-void
.end method

.method private getFavIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private loadUrl(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 849
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 850
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 851
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 852
    return-void
.end method

.method private openInNewWindow(I)V
    .locals 4
    .parameter

    .prologue
    .line 1029
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1030
    const-string v1, "new_window"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1031
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 1034
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 1035
    return-void
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method private saveCurrentPage()V
    .locals 4

    .prologue
    .line 839
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 842
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "folder"

    iget v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 845
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 846
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1258
    .local v0, parent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1259
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResult(ILandroid/content/Intent;)V

    .line 1264
    .end local v0           #parent:Landroid/app/Activity;
    :goto_0
    return-void

    .line 1261
    .restart local v0       #parent:Landroid/app/Activity;
    :cond_0
    check-cast v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setResultFromChild(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private switchViewMode(Lcom/android/browser/BookmarkViewMode;)V
    .locals 11
    .parameter "viewMode"

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 407
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, p1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 414
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 415
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_9

    .line 416
    const-string v4, "pref_most_visited_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 420
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 425
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v5, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, v5, :cond_c

    .line 426
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-nez v4, :cond_6

    .line 427
    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    .line 428
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_2

    .line 429
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 432
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 433
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 435
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 436
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 437
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const v5, 0x108001c

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setSelector(I)V

    .line 438
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 439
    .local v0, density:F
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4160

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 440
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4100

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 441
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 442
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 443
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 446
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_4

    .line 447
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-nez v4, :cond_a

    .line 448
    new-instance v4, Lcom/android/browser/FolderItem;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    .line 449
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v10}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 455
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_b

    .line 456
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v4, v5, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 467
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_5

    .line 468
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 470
    :cond_5
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_6

    .line 471
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 475
    .end local v0           #density:F
    :cond_6
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    .line 476
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 479
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-eqz v4, :cond_7

    .line 480
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 481
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_7

    .line 482
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 483
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 487
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_7
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    .line 488
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 489
    .restart local v3       #parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_8

    .line 490
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 494
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_8
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 418
    :cond_9
    const-string v4, "pref_bookmark_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 450
    .restart local v0       #density:F
    :cond_a
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 451
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 461
    :cond_b
    const-string v4, "browser"

    const-string v5, "BrowserBookmarksPage: switchViewMode() mBookmarksAdapter is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 500
    .end local v0           #density:F
    :cond_c
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-nez v4, :cond_12

    .line 501
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 502
    .local v2, listView:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_d

    .line 503
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    :cond_d
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 506
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 507
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 510
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_f

    .line 511
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-nez v4, :cond_15

    .line 512
    new-instance v4, Lcom/android/browser/FolderItem;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    .line 513
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v10}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 519
    :cond_e
    :goto_4
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_f

    .line 520
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v4, v5, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 526
    :cond_f
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_10

    .line 527
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 529
    :cond_10
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_11

    .line 530
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 532
    :cond_11
    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    .line 536
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_12
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    .line 537
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 540
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-eqz v4, :cond_13

    .line 541
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 542
    .restart local v3       #parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_13

    .line 543
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 544
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 548
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_13
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_14

    .line 549
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    :cond_14
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 514
    .restart local v2       #listView:Landroid/widget/ListView;
    :cond_15
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 515
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public deleteBookmark(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteRow(I)V

    goto :goto_0
.end method

.method public deleteFolder(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteFolderRow(I)V

    .line 1234
    return-void
.end method

.method public getBookmarkTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getFolderName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFolderName(Lcom/android/browser/BrowserBookmarksPage;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .locals 1
    .parameter "position"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getRow(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isFolderItem(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "position"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->isFolderItem(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const-string v2, "title"

    .line 1048
    packed-switch p1, :pswitch_data_0

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1050
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1052
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1055
    const-string v1, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    const-string v3, "folder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1059
    const-string v4, "shortcut"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1060
    const-string v5, "browser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BrowserBookmarksPage: onActivityResult() folder = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " title="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " shortcut = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    if-eqz v4, :cond_1

    .line 1063
    invoke-direct {p0, v2, v1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1064
    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    .line 1068
    :cond_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateRow(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1074
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_0

    .line 1081
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 1083
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1086
    const-string v1, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateFolderRow(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1093
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto/16 :goto_0

    .line 1099
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 1100
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto/16 :goto_0

    .line 1048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1247
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 1249
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1250
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x1

    .line 109
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    if-eqz v7, :cond_0

    move v7, v12

    .line 223
    :goto_0
    return v7

    .line 112
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 115
    .local v2, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v2, :cond_1

    move v7, v12

    .line 116
    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_0

    .line 137
    :sswitch_0
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_2

    .line 138
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getFolderName(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, folderName:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->editFolder(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    .end local v0           #folderName:Ljava/lang/String;
    :goto_2
    move v7, v12

    .line 223
    goto :goto_0

    .line 143
    :cond_2
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getFolderName(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #folderName:Ljava/lang/String;
    goto :goto_1

    .line 153
    .end local v0           #folderName:Ljava/lang/String;
    :sswitch_1
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveFolderDialog(I)V

    goto :goto_2

    .line 157
    :sswitch_2
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    goto :goto_2

    .line 160
    :sswitch_3
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    goto :goto_2

    .line 163
    :sswitch_4
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(I)V

    goto :goto_2

    .line 166
    :sswitch_5
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(I)Landroid/content/Intent;

    move-result-object v5

    .line 167
    .local v5, send:Landroid/content/Intent;
    const-string v7, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 171
    .end local v5           #send:Landroid/content/Intent;
    :sswitch_6
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v7, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_2

    .line 176
    :cond_3
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(I)V

    goto :goto_2

    .line 180
    :sswitch_7
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(I)V

    goto :goto_2

    .line 183
    :sswitch_8
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v11, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v11}, Lcom/android/browser/BrowserBookmarksAdapter;->getScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {p0, v7, v8, v9, v10}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 189
    :sswitch_9
    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 192
    :sswitch_a
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    const v7, 0x7f09003b

    invoke-static {p0, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 202
    :sswitch_b
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_4

    .line 203
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v3

    .line 204
    .local v3, isBookmark:Z
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v8, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, url:Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_5

    .line 215
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {p0, v7, v6, v4}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    .end local v3           #isBookmark:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_4
    iget-object v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/HistoryItem;

    .line 208
    .local v1, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v3

    .line 209
    .restart local v3       #isBookmark:Z
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 210
    .restart local v4       #name:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #url:Ljava/lang/String;
    goto :goto_3

    .line 217
    .end local v1           #historyItem:Lcom/android/browser/HistoryItem;
    :cond_5
    invoke-static {p0, v4, v6}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x7f0d0094 -> :sswitch_2
        0x7f0d0099 -> :sswitch_3
        0x7f0d009a -> :sswitch_7
        0x7f0d009b -> :sswitch_4
        0x7f0d009c -> :sswitch_5
        0x7f0d009d -> :sswitch_8
        0x7f0d009e -> :sswitch_9
        0x7f0d009f -> :sswitch_6
        0x7f0d00a0 -> :sswitch_a
        0x7f0d00dc -> :sswitch_0
        0x7f0d00dd -> :sswitch_1
        0x7f0d00df -> :sswitch_b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    .line 333
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 334
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 337
    :cond_0
    const-string v0, "disable_new_window"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 339
    const-string v0, "mostVisited"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 341
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-eqz v0, :cond_1

    .line 342
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setTitle(I)V

    .line 345
    :cond_1
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setContentView(I)V

    .line 346
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 347
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 350
    .local v8, mEmptyText:Landroid/widget/TextView;
    const v0, 0x7f090109

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 352
    invoke-virtual {p0, v12}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 354
    .local v9, p:Landroid/content/SharedPreferences;
    iput v12, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    .line 358
    sget-object v10, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    .line 359
    .local v10, preference:Lcom/android/browser/BookmarkViewMode;
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v0, :cond_2

    .line 361
    sget-object v10, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    .line 366
    :goto_0
    invoke-direct {p0, v10}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 368
    iget-boolean v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 369
    .local v5, createShortcut:Z
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 370
    .local v6, mostVisited:Z
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, url:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, title:Ljava/lang/String;
    const-string v0, "thumbnail"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 374
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 388
    return-void

    .line 363
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v5           #createShortcut:Z
    .end local v6           #mostVisited:Z
    :cond_2
    invoke-static {}, Lcom/android/browser/BookmarkViewMode;->values()[Lcom/android/browser/BookmarkViewMode;

    move-result-object v0

    const-string v1, "pref_bookmark_view_mode"

    sget-object v11, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v11}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v11

    invoke-interface {v9, v1, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v10, v0, v1

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 229
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 232
    .local v3, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v6, 0x0

    .line 234
    .local v6, mFolder:Z
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 235
    .local v4, inflater:Landroid/view/MenuInflater;
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v7, :cond_1

    .line 236
    const v7, 0x7f0c000c

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 249
    :goto_0
    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v7, :cond_4

    .line 250
    const v7, 0x7f0d0098

    invoke-interface {p1, v7, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 251
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    if-nez v7, :cond_3

    .line 252
    new-instance v7, Lcom/android/browser/AddNewBookmark;

    invoke-direct {v7, p0}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    .line 257
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "url"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    .line 258
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 320
    :goto_2
    return-void

    .line 239
    :cond_1
    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isFolderItem(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 241
    const v7, 0x7f0c000a

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 242
    const/4 v6, 0x1

    goto :goto_0

    .line 246
    :cond_2
    const v7, 0x7f0c0001

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 253
    :cond_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 254
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 261
    :cond_4
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v7, :cond_b

    .line 262
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_5

    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v7, Lcom/android/browser/HistoryItem;

    invoke-virtual {v7}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 265
    :cond_6
    const v7, 0x7f0d00df

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 267
    .local v5, item:Landroid/view/MenuItem;
    const v7, 0x7f090036

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 273
    .end local v5           #item:Landroid/view/MenuItem;
    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v7, :cond_8

    .line 274
    if-nez v6, :cond_8

    .line 275
    const v7, 0x7f0d009a

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    :cond_8
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    if-nez v7, :cond_c

    .line 278
    new-instance v7, Lcom/android/browser/BookmarkItem;

    invoke-direct {v7, p0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    .line 286
    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    if-nez v7, :cond_d

    .line 287
    new-instance v7, Lcom/android/browser/FolderItem;

    invoke-direct {v7, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    .line 293
    :cond_a
    :goto_5
    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isFolderItem(Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_f

    .line 296
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_e

    .line 297
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->populateBookmarkItem(Lcom/android/browser/BookmarkItem;I)V

    .line 303
    :goto_6
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 271
    :cond_b
    const v7, 0x7f0d0097

    invoke-interface {p1, v7, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_3

    .line 279
    :cond_c
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 280
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 288
    :cond_d
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 289
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 300
    :cond_e
    iget-object v1, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/BookmarkItem;

    .line 301
    .local v1, b:Lcom/android/browser/BookmarkItem;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v1, v7}, Lcom/android/browser/BookmarkItem;->copyTo(Lcom/android/browser/BookmarkItem;)V

    goto :goto_6

    .line 308
    .end local v1           #b:Lcom/android/browser/BookmarkItem;
    :cond_f
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_10

    .line 309
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 315
    :goto_7
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 312
    :cond_10
    iget-object v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v2, Lcom/android/browser/FolderItem;

    .line 313
    .local v2, f:Lcom/android/browser/FolderItem;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v2, v7}, Lcom/android/browser/FolderItem;->copyTo(Lcom/android/browser/FolderItem;)V

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 856
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 857
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 859
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 860
    const/4 v0, 0x1

    .line 862
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 394
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1001
    packed-switch p1, :pswitch_data_0

    .line 1014
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1016
    :goto_0
    return v0

    .line 1003
    :pswitch_0
    iget v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    if-eqz v0, :cond_0

    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/BrowserBookmarksPage;->showFolder(Landroid/view/View;I)V

    .line 1006
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 1007
    iput v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    .line 1016
    const/4 v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 907
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 935
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 937
    :goto_0
    return v0

    .line 909
    :pswitch_0
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    :goto_1
    move v0, v2

    .line 937
    goto :goto_0

    .line 915
    :pswitch_1
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->createFolder()V

    .line 916
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    move v0, v2

    .line 917
    goto :goto_0

    .line 922
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v0, v1, :cond_0

    .line 923
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 925
    :cond_0
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 907
    :pswitch_data_0
    .packed-switch 0x7f0d0094
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 867
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 868
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v0

    .line 873
    :cond_1
    const v0, 0x7f0d0095

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v2, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v1, v2, :cond_2

    .line 877
    const v1, 0x7f090043

    .line 878
    const v2, 0x7f020041

    move v6, v2

    move v2, v1

    move v1, v6

    .line 884
    :goto_1
    iget v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    if-nez v3, :cond_3

    move v3, v5

    .line 885
    :goto_2
    const v4, 0x7f0d0096

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 887
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 888
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v5

    .line 902
    goto :goto_0

    .line 880
    :cond_2
    const v1, 0x7f090042

    .line 881
    const v2, 0x7f02004d

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_1

    .line 884
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 400
    return-void
.end method

.method public showFolder(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "folder"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->showFolder(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)V

    .line 1217
    return-void
.end method
