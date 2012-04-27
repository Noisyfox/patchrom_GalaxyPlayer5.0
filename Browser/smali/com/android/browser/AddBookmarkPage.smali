.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
    }
.end annotation


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mCancelButton:Landroid/view/View;

.field private mCursor:Landroid/database/Cursor;

.field private mEditingExisting:Z

.field private mFolderCount:I

.field private mFolderSpinner:Landroid/widget/Spinner;

.field private mFolders:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMap:Landroid/os/Bundle;

.field private mOriginalUrl:Ljava/lang/String;

.field private mSaveBookmark:Landroid/view/View$OnClickListener;

.field private mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTitle:Landroid/widget/EditText;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/browser/AddBookmarkPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$3;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AddBookmarkPage;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/browser/AddBookmarkPage$4;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$4;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public gotoSelected()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 189
    .local v0, pos:I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 102
    const v3, 0x7f030007

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 103
    const v3, 0x7f090031

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    const v5, 0x7f020031

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 106
    const/16 v17, 0x0

    .line 107
    .local v17, title:Ljava/lang/String;
    const/16 v18, 0x0

    .line 109
    .local v18, url:Ljava/lang/String;
    const/4 v12, 0x1

    .line 111
    .local v12, folder:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "bookmark"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 114
    .local v11, b:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 115
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 116
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 117
    const v3, 0x7f090032

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 119
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .end local v18           #url:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 121
    .restart local v18       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "touch_icon_url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "thumbnail"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mThumbnail:Landroid/graphics/Bitmap;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 126
    .end local v11           #b:Landroid/os/Bundle;
    :cond_1
    const v3, 0x7f0d0007

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v3, 0x7f0d001a

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget-object v4, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/browser/AddBookmarkPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 139
    const/4 v15, 0x0

    .line 141
    .local v15, position:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 142
    .local v16, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const v5, 0x7f090140

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 144
    const/4 v14, 0x1

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    if-gt v14, v3, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 148
    .local v13, folderFromDB:I
    if-ne v13, v12, :cond_2

    .line 149
    move v15, v14

    .line 150
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 144
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 152
    .end local v13           #folderFromDB:I
    :cond_3
    const v3, 0x7f0d001c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    const v4, 0x7f090138

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 155
    .local v10, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    if-ge v14, v3, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    aget-object v3, v3, v14

    invoke-virtual {v10, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 155
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 159
    :cond_4
    const v3, 0x1090009

    invoke-virtual {v10, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->gotoSelected()V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    move-object v9, v0

    .line 166
    .local v9, accept:Landroid/view/View$OnClickListener;
    const v3, 0x7f0d001d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v3, 0x7f0d001e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 175
    :cond_5
    return-void
.end method

.method save()Z
    .locals 28

    .prologue
    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 256
    .local v24, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 258
    .local v25, unfilteredUrl:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    move v14, v3

    .line 259
    .local v14, emptyTitle:Z
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    move v15, v3

    .line 260
    .local v15, emptyUrl:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 261
    .local v20, r:Landroid/content/res/Resources;
    if-nez v14, :cond_0

    if-eqz v15, :cond_5

    .line 262
    :cond_0
    if-eqz v14, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003c

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 265
    :cond_1
    if-eqz v15, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003d

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 268
    :cond_2
    const/4 v3, 0x0

    .line 377
    :goto_2
    return v3

    .line 258
    .end local v14           #emptyTitle:Z
    .end local v15           #emptyUrl:Z
    .end local v20           #r:Landroid/content/res/Resources;
    :cond_3
    const/4 v3, 0x0

    move v14, v3

    goto :goto_0

    .line 259
    .restart local v14       #emptyTitle:Z
    :cond_4
    const/4 v3, 0x0

    move v15, v3

    goto :goto_1

    .line 270
    .restart local v15       #emptyUrl:Z
    .restart local v20       #r:Landroid/content/res/Resources;
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 275
    .local v27, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 276
    new-instance v26, Ljava/net/URI;

    invoke-direct/range {v26 .. v27}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 277
    .local v26, uriObj:Ljava/net/URI;
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v21

    .line 278
    .local v21, scheme:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 282
    if-eqz v21, :cond_6

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003f

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const/4 v3, 0x0

    goto :goto_2

    .line 288
    :cond_6
    :try_start_1
    new-instance v9, Landroid/net/WebAddress;

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    .local v9, address:Landroid/net/WebAddress;
    :try_start_2
    iget-object v3, v9, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 293
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    .end local v9           #address:Landroid/net/WebAddress;
    .end local v21           #scheme:Ljava/lang/String;
    .end local v26           #uriObj:Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 299
    .local v13, e:Ljava/net/URISyntaxException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003e

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 300
    const/4 v3, 0x0

    goto :goto_2

    .line 289
    .end local v13           #e:Ljava/net/URISyntaxException;
    .restart local v21       #scheme:Ljava/lang/String;
    .restart local v26       #uriObj:Ljava/net/URI;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 290
    .local v13, e:Landroid/net/ParseException;
    :try_start_3
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 295
    .end local v13           #e:Landroid/net/ParseException;
    .restart local v9       #address:Landroid/net/WebAddress;
    :cond_7
    invoke-virtual {v9}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v27

    .line 304
    .end local v9           #address:Landroid/net/WebAddress;
    .end local v21           #scheme:Ljava/lang/String;
    .end local v26           #uriObj:Ljava/net/URI;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 305
    .local v22, spinnerText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 306
    const/16 v16, 0x0

    .line 307
    .local v16, folder:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_9

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 310
    .local v17, folderText:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 322
    .end local v17           #folderText:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move v3, v0

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    :cond_a
    const/4 v3, 0x1

    move v11, v3

    .line 324
    .local v11, changed:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v6, "url = ? AND title = ? AND bookmark = 1 AND folder = ?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v27, v7, v8

    const/4 v8, 0x1

    aput-object v24, v7, v8

    const/4 v8, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 331
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 332
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move v3, v0

    if-eqz v3, :cond_b

    if-eqz v11, :cond_e

    .line 334
    :cond_b
    const v3, 0x7f090143

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 336
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 340
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 315
    .end local v11           #changed:Z
    .end local v12           #cursor:Landroid/database/Cursor;
    .restart local v17       #folderText:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 307
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 322
    .end local v17           #folderText:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    move v11, v3

    goto :goto_4

    .line 344
    .restart local v11       #changed:Z
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move v3, v0

    if-eqz v3, :cond_10

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "title"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "url"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "folder"

    move-object v0, v3

    move-object v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 375
    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 377
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 347
    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    .line 354
    :cond_10
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v10, bundle:Landroid/os/Bundle;
    const-string v3, "title"

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "url"

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "thumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mThumbnail:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 358
    const-string v3, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string v3, "touchIconUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v3, "folder"

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v19

    .line 363
    .local v19, msg:Landroid/os/Message;
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 365
    new-instance v23, Ljava/lang/Thread;

    new-instance v3, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/os/Message;)V

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 366
    .local v23, t:Ljava/lang/Thread;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    .line 368
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 371
    const-string v3, "bookmarkview"

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 358
    .end local v19           #msg:Landroid/os/Message;
    .end local v23           #t:Ljava/lang/Thread;
    :cond_11
    const/4 v4, 0x0

    goto :goto_7
.end method
